# Tableau Public workbook workloads

This repository aims to allow extracting SQL workloads from Tableau Public.

## Setup
The following assumes MacOS.

Install the Tableau Public app:  
http://public.tableau.com/s/download

Install jq to parse the log files postgres to extract the CSV data:
```shell
brew install jq
```

Install python hyper API for conversion scripts:
```shell
pip install --user tableauhyperapi
```

## Extracting Data and Queries

To extract the queries from a workbook, open it in the Tableau GUI and click through all tabs.
The `workbooks.sh` automates this for some interesting public workbooks.

Then, use the `convert.sh` script to convert the Tableau data files to CSVs and dump the schema.

Afterwards, you can load the schema and the data:
```sql
-- create the Extract table that tableau uses
\i ahlyAfrica/excel_direct_42363_552682708300.sql
-- and load the csv data
\i ahlyAfrica/load.sql
```

Now, you can execute queries:
```sql
\i ahlyAfrica/queries.sql
```


## Licenses

Original [public_bi_benchmark](https://github.com/cwida/public_bi_benchmark) by CWI Data Architectures Group.
[Tableau API](https://github.com/tableau/hyper-api-samples) by Tableau.
Everything licensed user MIT.
