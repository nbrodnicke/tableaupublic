import subprocess
from pathlib import Path
import os
import sys

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])

current_directory = Path(__file__).resolve().parent
file_name = os.path.basename(input_hyper_path)
directory_name = os.path.splitext(file_name)[0]
analysis_directory = "Analysen"
new_directory_path = Path(os.path.join(current_directory, analysis_directory, directory_name))

subprocess.run(["python3", "workbook_analyzer.py", input_hyper_path])
subprocess.run(["python3", "single_workbook_visualizer.py", new_directory_path])