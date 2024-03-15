import subprocess
import sys
from pathlib import Path
import shutil
import os
import ast

if len(sys.argv) > 2:
    downloads_directory = Path(sys.argv[1])
    analysis_directory = Path(sys.argv[2])
else:
    raise TypeError('Please give as parameters first a path to the directory with the .twbx files you want to analyze, and second the name of the directory where you want your results.')

twbx_files = downloads_directory.glob("*.twbx")
workbook_count = 0

for input_file in twbx_files:
    workbook_count += 1
    print(f'Currently the workbook {input_file} is being analyzed. This is workbook No. {workbook_count}')
    subprocess.run(['python3', 'single_executor.py', input_file, analysis_directory, '-p'])

current_directory = os.path.dirname(os.path.abspath(__file__))
analysis_directory_full_path = os.path.join(current_directory, analysis_directory)

top5_workbooks = subprocess.check_output(['python3', 'multiple_analyzer.py', analysis_directory_full_path], text=True)
top5_workbooks_strlist = ast.literal_eval(top5_workbooks)

for directory_name in os.listdir(analysis_directory_full_path):
    directory_path = os.path.join(analysis_directory_full_path, directory_name)
    if directory_path in top5_workbooks_strlist:
        data_directory = Path(directory_path)
        hyper_files = data_directory.glob("**/*.hyper")
        for hyper_file in hyper_files:
            subprocess.run(["python3", "hyper2csv.py", hyper_file])
        subprocess.run(['python3', 'visualizer.py', directory_path])
    elif os.path.isdir(directory_path) and directory_name != 'Meta_Analysis':
        try:
            shutil.rmtree(directory_path)
        except Exception as e:
            print(f'Error occurred deleting directory {directory_name}: {e}')

print(f'{workbook_count} workbooks have been analyzed.')
