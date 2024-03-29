

import argparse
import os
import re

import cuid
import pandas as pd
import tensorflow as tf
from tensorflow.core.util import event_pb2
from tensorflow.python.framework import tensor_util
from tensorflow.python.lib.io import tf_record

COLUMNS = [
	'id',
	'dataset',
	'heuristic',
	'heuristic_pool',
	'population',
	'burn_in',
	'replay',
	'reselection',
	'reanalysis',
	'normalisation',
	'credit',
	'discounted_rewards',
	'run',
	'step',
	'wall_time',
	'tag',
	'value'
]
ALLOWED_TAGS = r'(^alpha\[\d\]$|^theta\[\d\]$|^train_accuracy$|^train_loss$|^test_accuracy$|^test_loss$|^p_H\[\d\]$|^p_HgEC\[0\]\[\d\]$|^HgEC\[\d\]$)'
DATA_DIR = None
PATH = None

def parse_arguments():
	global DATA_DIR
	global PATH

	# Parser
	parser = argparse.ArgumentParser(
			description="Export case study TensorBoard data to csv"
	)

	# Basic Params
	parser.add_argument(
			"--data-dir",
			type=str,
			required=True,
			help="The directory that contains the data"
	)
	args = parser.parse_args()
	DATA_DIR = args.data_dir
	PATH = os.path.join(os.getcwd(), DATA_DIR)

def print_banner():
    global DATA_DIR

    print("")
    print("====================================================================")
    print("Export case study TensorBoard data to csv")
    print("====================================================================")
    print("Data Directory: {}".format(DATA_DIR))
    print("====================================================================")
    print("")

def my_summary_iterator(path):
	for r in tf_record.tf_record_iterator(path):
		yield event_pb2.Event.FromString(r)

def export_events(path):
	global DATA_DIR
	global COLUMNS
	global ALLOWED_TAGS

	directory = os.path.abspath(os.path.join(path, os.pardir))
	filename = os.path.basename(path)
	data_filepath = "{}/{}.csv".format(directory, filename)

	if os.path.isfile(data_filepath):
		print("Skipped: {}".format(data_filepath))

	experiment = str(directory).replace(os.getcwd() + f"/{DATA_DIR}/", '')
	experiment_parts = experiment.split('/')
	dataset = experiment_parts[0]
	heuristic = experiment_parts[1]
	config = experiment_parts[2]
	config_parts = config.split('_')
	run = experiment_parts[3]

	# Extract parameters
	if len(config_parts) == 1:
		heuristic_pool = None
		population = None
		burn_in = None
		credit = None
		discounted_rewards = None
		normalisation = None
		population = None
		reanalysis = None
		replay = None
		reselection = None
	else:
		heuristic_pool = config_parts[0].replace('hp:','')
		population = int(config_parts[1].replace('ps:',''))
		burn_in = int(config_parts[2].replace('bi:',''))
		replay = int(config_parts[3].replace('rp:',''))
		reselection = int(config_parts[4].replace('rs:',''))
		reanalysis = int(config_parts[5].replace('ra:',''))
		normalisation = bool(True if config_parts[6].replace('nm:','') == 'True' else False)
		credit = config_parts[7].replace('ct:','')
		discounted_rewards = bool(True if config_parts[8].replace('dr:','') == 'True' else False)

	df = pd.DataFrame([], columns=COLUMNS)

	for event in my_summary_iterator(path):
		step = event.step
		wall_time = event.wall_time

		for data in event.summary.value:
			id = cuid.cuid()
			tag = data.tag

			if re.search(ALLOWED_TAGS, tag):
				value = tensor_util.MakeNdarray(data.tensor)

				row = {
					'id': id,
					'dataset': dataset,
					'heuristic': heuristic,
					'heuristic_pool': heuristic_pool,
					'population': population,
					'burn_in': burn_in,
					'replay': replay,
					'reselection': reselection,
					'reanalysis': reanalysis,
					'normalisation': normalisation,
					'credit': credit,
					'discounted_rewards': discounted_rewards,
					'run': run,
					'step': step,
					'wall_time': wall_time,
					'tag': tag,
					'value': value
				}

				df = df.append(row, ignore_index=True)

	print(data_filepath)
	df.to_csv(data_filepath, index=False, header=False)
		
def export_data():
	global DATA_DIR
	global PATH

	for subdir, dirs, files in os.walk(PATH):
		for file in files:
			FILEPATH = os.path.join(subdir, file)
			if FILEPATH and file.endswith('.v2'):
				print(FILEPATH)
				export_events(FILEPATH)
			
def main():
    parse_arguments()
    print_banner()
    export_data()


if __name__ == "__main__":
    main()
