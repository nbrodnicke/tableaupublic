import subprocess
import sys
from pathlib import Path
import shutil
import os

if len(sys.argv) > 2:
    downloads_directory = Path(sys.argv[1])
    analysis_directory = sys.argv[2]
else:
    raise TypeError("Please give as parameters first the path to the directory with the .twbx Files you want to analyze, and second the name of the directory for your results.")

twbx_files = downloads_directory.glob("*.twbx")

for input_file in twbx_files:
    subprocess.run(["python3", "single_executor.py", input_file, analysis_directory])

current_directory = os.path.dirname(os.path.abspath(__file__))
analysis_directory_full_path = os.path.join(current_directory, analysis_directory)

subprocess.run(["python3", "multiple_analyzer.py", analysis_directory_full_path])