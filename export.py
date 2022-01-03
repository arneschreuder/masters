

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
	'heuristic_type',
	'heuristic',
	'is_baseline',
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
DATA_DIR = None
PATH = None

def parse_arguments():
	global DATA_DIR
	global PATH

	# Parser
	parser = argparse.ArgumentParser(
			description="Export TensorBoard data to csv"
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
    print("Export TensorBoard data to csv")
    print("====================================================================")
    print("Data Directory: {}".format(DATA_DIR))
    print("====================================================================")
    print("")

def my_summary_iterator(path):
	for r in tf_record.tf_record_iterator(path):
		yield event_pb2.Event.FromString(r)

def export_events(path):
	global COLUMNS

	directory = os.path.abspath(os.path.join(path, os.pardir))
	filename = os.path.basename(path)
	data_filepath = "{}/{}.csv".format(directory, filename)

	if os.path.isfile(data_filepath):
		print("Skipped: {}".format(data_filepath))
		return

	experiment = str(directory).replace(os.getcwd() + '/data/', '')
	experiment_parts = experiment.split('/')
	dataset = experiment_parts[0]
	heuristic = experiment_parts[1]
	config = experiment_parts[2]
	config_parts = config.split('_')
	run = experiment_parts[3]

	# Extract parameters
	if len(config_parts) == 1:
		heuristic_type = 'standalone'
		is_baseline = None
		burn_in = None
		credit = None
		discounted_rewards = None
		normalisation = None
		population = None
		reanalysis = None
		replay = None
		reselection = None
	else:
		heuristic_type = 'bhh'
		is_baseline = True if config == 'ps:5_bi:0_rp:10_rs:1_ra:1_nm:False_ct:gbest_dr:True' else False 
		population = int(config_parts[0].replace('ps:',''))
		burn_in = int(config_parts[1].replace('bi:',''))
		replay = int(config_parts[2].replace('rp:',''))
		reselection = int(config_parts[3].replace('rs:',''))
		reanalysis = int(config_parts[4].replace('ra:',''))
		normalisation = bool(True if config_parts[5].replace('nm:','') == 'True' else False)
		credit = config_parts[6].replace('ct:','')
		discounted_rewards = bool(True if config_parts[7].replace('dr:','') == 'True' else False)

	df = pd.DataFrame([], columns=COLUMNS)

	for event in my_summary_iterator(path):
		step = event.step
		wall_time = event.wall_time

		for data in event.summary.value:
			id = cuid.cuid()
			tag = data.tag
			value = tensor_util.MakeNdarray(data.tensor)

			row = {
				'id': id,
				'dataset': dataset,
				'heuristic_type': heuristic_type,
				'heuristic': heuristic,
				'is_baseline': is_baseline,
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
			
			if not re.search('gbest_dr:True\/1[0-9]+[0-9]+', str(FILEPATH)) and file.endswith('.v2'):
				export_events(FILEPATH)
			
def main():
    parse_arguments()
    print_banner()
    export_data()


if __name__ == "__main__":
    main()
