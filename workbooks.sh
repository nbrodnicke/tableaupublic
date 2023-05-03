#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

WORKBOOK_URLS=(
"https://public.tableau.com/workbooks/HubwayStationAnalysis-AccentureVizCompEntry2015.twb"
"https://public.tableau.com/workbooks/SearchICD-10-CMPCS.twb"
"https://public.tableau.com/workbooks/ahlyAfrica.twb"
"https://public.tableau.com/workbooks/ParkingPlateSearch.twb"
"https://public.tableau.com/workbooks/-2_17.twb"
"https://public.tableau.com/workbooks/ControledeConstitucionalidadeviaADIDivulgao.twb"
"https://public.tableau.com/workbooks/DCIncomeDistributionTool.twb"
"https://public.tableau.com/workbooks/GN9.twb"
"https://public.tableau.com/workbooks/GN10.twb"
"https://public.tableau.com/workbooks/GN11.twb"
"https://public.tableau.com/workbooks/GraficosPGRKelton.twb"
"https://public.tableau.com/workbooks/MetroHouston.twb"
"https://public.tableau.com/workbooks/Site11CoolingExcursions.twb"
"https://public.tableau.com/workbooks/Venn_0.twb"
)

for url in "${WORKBOOK_URLS[@]}"; do
  FILE=$(echo "$url" | awk -F '/' '{print $5}')
  curl -l "$URL" -o "$FILE"
  open "$FILE"

  read -n 1 -s -r -p "Please open all tabs in the tableau GUI to execute the queries"

  ./extractQueries.sh "$FILE"
done
