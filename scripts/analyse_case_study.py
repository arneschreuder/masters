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
		'params': {
			'alphas': [
				'alpha[0]',
				'alpha[1]',
				'alpha[2]',
				'alpha[3]',
				'alpha[4]',
				'alpha[5]',
				'alpha[6]',
				'alpha[7]',
				'alpha[8]',
				'alpha[9]'
			],
			'thetas': [
				'theta[0]',
				'theta[1]',
				'theta[2]',
				'theta[3]',
				'theta[4]',
				'theta[5]',
				'theta[6]',
				'theta[7]',
				'theta[8]',
				'theta[9]'
			],
			'p_H': [
				'p_H[0]',
				'p_H[1]',
				'p_H[2]',
				'p_H[3]',
				'p_H[4]',
				'p_H[5]',
				'p_H[6]',
				'p_H[7]',
				'p_H[8]',
				'p_H[9]'
			],
			'p_HgEC': [
				'p_HgEC[0][0]',
				'p_HgEC[0][1]',
				'p_HgEC[0][2]',
				'p_HgEC[0][3]',
				'p_HgEC[0][4]',
				'p_HgEC[0][5]',
				'p_HgEC[0][6]',
				'p_HgEC[0][7]',
				'p_HgEC[0][8]',
				'p_HgEC[0][9]'
			]
		},
		'order': ['bhh_baseline', 'bhh_replay_250', 'bhh_credit_symmetric'],
	},
}
ANALYSIS = None
ANALYSIS_PATH = None
METRICS_DATA = None
PARAMS_DATA = None
PALETTE = None
HEURISTIC_COUNT = None
HEURISTIC = None
ORDER = None
PARAM_GROUPS = None


def parse_arguments():
	global ANALYSIS
	global ANALYSIS_PATH
	global HEURISTIC_COUNT
	global HEURISTIC
	global ORDER
	global PARAM_GROUPS

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
	HEURISTIC = ANALYSIS_CONFIG[ANALYSIS]['column']
	HEURISTIC_COUNT = ANALYSIS_CONFIG[ANALYSIS]['param_count']
	ORDER = ANALYSIS_CONFIG[ANALYSIS]['order']

	if ANALYSIS == 'params':
		PARAM_GROUPS = list(ANALYSIS_CONFIG[ANALYSIS]['params'].keys())

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
	global HEURISTIC_COUNT
	# Setup Plots
	sns.set_context('paper',  font_scale=1.5, rc={'lines.linewidth': 2, 'lines.markersize': 5})
	PALETTE = sns.color_palette('viridis', HEURISTIC_COUNT)
	# PALETTE = sns.color_palette('mako_r', HEURISTIC_COUNT)

def create_metrics_dirs():
	global ANALYSIS_PATH
	print('Creating metrics directories')
	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/train'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures/test'.format(ANALYSIS_PATH), exist_ok=True)

def create_params_dirs():
	global ANALYSIS_PATH
	global PARAM_GROUPS
	print('Creating params directories')
	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)
	os.makedirs('{}/figures'.format(ANALYSIS_PATH), exist_ok=True)

	for param_group in PARAM_GROUPS:
		os.makedirs('{}/figures/{}'.format(ANALYSIS_PATH, param_group), exist_ok=True)

def read_metrics_data_from_csv():
	print('Reading metrics data from CSV')
	global METRICS_DATA
	METRICS_DATA = pd.read_csv(os.path.join(ANALYSIS_PATH, 'case_study_metrics.csv'))
	METRICS_DATA = METRICS_DATA.reindex(sorted(METRICS_DATA.columns), axis=1)

def read_params_data_from_csv():
	print('Reading params data from CSV')
	global PARAMS_DATA
	PARAMS_DATA = pd.read_csv(os.path.join(ANALYSIS_PATH, 'case_study_params.csv'))
	PARAMS_DATA = PARAMS_DATA.reindex(sorted(PARAMS_DATA.columns), axis=1)

def plot_metrics(train: bool = False, accuracy = False):
	DS = 'Train' if train else 'Test'
	TYPE = 'Accuracy' if accuracy else 'Log Loss'
	print("Plotting {} {}".format(DS, TYPE))
	Y_DATA = 'accuracy' if TYPE == 'Accuracy' else 'loss'

	global HEURISTIC
	global ORDER
	global HEURISTIC
	global PALETTE
	global METRICS_DATA
	global plt

	print('Processing metrics')
	try:
		fig, ax = plt.subplots(figsize=(12,5))
		fig.suptitle('BHH Case Study - {} {} - Dataset: Iris'.format(DS, TYPE))

		plot = sns.lineplot(
			data=METRICS_DATA,
			x='step',
			y='{}_{}'.format(DS.lower(), Y_DATA.lower()),
			hue_order=ORDER,
			hue=HEURISTIC,
			style_order=ORDER,
			style=HEURISTIC,
			markers=False,
			dashes=False,
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

def plot_params():
	global ANALYSIS_CONFIG
	global HEURISTIC
	global ORDER
	global HEURISTIC
	global PALETTE
	global PARAMS_DATA
	global PARAM_GROUPS
	global plt

	print('Processing params')

	for param_group in PARAM_GROUPS:
		PARAMS = PARAM_GROUPS = ANALYSIS_CONFIG[ANALYSIS]['params'][param_group]

		for param in PARAMS:
			print('Processing: {} - {}'.format(param_group, param))
			COLUMN_NAME = param.replace('][','_').replace('[','_').replace(']','_')[:-1]
			try:
				fig, ax = plt.subplots(figsize=(12,5))
				fig.suptitle('BHH Case Study - {} - Dataset: Iris'.format(param))

				plot = sns.lineplot(
					data=PARAMS_DATA,
					x='step',
					y=COLUMN_NAME,
					hue_order=ORDER,
					hue=HEURISTIC,
					style_order=ORDER,
					style=HEURISTIC,
					markers=False,
					dashes=False,
					ax=ax,
					palette=PALETTE
				)

				plot.set_xlabel("Step")
				plot.set_ylabel('Log {}'.format(param))
				plot.set_yscale('log') # Logarithmic plot

				OUTPUT = os.path.join(ANALYSIS_PATH, 'figures/{}/{}.pdf'.format(param_group, param))
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

	if ANALYSIS == 'params':
		create_params_dirs()
		read_params_data_from_csv()
		plot_params()

if __name__ == '__main__':
	main()
