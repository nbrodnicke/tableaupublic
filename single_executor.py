import subprocess
from pathlib import Path
import os
import sys

plain = False

if len(sys.argv) > 2:
    input_hyper_path = Path(sys.argv[1])
    analysis_directory = sys.argv[2]
    if len(sys.argv) > 3:
        if sys.argv[3] == '-p':
            plain = True
        else:
            print(f'Unvalid parameter: {sys.argv[3]}')

current_directory = Path(__file__).resolve().parent
file_name = os.path.basename(input_hyper_path)
directory_name = os.path.splitext(file_name)[0]

if not plain:
    new_directory_path = Path(os.path.join(current_directory, analysis_directory, directory_name))
    subprocess.run(['python3', 'analyzer.py', input_hyper_path, analysis_directory])
    subprocess.run(['python3', 'visualizer.py', new_directory_path])
else:
    subprocess.run(['python3', 'analyzer.py', input_hyper_path, analysis_directory, '-p'])