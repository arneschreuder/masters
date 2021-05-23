import argparse
import os

import pandas as pd

# Setup arguments
parser = argparse.ArgumentParser(
    description='Joins together multiple runs by tag'
)
parser.add_argument(
    '-d',
    '--directory',
    type=str,
    required=True,
    help='path to directory with data'
)
parser.add_argument(
    '-t',
    '--tag',
    type=str,
    required=True,
    help='tag/metric'
)

args = parser.parse_args()
dataframes = []

# PATH
input = os.path.join(os.getcwd(), args.directory)
output = os.path.join(os.getcwd(), args.directory)

for folder, subfolder, filenames in os.walk(input):
    for filename in filenames:
        path = os.path.join(folder, filename)
        _, ext = os.path.splitext(filename)

        filename_parts = filename.split('#')
        run = filename_parts[0]

        if ext == ".csv":
            if args.tag in filename:
                data = pd.read_csv(path)
                data["Run"] = run
                dataframes.append(data[["Run", "Step", "Value", "Wall time"]])


data = pd.concat(dataframes, axis=0, ignore_index=True)
data.to_csv("{}/{}#{}.csv".format(output, "all", args.tag), index=False)
