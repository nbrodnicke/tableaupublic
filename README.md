# Tableau Public workbook workloads

This repository aims to allow extracting SQL workloads from Tableau Public.

## Setup
The following assumes MacOS.

Install the Tableau Public app:  
http://public.tableau.com/s/download

Install jq to parse the log files postgres to extract the CSV data:
```shell
brew install postgresql@15
brew install jq
```

Install python hyper API for conversion scripts:
```shell
pip install --user tableauhyperapi
```

Install our hyperd wrapper.  
This overwrites the hyperd command line arguments to allow data access without specifying the password.
This is insecure in the general case, but for public workbooks that should be fine.

```shell
sudo mv "/Applications/Tableau Public.app/Contents/MacOS/hyper/hyperd" \
        "/Applications/Tableau Public.app/Contents/MacOS/hyper/hyperd.original"
sudo cp hyperd "/Applications/Tableau Public.app/Contents/MacOS/hyper/"
```

## Extracting Data and Queries

To extract the queries from a workbook, open it in the Tableau GUI and click through all tabs.
The `workbooks.sh` automates this for some interesting public workbooks.

Then, use the python scripts to convert the Tableau data files to CSVs and dump the schema.

Load into umbra:
```sql
create schema "Extract";
-- create the table with the schema
\i ahlyAfrica/excel_direct_42363_552682708300.sql
-- and load the csv data
copy "Extract"."Extract" from 'ahlyAfrica/excel_direct_42363_552682708300.csv' delimiter '|' null '';
```


## Licenses

Original [public_bi_benchmark](https://github.com/cwida/public_bi_benchmark) by CWI Data Architectures Group.
[Tableau API](https://github.com/tableau/hyper-api-samples) by Tableau.
Everything licensed user MIT.
