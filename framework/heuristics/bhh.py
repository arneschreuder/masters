# The MIT License (MIT)
# =====================

# Copyright  Arné Schreuder

# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the “Software”), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:

# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.


from typing import List

import numpy as np
import tensorflow as tf
from framework.credits.credit import Credit
from framework.distributions.beta import Beta
from framework.distributions.categorical import Categorical
from framework.distributions.dirichlet import Dirichlet
from framework.distributions.distribution import Distribution
from framework.heuristics.heuristic import Heuristic
from framework.hyper_parameters.bhh import BHH as BHHParameters
from framework.performance_log.performance_log import PerformanceLog


# TODO: STILL NEED TO COMMENT THIS FILE
class BHH(Heuristic):
    """
    The Particle Swarm Optimiser concrete heuristic.

    Attributes
    ----------
    params: PSOParameters
        Hyper Parameters. Default = None
    """
    params: BHHParameters = None

    def __init__(self, params: BHHParameters = BHHParameters()):
        super(BHH, self).__init__()
        self.params = params

    @staticmethod
    def select(alpha: tf.Variable,
               beta: tf.Variable,
               gamma1: tf.Variable,
               gamma0: tf.Variable,
               theta: Distribution,
               phi: Distribution,
               psi: Distribution,
               p_H: tf.Variable,
               p_EgH: tf.Variable,
               p_CgH: tf.Variable,
               p_HgEC: tf.Variable,
               l_HgEC: Distribution,
               HgEC: tf.Variable):
        """
        Runs the selection method.

        Parameters
        ----------
        alpha: tf.Variable
            The concentration parameters for each heuristic in K.
        beta: tf.Variable
            The concentration parameters for each entity in J and heuristic in K.
        gamma1: tf.Variable
            The concentration of the success event of a beta distribution.
        gamma0: tf.Variable
            The concentration of the failed event of a beta distribution.
        theta: Distribution
            The heuristic Dirichlet distribution instance.
        phi: Distribution
            The entity, heuristic Dirichlet distribution instance.
        psi: Distribution
            The performance criteria/credit assignment Beta distribution instance.
        p_H: tf.Variable
            The probability of heuristic h in H occuring.
        p_EgH: tf.Variable
            The probability of entity j in J occuring given heuristic k in K applied.
        p_CgH: tf.Variable
            The probability of performance metric c in C occuring given heuristic k in K applied.
        p_HgEC: tf.Variable
            The probability of heuristic h in H occuring, given entity j in J and performance criteria c in C.
        l_HgEC: Distribution
            The likelihood of heuristic k in K given entity j in J and performance criteria c in C.
        HgEC: tf.Variable
            The selection of heuristic k in K for entity j in J and performance criteria c in C.
        """
        # Probability distributions
        theta = Dirichlet(concentration=alpha)
        phi = Dirichlet(concentration=beta)
        psi = Beta(concentration1=gamma1, concentration0=gamma0)

        # Probabilities
        p_H.assign(theta())
        p_EgH.assign(phi())
        p_CgH.assign(psi())

        """
        PERFORMANCE BIAS:

        - Calculate the probability of  P(H|E,C) \propto P(E|H)*P(C|H)*(P(H)
        - Create a categorical distribution with the probabilities from above
        - Then pick the combination of entity and heuristic by sampling from
        - a categorical distribution with the learnt probabilities probabilities.
        - We use the log-sum-xp
        - To avoid underflow here, we use the log-sum-exp trick
        - This is sufficient since we are using Maximum-a-priori (MAP) updates of model.
        - Yielding that we always calculate p_HgEC from model params.
        - The alternative to this is to use Maximum-likelihood-estimate (MLE) update of model.
        - In that case, we will assign p_H_t_plus_1 = p_HgEC_t = p_EgH_t* p_CgH_t * p_H_t
        - and with log-sum-exp this yields: p_H_t_plus_1 = p_HgEC_t = log(exp(p_EgH_t) + exp(p_CgH_t) + exp(p_H_t))
        - See: https://stats.stackexchange.com/questions/105602/example-of-how-the-log-sum-exp-trick-works-in-naive-bayes
        - Use if numerical underflow is not an issue
            p_HgEC.assign(p_EgH*p_CgH*p_H)
            l_HgEC = Categorical(probabilities=p_HgEC)
        """
        # p_HgEC.assign(p_EgH*p_CgH*p_H)
        # l_HgEC = Categorical(probabilities=p_HgEC)
        p_HgEC.assign(tf.math.log(tf.math.exp(p_EgH) +
                      tf.math.exp(p_CgH) + tf.math.exp(p_H)))

        # Likelihoods
        l_HgEC = Categorical(logits=p_HgEC)

        # Sampling
        HgEC.assign(l_HgEC())

    @staticmethod
    def bayesian_analysis(params: BHHParameters,
                          alpha: tf.Variable,
                          beta: tf.Variable,
                          gamma1: tf.Variable,
                          gamma0: tf.Variable,
                          log: PerformanceLog):
        """
        Performance the update step for model parameters for the Bayesian HH.

        Parameters
        ----------
        params: BHHParameters
            Hyper parameters.
        alpha: tf.Variable
            The concentration parameters for each heuristic in K.
        beta: tf.Variable
            The concentration parameters for each entity in J and heuristic in K.
        gamma1: tf.Variable
            The concentration of the success event of a beta distribution.
        gamma0: tf.Variable
            The concentration of the failed event of a beta distribution.
        log: PerformanceLog
            The performance log instance, keeps a ledger of performance thus far.
        """
        # print(log.log)
        # Get dimensionality
        K = alpha.shape[0]
        J = beta.shape[0]

        # Initialize counts to zeros
        # Total occurrences of heuristic k
        N_k = np.ones([K], dtype=np.float32)

        # Total occurrences of entity j and heuristic k
        N_jk = np.ones([J, K], dtype=np.float32)

        # Total occurences of successfully meeting performance criteria by heuristic k
        N_1k = np.ones([K], dtype=np.float32)

        # Total occurences of failing to meet performance criteria by heuristic k
        N_0k = np.ones([K], dtype=np.float32)

        # First count occurences
        for _, row in log.log.iterrows():
            j = row['entity'].astype(int)
            k = row['heuristic'].astype(int)
            N_k[k] += 1
            N_jk[j][k] += 1

        # Then count credit
        for c in params.credit:
            credit = c(log=log)

            for _, row in credit.iterrows():
                j = row['entity'].astype(int)
                k = row['heuristic'].astype(int)
                l = row['credit'].astype(int)
                N_1k[k] += l
                N_0k[k] += 1-l

        _alpha = tf.constant(N_k)
        _beta = tf.constant(N_jk)
        _gamma1 = tf.constant(N_1k)
        _gamma0 = tf.constant(N_0k)

        alpha.assign(_alpha)
        beta.assign(_beta)
        gamma1.assign(_gamma1)
        gamma0.assign(_gamma0)

        if params.normalise:
            alpha_norm = tf.keras.utils.normalize(alpha, axis=0)
            beta_norm = tf.keras.utils.normalize(beta, axis=1)
            gamma1_norm = tf.keras.utils.normalize(gamma1, axis=0)
            gamma0_norm = tf.keras.utils.normalize(gamma0, axis=0)

            # We add one so that the concentration has a lower bound of 1
            alpha.assign(alpha_norm[0] + 1)
            beta.assign(beta_norm + 1)
            gamma1.assign(gamma1_norm[0] + 1)
            gamma0.assign(gamma0_norm[0] + 1)

    def __call__(self,
                 alpha: tf.Variable,
                 beta: tf.Variable,
                 gamma1: tf.Variable,
                 gamma0: tf.Variable,
                 theta: Distribution,
                 phi: Distribution,
                 psi: Distribution,
                 p_H: tf.Variable,
                 p_EgH: tf.Variable,
                 p_CgH: tf.Variable,
                 p_HgEC: tf.Variable,
                 l_HgEC: Distribution,
                 HgEC: tf.Variable,
                 log: PerformanceLog,
                 step: int) -> None:
        """
        The heuristic update step.

        Parameters
        ----------
        alpha: tf.Variable
            The concentration parameters for each heuristic in K.
        beta: tf.Variable
            The concentration parameters for each entity in J and heuristic in K.
        gamma1: tf.Variable
            The concentration of the success event of a beta distribution.
        gamma0: tf.Variable
            The concentration of the failed event of a beta distribution.
        theta: Distribution
            The heuristic Dirichlet distribution instance.
        phi: Distribution
            The entity, heuristic Dirichlet distribution instance.
        psi: Distribution
            The performance criteria/credit assignment Beta distribution instance.
        p_H: tf.Variable
            The probability of heuristic h in H occuring.
        p_EgH: tf.Variable
            The probability of entity j in J occuring given heuristic k in K applied.
        p_CgH: tf.Variable
            The probability of performance metric c in C occuring given heuristic k in K applied.
        p_HgEC: tf.Variable
            The probability of heuristic h in H occuring, given entity j in J and performance criteria c in C.
        l_HgEC: Distribution
            The likelihood of heuristic k in K given entity j in J and performance criteria c in C.
        HgEC: tf.Variable
            The selection of heuristic k in K for entity j in J and performance criteria c in C.
        log: PerformanceLog
            The performance log instance, keeps a ledger of performance thus far.
        step: int
            The step number.
        """

        # Check if burn-in is complete
        if step < self.params.burn_in:
            BHH.select(
                alpha=alpha,
                beta=beta,
                gamma1=gamma1,
                gamma0=gamma0,
                theta=theta,
                phi=phi,
                psi=psi,
                p_H=p_H,
                p_EgH=p_EgH,
                p_CgH=p_CgH,
                p_HgEC=p_HgEC,
                l_HgEC=l_HgEC,
                HgEC=HgEC
            )
        else:
            # Check for re-analysis
            if step % self.params.reanalysis == 0:
                # Bayesian analysis
                BHH.bayesian_analysis(
                    alpha=alpha,
                    beta=beta,
                    gamma1=gamma1,
                    gamma0=gamma0,
                    log=log,
                    params=self.params
                )

            # Check for reselection
            if step % self.params.reselection == 0:
                BHH.select(
                    alpha=alpha,
                    beta=beta,
                    gamma1=gamma1,
                    gamma0=gamma0,
                    theta=theta,
                    phi=phi,
                    psi=psi,
                    p_H=p_H,
                    p_EgH=p_EgH,
                    p_CgH=p_CgH,
                    p_HgEC=p_HgEC,
                    l_HgEC=l_HgEC,
                    HgEC=HgEC
                )

            # Forget factor
            if step > self.params.replay:
                log.prune(step=step - self.params.replay)
