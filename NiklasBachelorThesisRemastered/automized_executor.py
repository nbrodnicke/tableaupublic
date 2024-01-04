# Dieses Skript analysiert alle Workbooks in einem bestimmten Ordner, es erhält als Parameter den Pfad zum Ordner
# Beispielnutzung: $python3 automized_executor.py '/Users/niklasbrodnicke/Downloads'

import subprocess
import sys
from pathlib import Path
import shutil
import os

if len(sys.argv) > 1:
    downloads_directory = Path(sys.argv[1])
else:
    raise TypeError("Es muss ein Pfad zum gewünschten Ordner angegeben werden, in dem sich die .twbx Files befinden.")

current_directory = Path(__file__).resolve().parent
tmp_directory = current_directory.joinpath("tmp")
twbx_files = downloads_directory.glob("*.twbx")

new_directory_name = 'temp'
new_directory_path = os.path.join(current_directory, new_directory_name)
os.makedirs(new_directory_path)

file_count = 0

for input_file in twbx_files:
    file_count += 1
    print(f"Currently this workbook is being analyzed: {input_file}.")
    terminal_command = f'unzip -d {tmp_directory} -- "{input_file}"'

    subprocess.run(terminal_command, shell=True)
    target_directory = current_directory.joinpath("tmp", "Data")
    hyper_files = target_directory.glob("**/*.hyper")

    for file in hyper_files:
        subprocess.run(["python3", "hyper2csv.py", file])

    with open("temp/anzahl.txt", "a") as output_file:
        output_file.write('\n')

    shutil.rmtree(tmp_directory)

skripte = ['number_analyzer.py', 'datatypes_analyzer.py']
prozesse = []
for skript in skripte:
    prozess = subprocess.Popen(['python3', skript])
    prozesse.append(prozess)

for prozess in prozesse:
    prozess.wait()

os.remove('temp/anzahl.txt')
os.remove('temp/datentypen.txt')
os.rmdir('temp')
os.remove('hyperd.log')

print(f"Es wurden {file_count} Workbooks untersucht.")