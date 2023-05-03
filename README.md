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

Install our hyperd wrapper.  
This overwrites the hyperd command line arguments to allow data access without specifying the password.
This is insecure in the general case, but for public workbooks that should be fine.

```shell
sudo mv "/Applications/Tableau Public.app/Contents/MacOS/hyper/hyperd" \
        "/Applications/Tableau Public.app/Contents/MacOS/hyper/hyperd.original"
sudo cp hyperd "/Applications/Tableau Public.app/Contents/MacOS/hyper/"
```

## Extracting

To extract the queries from a workbook, open it in the Tableau GUI and click through all tabs.
Then run `extractQueries.sh WORKBOOK_NAME` to extract the queries and the data tables.

The `workbooks.sh` automates this for some interesting public workbooks.
