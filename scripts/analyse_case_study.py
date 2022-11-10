import argparse
import os

import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns

ANALYSIS_CONFIG = {
	'metrics': {
		'column': 'heuristic',
		'param_count': 3,
		'order': ['bhh_baseline', 'bhh_replay_250', 'bhh_credit_symmetric'],
	},
	'params': {
		'column': 'heuristic',
		'param_count': 3,
		'order': ['bhh_baseline', 'bhh_replay_250', 'bhh_credit_symmetric'],
	},
}
ANALYSIS = None
ANALYSIS_PATH = None
METRICS_DATA = None
PALETTE = None
PARAM_COUNT = None
COLUMN = None
ORDER = None

def parse_arguments():
	global ANALYSIS
	global ANALYSIS_PATH
	global PARAM_COUNT
	global COLUMN
	global ORDER

	# Parser
	parser = argparse.ArgumentParser(
			description='Analyse Case Study Data'
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
	ANALYSIS_PATH = os.path.join(os.getcwd(), 'analysis/case_study', ANALYSIS)
	COLUMN = ANALYSIS_CONFIG[ANALYSIS]['column']
	PARAM_COUNT = ANALYSIS_CONFIG[ANALYSIS]['param_count']
	ORDER = ANALYSIS_CONFIG[ANALYSIS]['order']

def print_banner():
    global ANALYSIS_PATH

    print('')
    print('====================================================================')
    print('Analyse Case Study Data')
    print('====================================================================')
    print('Analysis Directory: {}'.format(ANALYSIS_PATH))
    print('====================================================================')
    print('')

def setup_seaborn():
	global PALETTE
	global PARAM_COUNT
	# Setup Plots
	sns.set_context('paper',  font_scale=1.5, rc={'lines.linewidth': 2, 'lines.markersize': 5})
	# PALETTE = sns.color_palette('viridis', PARAM_COUNT)
	PALETTE = sns.color_palette('mako_r', PARAM_COUNT)

def create_metrics_dirs():
	global ANALYSIS_PATH
	print('Creating metrics directories')
	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/train'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/test'.format(ANALYSIS_PATH), exist_ok=True)

def read_metrics_data_from_csv():
	print('Reading metrics data from CSV')
	global METRICS_DATA
	METRICS_DATA = pd.read_csv(os.path.join(ANALYSIS_PATH, 'case_study_metrics.csv'))
	METRICS_DATA = METRICS_DATA.reindex(sorted(METRICS_DATA.columns), axis=1)
	print(METRICS_DATA)

def plot_metrics(train: bool = False, accuracy = False):
	DS = 'Train' if train else 'Test'
	TYPE = 'Accuracy' if accuracy else 'Log Loss'
	print("Plotting {} {}".format(DS, TYPE))
	Y_DATA = 'accuracy' if TYPE == 'Accuracy' else 'loss'

	global COLUMN
	global ORDER
	global COLUMN
	global PALETTE
	global METRICS_DATA
	global plt

	print('Processing metrics')
	try:
		fig, ax = plt.subplots(figsize=(12,9))
		fig.suptitle('BHH Case Study - {} {}'.format(DS, TYPE))

		plot = sns.lineplot(
			data=METRICS_DATA,
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

		OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/{}/{}_{}.pdf'.format(DS.lower(), DS.lower(), Y_DATA.lower()))
		fig.savefig(OUTPUT, transparent=True)
		plt.close()
	except Exception as e:
		print(e)
		print("-> error")

def main():
	global ANALYSIS
	parse_arguments()
	print_banner()
	setup_seaborn()

	if ANALYSIS == 'metrics':
		create_metrics_dirs()
		read_metrics_data_from_csv()
		plot_metrics(train=True,accuracy=False)
		plot_metrics(train=True,accuracy=True)
		plot_metrics(train=False,accuracy=False)
		plot_metrics(train=False,accuracy=True)

if __name__ == '__main__':
	main()


# import argparse
# import os

# import matplotlib.pyplot as plt
# import numpy as np
# import Orange
# import pandas as pd
# import seaborn as sns

# ANALYSIS = None
# ANALYSIS_PATH = None

# ANALYSIS_CONFIG = {
# 	'case_study': {
# 		'view': 'bhh_burn_in',
# 		'friendly': 'Burn In',
# 		'column': 'burn_in',
# 		'param_count': 5,
# 		'order': [0, 5, 10, 15, 20]
# 	},
# }

# DATASETS = [
# 	'iris'
# ]
# CATEGORICAL_DATASETS = [
# 	'iris'
# ]

# METRICS_DATA = None
# VIEW = None
# FRIENDLY = None
# COLUMN = None
# ORDER = None
# PARAM_COUNT = None
# PALETTE = None

# def parse_arguments():
# 	global ANALYSIS
# 	global ANALYSIS_PATH
# 	global VIEW
# 	global FRIENDLY
# 	global COLUMN
# 	global ORDER
# 	global PARAM_COUNT

# 	# Parser
# 	parser = argparse.ArgumentParser(
# 			description='Analyse Case Study Data'
# 	)

# 	# Basic Params
# 	parser.add_argument(
# 			'--analysis',
# 			type=str,
# 			choices=ANALYSIS_CONFIG.keys(),
# 			required=True,
# 			help='The analysis output directory'
# 	)
# 	args = parser.parse_args()
# 	ANALYSIS = args.analysis
# 	ANALYSIS_PATH = os.path.join(os.getcwd(), 'analysis', ANALYSIS)
# 	VIEW = ANALYSIS_CONFIG[ANALYSIS]['view']
# 	FRIENDLY = ANALYSIS_CONFIG[ANALYSIS]['friendly']
# 	COLUMN = ANALYSIS_CONFIG[ANALYSIS]['column']
# 	ORDER = ANALYSIS_CONFIG[ANALYSIS]['order']
# 	PARAM_COUNT = ANALYSIS_CONFIG[ANALYSIS]['param_count']

# def print_banner():
#     global ANALYSIS_PATH

#     print('')
#     print('====================================================================')
#     print('Analyse Case Study Data')
#     print('====================================================================')
#     print('Analysis Directory: {}'.format(ANALYSIS_PATH))
#     print('====================================================================')
#     print('')

# def create_dirs():
# 	global ANALYSIS_PATH
# 	print('Creating directories')
# 	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)
# 	os.makedirs('{}/figures/metrics'.format(ANALYSIS_PATH), exist_ok=True)
# 	os.makedirs('{}/figures/alphas'.format(ANALYSIS_PATH), exist_ok=True)
# 	os.makedirs('{}/figures/thetas'.format(ANALYSIS_PATH), exist_ok=True)
# 	os.makedirs('{}/figures/p_H'.format(ANALYSIS_PATH), exist_ok=True)
# 	os.makedirs('{}/figures/p_HgEC'.format(ANALYSIS_PATH), exist_ok=True)

# def read_metrics_data_from_csv():
# 	print('Reading metrics data from CSV')
# 	global METRICS_DATA
# 	METRICS_DATA = pd.read_csv(os.path.join(ANALYSIS_PATH, '{}.csv'.format(ANALYSIS)))
# 	METRICS_DATA = METRICS_DATA.reindex(sorted(DATA.columns), axis=1)

# def setup_seaborn():
# 	global PALETTE
# 	global PARAM_COUNT
# 	# Setup Plots
# 	sns.set_context('paper',  font_scale=1.5, rc={'lines.linewidth': 2, 'lines.markersize': 5})
# 	# PALETTE = sns.color_palette('viridis', PARAM_COUNT)
# 	PALETTE = sns.color_palette('mako_r', PARAM_COUNT)

# def plot_metrics(train: bool = False, accuracy = False):
# 	DS = 'Train' if train else 'Test'
# 	TYPE = 'Accuracy' if accuracy else 'Log Loss'
# 	print("Plotting {} {}".format(DS, TYPE))
# 	Y_DATA = 'accuracy' if TYPE == 'Accuracy' else 'loss'

# 	global DATA
# 	global COLUMN
# 	global ORDER
# 	global COLUMN
# 	global FRIENDLY
# 	global PALETTE

# 	DATASETS_SUBSET = CATEGORICAL_DATASETS if accuracy else DATASETS

# 	for dataset in DATASETS_SUBSET:
# 		print('Processing: {}...'.format(dataset))
# 		try:
# 			query = 'dataset == "{}"'.format(dataset)
# 			subset = DATA.query(query)

# 			fig, ax = plt.subplots(figsize=(12,9))
# 			fig.suptitle('BHH {} - {} {} - Dataset: {}'.format(FRIENDLY, DS, TYPE, dataset))

# 			plot = sns.lineplot(
# 				data=subset,
# 				x='step',
# 				y='{}_{}'.format(DS.lower(), Y_DATA.lower()),
# 				hue_order=ORDER,
# 				hue=COLUMN,
# 				style_order=ORDER,
# 				style=COLUMN,
# 				markers=True,
# 				dashes=True,
# 				ax=ax,
# 				palette=PALETTE
# 			)

# 			plot.set_xlabel("Epoch")
# 			plot.set_ylabel('{} {}'.format(DS, TYPE))
# 			plot.set_yscale('log') # Logarithmic plot

# 			OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/{}/{}/{}.pdf'.format(DS.lower(), Y_DATA.lower(), dataset))
# 			fig.savefig(OUTPUT, transparent=True)
# 			plt.close()
# 		except Exception as e:
# 			print(e)
# 			print("-> error")


# def main():
# 	parse_arguments()
# 	print_banner()
# 	create_dirs()

# 	# Metrics
# 	read_metrics_data_from_csv()
# 	# setup_seaborn()
# 	# plot_metrics(train=True,accuracy=False)
# 	# plot_metrics(train=True,accuracy=True)
# 	# plot_metrics(train=False,accuracy=False)
# 	# plot_metrics(train=False,accuracy=True)

# if __name__ == '__main__':
# 	main()
