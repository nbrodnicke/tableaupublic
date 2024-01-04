COPY "Extract"."Extract" FROM '' (format csv, delimiter '|', null '');
CREATE  TABLE "#Tableau_12_EEC976BF-6427-427A-B88B-73671947F16C_1_Filter" AS
SELECT "Extract"."station" AS "station"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
