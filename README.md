# Master of Science: Computer Science (Artificial Intelligence)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Title

Training Feedforward Neural Networks with Bayesian Hyper-Heuristics

## Abstract

Many different heuristics have been developed and used to train feedforward neural
networks (FFNNs). However, selection of the best heuristic to train FFNNs is a time
consuming and non-trivial exercise. Careful, systematic selection is thus required to select
the best heuristic. In the past, selection was done by trial and error. A modern approach
is to automate this selection proses. However, a single approach might not be sufficient.
Research has proposed the use of hybridisation of heuristics. These methods are referred
to as hyper-heuristics (HHs) and focus on finding the best heuristic or combinations of
heuristics in heuristic-space by making use of heuristic performance information during
training time. One such implementation of HH is a population-based approach that guides
the search process by dynamically selecting heuristics from a heuristic-pool to be applied
to different entities that represent candidate solutions to the problem-space and work
together to find good solutions. This thesis introduces a novel population-based Bayesian
hyper-heuristic (BHH). An empirical study is done by using the BHH to train FFNNs.
An in-depth behaviour analysis is done and the performance of the BHH is compared to
that of ten popular low-level heuristics each with different search behaviours. The chosen
heuristic pool consists out of classic gradient-based heuristics as well as meta-heuristics.
The empirical process was executed on fifteen datasets consisting out of classification
and regression problems with varying characteristics. Results are analysed for statistical
significance and the BHH is shown to be able to train FFNNs well and provide an automated
method for finding the best heuristic to train the FFNNs at various stages of the training
process.

## Keywords

hyper-heuristics, meta-learning, feedforward neural networks, supervised learning, bayesian statistics, optimisation

## Authors

### Schreuder, A.N.:

Arné Schreuder<br>
Master of Science candidate (u10053604)<br>
Dept. of Computer Science (CS)<br>
School of Information Technology (IT)<br>
Faculty of Engineering Built Environment and IT (EBIT)<br>
University of Pretoria (UP)<br>
Computational Intelligence Research Group (CIRG)<br>

## Supervisors

### Bosman, A.S.:

Dr. Anna Bosman<br>
Senior Lecturer<br>
Dept. of Computer Science (CS)<br>
School of Information Technology (IT)<br>
Faculty of Engineering Built Environment and IT (EBIT)<br>
University of Pretoria (UP)<br>
Computational Intelligence Research Group (CIRG)<br>

### Clegorn, C.W.:

Prof. Christopher Cleghorn<br>
Associate Professor<br>
Dept. of Computer Science (CS)<br>
School of Computer Science and Applied Mathematics<br>
University of Witwatersrand Johannesburg (WITS)<br>

### Engelbrecht, A.P.:

Prof. Andries Engelbrecht<br>
Voigt Chair in Data Science<br>
Dept. of Industrial Engineering and Computer Science<br>
School of Information Technology (IT)<br>
Faculty of Engineering<br>
Stellenbosch University (SUN)<br>

## Getting Started

### Virtual Environments

Create a virtual environment as follows:

```sh
pip install virtualenv
python -m virtualenv .venv
```

To activate the virtual environment, execute:

```sh
source .venv/bin/activate
source .env
```

and to deactive, execute:

```sh
deactivate
```

### Install Depencencies

The repo has a bunch of required dependencies. To install them, execute:

```sh
pip install -r requirements.txt
```

## Experiments

There are 2 groups of experiments to run:

- Standalone Heuristics
- BHH

### Standalone Heuristic:

```
usage: heuristic.py [-h] --dataset
                    {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                    --optimiser
                    {sgd,momentum,nag,adagrad,rmsprop,adadelta,adam,pso,de,ga}
                    [--seed SEED]

Training Feedforward Neural Networks using Bayesian Hyper-Heuristics

optional arguments:
  -h, --help            show this help message and exit
  --dataset {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                        The dataset to use
  --optimiser {sgd,momentum,nag,adagrad,rmsprop,adadelta,adam,pso,de,ga}
                        The optimiser to use
  --seed SEED           The seed to use

```

### Bayesian Hyper-Heuristic:

```
usage: bhh.py [-h] --dataset
              {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
              [--seed SEED] [--log-level LOG_LEVEL]
              [--heuristic-pool {all,gd,mh}]
              [--population-size {5,10,15,20,25}] [--burn_in {0,10,20,50,100}]
              [--replay {1,5,10,15,20}] [--reselection {1,5,10,15,20}]
              [--reanalysis {1,5,10,15,20}] [--normalise NORMALISE]
              [--credit {ibest,pbest,rbest,gbest,symmetric}]
              [--discounted-rewards DISCOUNTED_REWARDS]

Training Feedforward Neural Networks using Bayesian Hyper-Heuristics

optional arguments:
  -h, --help            show this help message and exit
  --dataset {abalone,adult,air_quality,bank,bike,car,iris,diabetic,fish_toxicity,forest_fires,housing,mushroom,parkinsons,student_performance,wine_quality}
                        The dataset to use
  --seed SEED           The seed to use
  --log-level LOG_LEVEL
                        The log level to use
  --heuristic-pool {all,gd,mh}
                        The BHH heuristic pool to use
  --population-size {5,10,15,20,25}
                        The population size to use
  --burn_in {0,10,20,50,100}
                        The burn-in to use
  --replay {1,5,10,15,20}
                        The replay buffer size to use
  --reselection {1,5,10,15,20}
                        The reselection interval to use
  --reanalysis {1,5,10,15,20}
                        The reanalysis interval to use
  --normalise NORMALISE
                        The normalisation flag
  --credit {ibest,pbest,rbest,gbest,symmetric}
                        The credit assignment strategy to use
  --discounted-rewards DISCOUNTED_REWARDS
                        The credit reward discount flag

```

### Export TensorBoard data

```
usage: export.py [-h] --data-dir DATA_DIR

Export TensorBoard data to csv

optional arguments:
  -h, --help           show this help message and exit
  --data-dir DATA_DIR  The directory that contains the data
```

## Citation

When citing this work, please use the following BibTex citation:

```bibtex
@mastersthesis{Schreuder2022BHH,
	author = {Schreuder, A.N},
	title = {Training Feedforward Neural Networks using Bayesian Hyper-Heuristics},
	institution = {University of Pretoria, South Africa},
	school = {Department of Computer Science}
	year = 2022,
}
```
