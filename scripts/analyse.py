import argparse
import os

import matplotlib.pyplot as plt
import numpy as np
import Orange
import pandas as pd
import seaborn as sns

ANALYSIS = None
ANALYSIS_PATH = None

ANALYSIS_CONFIG = {
	'bhh_burn_in': {
		'view': 'bhh_burn_in',
		'friendly': 'Burn In',
		'column': 'burn_in',
		'param_count': 5,
		'order': [0, 5, 10, 15, 20]
	},
	'bhh_credit': {
		'view': 'bhh_credit',
		'friendly': 'Credit',
		'column': 'credit',
		'param_count': 5,
		'order': ['ibest', 'pbest', 'rbest', 'gbest', 'symmetric']
	},
	'bhh_discounted_rewards': {
		'view': 'bhh_discounted_rewards',
		'friendly': 'Discounted Rewards',
		'column': 'discounted_rewards',
		'param_count': 2,
		'order': [True, False]
	},
	'bhh_heuristic_pool': {
		'view': 'bhh_heuristic_pool',
		'friendly': 'Heuristic Pool',
		'column': 'heuristic_pool',
		'param_count': 3,
		'order': ['all', 'gd', 'mh']
	},
	'bhh_normalise': {
		'view': 'bhh_normalise',
		'friendly': 'Normalisation',
		'column': 'normalisation',
		'param_count': 2,
		'order': [True, False]
	},
	'bhh_population': {
		'view': 'bhh_population',
		'friendly': 'Population',
		'column': 'population',
		'param_count': 5,
		'order': [5, 10, 15, 20, 25]
	},
	'bhh_reanalysis': {
		'view': 'bhh_reanalysis',
		'friendly': 'Reanalysis',
		'column': 'reanalysis',
		'param_count': 5,
		'order': [1, 5, 10, 15, 20]
	},
	'bhh_replay': {
		'view': 'bhh_replay',
		'friendly': 'Replay',
		'column': 'replay',
		'param_count': 5,
		'order': [1, 5, 10, 15, 20]
	},
	'bhh_reselection': {
		'view': 'bhh_reselection',
		'friendly': 'Reselection',
		'column': 'reselection',
		'param_count': 5,
		'order': [1, 5, 10, 15, 20]
	},
	'standalone': {
		'view': 'standalone',
		'friendly': 'Heuristics',
		'column': 'heuristic',
		'param_count': 13,
		'order': ['adam', 'adadelta', 'adagrad', 'bhh_all', 'bhh_gd', 'bhh_mh', 'de', 'ga', 'momentum','nag', 'pso', 'rmsprop', 'sgd']
	},
}

DATASETS = [
	'iris',
	'fish_toxicity',
	'abalone',
	'air_quality',
	'housing',
	'wine_quality',
	'car',
	'parkinsons',
	'forest_fires',
	'bank',
	'bike',
	'student_performance',
	'adult',
	'mushroom',
	'diabetic'
]
CATEGORICAL_DATASETS = [
	'iris',
	'abalone',
	'wine_quality',
	'car',
	'bank',
	'adult',
	'mushroom',
	'diabetic'
]

DATA = None
VIEW = None
FRIENDLY = None
COLUMN = None
ORDER = None
PARAM_COUNT = None
PALETTE = None

def parse_arguments():
	global ANALYSIS
	global ANALYSIS_PATH
	global VIEW
	global FRIENDLY
	global COLUMN
	global ORDER
	global PARAM_COUNT

	# Parser
	parser = argparse.ArgumentParser(
			description='Analyse Experimental Data'
	)

	# Basic Params
	parser.add_argument(
			'--analysis',
			type=str,
			choices=ANALYSIS_CONFIG.keys(),
			required=True,
			help='The analysis output directory'
	)
	args = parser.parse_args()
	ANALYSIS = args.analysis
	ANALYSIS_PATH = os.path.join(os.getcwd(), 'analysis', ANALYSIS)
	VIEW = ANALYSIS_CONFIG[ANALYSIS]['view']
	FRIENDLY = ANALYSIS_CONFIG[ANALYSIS]['friendly']
	COLUMN = ANALYSIS_CONFIG[ANALYSIS]['column']
	ORDER = ANALYSIS_CONFIG[ANALYSIS]['order']
	PARAM_COUNT = ANALYSIS_CONFIG[ANALYSIS]['param_count']

def print_banner():
    global ANALYSIS_PATH

    print('')
    print('====================================================================')
    print('Analyse Experimental Data')
    print('====================================================================')
    print('Analysis Directory: {}'.format(ANALYSIS_PATH))
    print('====================================================================')
    print('')

def create_dirs():
	global ANALYSIS_PATH
	print('Creating directories')
	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/cd'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/train/loss'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/train/accuracy'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/test/loss'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/test/accuracy'.format(ANALYSIS_PATH), exist_ok=True)

def read_data_from_csv():
	print('Reading data from CSV')
	global DATA
	DATA = pd.read_csv(os.path.join(ANALYSIS_PATH, '{}.csv'.format(ANALYSIS)))
	DATA = DATA.reindex(sorted(DATA.columns), axis=1)

def create_cd_plots_per_dataset():
	global FRIENDLY
	global COLUMN
	print('Critical difference per dataset')

	for dataset in DATASETS:
		print('Processing: {}...'.format(dataset))
		try:
			query = '(dataset == "{}")'.format(dataset)
			subset = DATA.query(query)

			pivot = pd.pivot_table(
				subset,
				values='rank',
				columns=[COLUMN],
				aggfunc=np.mean,
				fill_value=0
			)

			names = [key for key, value in pivot.items()]
			avg_ranks = [pivot[key]['rank'] for key, value in pivot.items()]

			cd = Orange.evaluation.compute_CD(avg_ranks, 31*30) #tested on 31 steps (0-30) and 30 epochs (1-300)
			plot = Orange.evaluation.graph_ranks(avg_ranks, names, cd=cd, width=10, textspace=2)
			plt.title('BHH {} - Critical Difference - Dataset: {}'.format(FRIENDLY, dataset), pad=20)
			OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/cd/{}.pdf'.format(dataset))
			plt.savefig(OUTPUT, transparent=True, bbox_inches='tight')
			plt.close()
		except Exception as e:
			print(e)
			print('-> error')

def create_cd_plots_overall():
	global FRIENDLY
	global COLUMN

	print('Critical difference overall')

	try:
		subset = DATA.copy()
		pivot = pd.pivot_table(
			subset,
			values='rank',
			columns=[COLUMN],
			aggfunc=np.mean,
			fill_value=0
		)

		names = [key for key, value in pivot.items()]
		avg_ranks = [pivot[key]['rank'] for key, value in pivot.items()]

		cd = Orange.evaluation.compute_CD(avg_ranks, 31*30) #tested on 31 steps (0-30) and 30 epochs (1-300)
		plot = Orange.evaluation.graph_ranks(avg_ranks, names, cd=cd, width=10, textspace=2)
		plt.title('BHH {} - Critical Difference - Overall'.format(FRIENDLY), pad=20)
		OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/cd/overall.pdf')
		plt.savefig(OUTPUT, transparent=True, bbox_inches='tight')
		plt.close()
	except Exception as e:
		print(e)
		print('-> error')

def setup_seaborn():
	global PALETTE
	global PARAM_COUNT
	# Setup Plots
	sns.set_context('paper',  font_scale=1.5, rc={'lines.linewidth': 2, 'lines.markersize': 5})
	# PALETTE = sns.color_palette('viridis', PARAM_COUNT)
	PALETTE = sns.color_palette('mako_r', PARAM_COUNT)

def plot(train: bool = False, accuracy = False):
	DS = 'Train' if train else 'Test'
	TYPE = 'Accuracy' if accuracy else 'Log Loss'
	print("Plotting {} {}".format(DS, TYPE))
	Y_DATA = 'accuracy' if TYPE == 'Accuracy' else 'loss'

	global DATA
	global COLUMN
	global ORDER
	global COLUMN
	global FRIENDLY
	global PALETTE

	DATASETS_SUBSET = CATEGORICAL_DATASETS if accuracy else DATASETS

	for dataset in DATASETS_SUBSET:
		print('Processing: {}...'.format(dataset))
		try:
			query = 'dataset == "{}"'.format(dataset)
			subset = DATA.query(query)

			fig, ax = plt.subplots(figsize=(12,9))
			fig.suptitle('BHH {} - {} {} - Dataset: {}'.format(FRIENDLY, DS, TYPE, dataset))

			plot = sns.lineplot(
				data=subset,
				x='step',
				y='{}_{}'.format(DS.lower(), Y_DATA.lower()),
				hue_order=ORDER,
				hue=COLUMN,
				style_order=ORDER,
				style=COLUMN,
				markers=True,
				dashes=True,
				ax=ax,
				palette=PALETTE
			)

			plot.set_xlabel("Epoch")
			plot.set_ylabel('{} {}'.format(DS, TYPE))
			plot.set_yscale('log') # Logarithmic plot

			OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/{}/{}/{}.pdf'.format(DS.lower(), Y_DATA.lower(), dataset))
			fig.savefig(OUTPUT, transparent=True)
			plt.close()
		except Exception as e:
			print(e)
			print("-> error")


def main():
	parse_arguments()
	print_banner()
	create_dirs()
	read_data_from_csv()
	create_cd_plots_per_dataset()
	create_cd_plots_overall()
	setup_seaborn()
	plot(train=True,accuracy=False)
	plot(train=True,accuracy=True)
	plot(train=False,accuracy=False)
	plot(train=False,accuracy=True)

if __name__ == '__main__':
	main()
