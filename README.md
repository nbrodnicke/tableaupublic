# Tableau Public workbook workloads

This repository aims to allow extracting SQL workloads from Tableau Public.

## Setup

Please install all the Python Libraries needed:

os
sys
pathlib
Tableauhyperapi
csv
argparse
subprocess
json
numpy
matplotlib
shutil
ast
glob

You can, for example, install the sys library with this shell command: 
$pip3 install sys

## Analyzing workbooks from Tableau Public

To analyze tableau workbooks, you first need to download them. You can do this by following these steps:
1. Visit this website 'https://public.tableau.com/app/discover'.
2. Click on some workbook that you find interesting to analyze.
3. In the upper right you will find the 'download' tab. Click it.
4. In the options choose 'Tableau Workbook'.

When you have downloaded all the Workbooks from Tableau that you want to analyze, there are 3 python scripts in this directory that you can execute and that will give you your analysis results:

1. single_executor.py :
    This script takes as parameters first the path to the .twbx file you want to analyze, and second the name of the directory where you want your results to be in.
    Example usage: '$python3 "/Users/niklasbrodnicke/Downloads/Soft Skills for the Win_.twbx" "Analysis"'
    After executing this script, you will have your results in a subdirectory of the newly created directory "Analysis". This subdirectory is named according to the name of the workbook 
    analyzed, in this case "Soft Skills for the Win_".
    You can invoke the script with different workbooks and the same directory name, all your result directories will be in the same directory then.

2. executor.py :
    This script allows you to analyze multiple workbook files at once. It takes two parameters: first the path to the directory containing all the workbooks you want to analyze, second the 
    name of the directory where you want your results.
    Example usage: '$python3 "/Users/niklasbrodnicke/Downloads" "Analysis_Multiple"'
    You get the result directories as with single_executor.py in your chosen directory. On top you get a "Meta_Analysis" directory which is containing an analysis not of one workbook, 
    but of all the workbooks that have been analyzed. 

3. meta_executor.py :
    This script is for analyzing huge amounts of workbooks where you don't want a detailed analysis of each and every workbook, but only the meta analysis. It works exactly as executor.py, but it only gives you the result directories of the 5 largest (according to value count) workbooks and the meta analysis of all the workbooks.

## Licenses

Original [public_bi_benchmark](https://github.com/cwida/public_bi_benchmark) by CWI Data Architectures Group.
[Tableau API](https://github.com/tableau/hyper-api-samples) by Tableau.
Everything licensed user MIT.