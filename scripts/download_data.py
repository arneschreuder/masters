import argparse
import os
import urllib.request

import requests

# Setup arguments
parser = argparse.ArgumentParser(
    description="Downloads and saves all runs' scalar data to file"
)
parser.add_argument(
    "-o",
    "--outputdir",
    required=True,
    type=str,
    help="where to save output files"
)

args = parser.parse_args()
outputdir = args.outputdir


def get_runs_and_tags():
    response = requests.request(
        method="GET",
        url="http://localhost:6006/data/plugin/scalars/tags"
    )
    runs_and_tags = response.json()
    return runs_and_tags


runs_and_tags = get_runs_and_tags()
format = "csv"
directory = outputdir

if not os.path.exists(directory):
    os.makedirs(directory)

for run in runs_and_tags:
    run_encoded = urllib.parse.quote_plus(run)
    run_file = run.replace("/", "-")

    run_tags = runs_and_tags[run]
    for tag in run_tags:
        tag_encoded = urllib.parse.quote_plus(tag)
        tag_file = tag.replace("/", "-")

        url = "http://localhost:6006/data/plugin/scalars/scalars?run={}&tag={}&format={}".format(
            run_encoded, tag_encoded, format
        )
        file = urllib.request.urlopen(url)
        data = file.read()

        with open("data/{}#{}.csv".format(run_file, tag_file), "wb") as output:
            output.write(data)
