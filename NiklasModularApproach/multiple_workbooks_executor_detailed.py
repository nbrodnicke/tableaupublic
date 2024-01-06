import subprocess
import sys
from pathlib import Path
import shutil
import os

if len(sys.argv) > 1:
    downloads_directory = Path(sys.argv[1])
else:
    raise TypeError("Es muss ein Pfad zum gewünschten Ordner angegeben werden, in dem sich die .twbx Files befinden.")

twbx_files = downloads_directory.glob("*.twbx")

for input_file in twbx_files:
    subprocess.run(["python3", "single_workbook_executor.py", input_file])