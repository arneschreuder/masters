
import argparse
import os

from google.cloud import bigquery

CREDENTIALS=os.path.abspath(os.path.join(os.getcwd(), 'credentials/masters.json'))
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = CREDENTIALS
PROJECT_ID="masters-363209"

ANALYSIS = None
ANALYSIS_PATH = None

ANALYSISES = [
	'bhh_burn_in',
	'bhh_credit',
	'bhh_discounted_rewards',
	'bhh_heuristic_pool',
	'bhh_normalise',
	'bhh_population',
	'bhh_reanalysis',
	'bhh_replay',
	'bhh_reselection',
	'standalone'
]

DATA = None

def parse_arguments():
	global ANALYSIS
	global ANALYSIS_PATH

	# Parser
	parser = argparse.ArgumentParser(
			description="Fetch experimental data from BigQuery for analysis"
	)

	# Basic Params
	parser.add_argument(
			"--analysis",
			type=str,
			choices=ANALYSISES,
			required=True,
			help="The analysis output directory"
	)
	args = parser.parse_args()
	ANALYSIS = args.analysis
	ANALYSIS_PATH = os.path.join(os.getcwd(), 'analysis', ANALYSIS)

def print_banner():
    global ANALYSIS_PATH

    print("")
    print("====================================================================")
    print("Fetch experimental data from BigQuery for analysis")
    print("====================================================================")
    print("Output Directory: {}".format(ANALYSIS_PATH))
    print("====================================================================")
    print("")

def create_dirs():
	print("Creating directories")
	os.makedirs('{}'.format(ANALYSIS_PATH), exist_ok=True)

def get_data_from_bq():
	print("Fetching data from BigQuery")
	global DATA
	
	QUERY = 'SELECT * FROM `masters-363209.results.{}`;'.format(ANALYSIS)
	bigquery_client = bigquery.Client(project=PROJECT_ID)
	DATA = bigquery_client.query(QUERY).to_dataframe()

def save_data_to_csv():
	print("Saving data to CSV")
	OUTPUT = os.path.join(ANALYSIS_PATH, '{}.csv'.format(ANALYSIS))
	DATA.to_csv(OUTPUT, index=False)

def main():
	parse_arguments()
	print_banner()
	create_dirs()
	get_data_from_bq()
	save_data_to_csv()

if __name__ == "__main__":
	main()
