# Masters

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Title

Training Feedforward Neural Networks with Bayesian Hyper-Heuristics

## Abstract

Many different heuristics have been developed and used to train feedforward
neural networks (FFNNs). However, selection of the best heuristic to train
FFNNs is a time consuming and non-trivial exercise. Careful, systematic
selection is thus required to select the best heuristic. In the past, selection
was done by trial and error. A modern approach is to automate this selection
proses. However, a single approach might not be sufficient. Research has
proposed the use of hybridisation of heuristics. These methods are referred to
as hyper-heuristics (HH) and focus on finding the best heuristic in
heuristic-space by making use of heuristic performance information. One such
form of HH is a population-based approach that guides the search process by
automatically selecting heuristics from a heuristic-pool to be applied to
different entities that represent candidate solutions to the problem-space and
work together to find good solutions. This thesis introduces a novel Bayesian
hyper-heuristic (BHH) to train FFNNs. Bayesian analysis is used to guide the
selection of lower-level heuristics by updating prior selection probability
distributions with performance biased posteriors. An empirical study is done by
using the BHH to train FFNNs. The performance of the BHH is compared to that of
\todo[inline]{get final number}eight classic heuristics with different search
behaviours. The emperical test was executed on \todo[inline]{get final
number}ten datasets consisting out of classification and regression problems
with varying characteristics. The BHH is shown to be able to train FFNNs and
provide an automated method for finding the best heuristic to train the
\ac{FFNN}.

## Keywords

hyper-heuristics, meta-learning, feedforward neural networks, supervised learning, optimisation.

## Authors

### Schreuder, A.N.:

- Master in Science candidate (u10053604),<br>
  Dept. of Computer Science (CS),<br>
  School of Information Technology (IT),<br>
  Faculty of Engineering, Built Environment and IT (EBIT),<br>
  University of Pretoria (UP)<br>
- Computational Intelligence Research Group (CIRG)

## Supervisors

### Bosman, A.S. (Supervisor):

Senior Lecturer,<br>
Dept. of Computer Science (CS),<br>
School of Information Technology (IT),<br>
Faculty of Engineering, Built Environment and IT (EBIT),<br>
University of Pretoria (UP)
Computational Intelligence Research Group (CIRG)

### Clegorn, C.W. (Supervisor):

Associate Professor,<br>
Dept. of Computer Science (CS),<br>
School of Computer Science and Applied Mathematics,<br>
University of Witwatersrand, Johannesburg (WITS)

### Engelbrecht, A.P. (Supervisor):

Prof. Andries Engelbrecht
Voigt Chair in Data Science<br>
Dept. of Industrial Engineering and Computer Science,<br>
School of Information Technology (IT),<br>
Faculty of Engineering,<br>
Stellenbosch University (SUN)

## Environments

### Activate Environment

```sh
source .venv/bin/activate
source .env
```

### De-activate Environment

```sh
deactivate
```

### Prerequisites

```sh
pip install -r requirements.txt
```

## Quick Start

### Single Heuristic:

```
usage: heuristic.py [-h] --dataset
                    {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                    --optimiser {sgd,momentum,nag,adagrad,rmsprop,adadelta,adam,pso,de,ga,bhh} [--seed SEED]

Training Feedforward Neural Networks using Bayesian Hyper-Heuristics

optional arguments:
  -h, --help            show this help message and exit
  --dataset {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                        The dataset to use
  --optimiser {sgd,momentum,nag,adagrad,rmsprop,adadelta,adam,pso,de,ga,bhh}
                        The optimiser to use
  --seed SEED           The seed to use
```

### Bayesian Hyper-Heuristic:

```
usage: bhh.py [-h] --variant {all,gd_only} --dataset
              {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
              [--seed SEED] [--log-level LOG_LEVEL] [--population-size {5,10,20,50,100}] [--burn_in {0,10,20,50,100}] [--replay {10,20,50,100,300}]
              [--reselection {1,5,10,50,100}] [--reanalysis {1,5,10,50,100}] [--normalise NORMALISE] [--credit {ibest,pbest,rbest,gbest,symmetric}]
              [--discounted-rewards DISCOUNTED_REWARDS]

Training Feedforward Neural Networks using Bayesian Hyper-Heuristics

optional arguments:
  -h, --help            show this help message and exit
  --variant {all,gd_only}
                        The BHH variant to use
  --dataset {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                        The dataset to use
  --seed SEED           The seed to use
  --log-level LOG_LEVEL
                        The log level to use
  --population-size {5,10,20,50,100}
                        The population size to use
  --burn_in {0,10,20,50,100}
                        The burn-in to use
  --replay {10,20,50,100,300}
                        The replay buffer size to use
  --reselection {1,5,10,50,100}
                        The reselection interval to use
  --reanalysis {1,5,10,50,100}
                        The reanalysis interval to use
  --normalise NORMALISE
                        The normalisation flag
  --credit {ibest,pbest,rbest,gbest,symmetric}
                        The credit assignment strategy to use
  --discounted-rewards DISCOUNTED_REWARDS
                        The credit reward discount flag
```
