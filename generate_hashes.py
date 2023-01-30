import glob
import os
import sys
from hashlib import sha256
from json import dump

RESULTS = {}


def add_file_hash(file_path):
    with open(file_path, "rb") as f:
        RESULTS[file_path] = sha256(f.read()).hexdigest()


if __name__ == "__main__":
    directory = sys.argv[1]
    add_file_hash(directory + ".tar.gz")
    for file in glob.glob(directory + "/**/*", recursive=True):
        if os.path.isfile(file):
            add_file_hash(file)
    with open(directory + ".json", "w") as f_results:
        dump(RESULTS, f_results, indent=4)
