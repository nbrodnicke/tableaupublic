SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "BnJGWQK/U7QI3351pvxg38" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "F6Z0eL1yEidKMkLHx+XhGi" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "FH4UiAiRkXzI9VQLqkYQoW" } } */;
SELECT MAX("Extract"."station_lat") AS "max:station_lat:ok",
  MAX("Extract"."station_lng") AS "max:station_lng:ok",
  "Extract"."municipal" AS "municipal"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HWo1uEVfEv+L7qgOx44cnk", "lqctx-batch-query-id": "9" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('N' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KDjETlRt09iL4AqmARZDo/", "lqctx-batch-query-id": "14" } } */;
SELECT SUM('0.0'::double precision) AS "sum:Calculation_3000803201954314:ok"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KrijhN5okOiKCc/DkKYs3W", "lqctx-batch-query-id": "17" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  (CASE WHEN ('N' = 'Y') THEN ('TOP ' || 'STATION MAP') ELSE null::text END) AS "Outgoing Route Title (copy)",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('N' = 'Y') AND ((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DUXm1B+i0wOLkp2fkoKEKh", "lqctx-batch-query-id": "8" } } */;
SELECT (CASE WHEN ('N' = 'Y') THEN ('TOP ' || 'STATION MAP') ELSE null::text END) AS "Calculation_1940828133858180",
  "Extract"."END_STATION" AS "END_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('N' = 'Y'))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Bclrl+4uU+BJSU7xibqE/Q", "lqctx-batch-query-id": "15" } } */;
SELECT SUM("Extract"."num_of_bikes") AS "sum:num_of_bikes:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."name") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Opl9s97HU7cLMA3CmtR0Ng", "lqctx-batch-query-id": "0" } } */;
SELECT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GlcBVl9EEl9K7ZxK68j2jB", "lqctx-batch-query-id": "22" } } */;
SELECT UPPER_FULL("Extract"."station") AS "Calculation_9390802234319998"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NvUCkATmEaPKo4zU9C7i80", "lqctx-batch-query-id": "18" } } */;
SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") AS "tmn:date:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Nwxm4WgC04yKYZ8+lUnoYU", "lqctx-batch-query-id": "20" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM('0.0'::double precision) AS "sum:Calculation_9520804222823259:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('N' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0+hjoVhtUWQJeiKIKF7tGp", "lqctx-batch-query-id": "25" } } */;
SELECT (CASE ("Extract"."STATION_NAME" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) AS "Calculation_3870801010840903",
  ((('http://maps.google.com/maps?q=&layer=c&cbll=' || CAST("Extract"."STATION_LAT" AS TEXT OR NULL)) || ',') || CAST("Extract"."STATION_LNG" AS TEXT OR NULL)) AS "Calculation_5050827144949392",
  "Extract"."STATION_LAT" AS "STATION_LAT",
  "Extract"."STATION_LNG" AS "STATION_LNG",
  "Extract"."STATION_NAME" AS "STATION_NAME"
FROM "Extract"."Extract" "Extract"
WHERE ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30))
GROUP BY 3,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LaOKVgeo0eqL8UiLK7piTd", "lqctx-batch-query-id": "11" } } */;
SELECT UPPER_FULL("Extract"."municipal") AS "Calculation_4810803212143783"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FhAhpiQyEanKhQ4iKeF7Bx", "lqctx-batch-query-id": "13" } } */;
SELECT MIN(TABLEAU.NORMALIZE_DATETIME("Extract"."date")) AS "TEMP(Calculation_0010803215822448)(296412420)(0)"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ("Extract"."subsc_type" = 'Registered'))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EmNFwTl+U8sI9KeAy3T14U", "lqctx-batch-query-id": "5" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  "Extract"."subsc_type" AS "subsc_type",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FKqb6QbuEvKIR/DCUVTj05", "lqctx-batch-query-id": "19" } } */;
SELECT SUM((CASE ("Extract"."DIRECTION" = 'END') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_4430802212455260)(3007965628)(0)",
  COUNT(DISTINCT TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date")) AS "TEMP(Calculation_4430802212455260)(4014195320)(0)",
  SUM((CASE ("Extract"."DIRECTION" = 'START') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_7220802212524064)(2578777489)(0)",
  AVG(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_4540804163306180:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "M+7wsXYKkjiIKqc5q+PBhk", "lqctx-batch-query-id": "28" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  "Extract"."gender" AS "gender",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')) AND ("Extract"."subsc_type" = 'Registered'))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lnh7QTpD0YvJ6LMhxSLVpH", "lqctx-batch-query-id": "16" } } */;
SELECT COUNT(DISTINCT "Extract"."hubway_id") AS "Calculation_7690802213728458",
  COUNT(DISTINCT "Extract"."hubway_id") AS "TEMP(TC_)(3487342581)(0)",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DF9K5OudUiPL09yXtLLdSy", "lqctx-batch-query-id": "12" } } */;
SELECT "Extract"."START_STATION" AS "START_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('N' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O9GP0E3Y03NKrtbC1qLXin", "lqctx-batch-query-id": "7" } } */;
SELECT CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Age (bin)",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01'))) AND (NOT (CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ItGCMsSI0WSKprc+u22vF8", "lqctx-batch-query-id": "26" } } */;
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "Calculation_6640804182804488",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B7bANy5uUKZK9IrSdHdhDI", "lqctx-batch-query-id": "27" } } */;
SELECT (CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) AS "Calculation_0220731224644499"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Calculation_0220731224644499" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MqWRboYwU07JGTH/PcYHaG", "lqctx-batch-query-id": "6" } } */;
SELECT "t0"."Station based on Map View (copy)" AS "Calculation_4410801010513903",
  "t0"."Calculation_4620801002117852" AS "Calculation_4620801002117852",
  (null::text::text) AS "Calculation_7210801010218459",
  "t0"."STATION_LAT" AS "STATION_LAT",
  "t0"."STATION_LNG" AS "STATION_LNG",
  "t0"."Station based on Map View (copy)" AS "Station based on Map View (copy)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(1507842809)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(2594922874)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
  "t0"."TEMP(attr:END_STATION:nk)(1548104342)(0)" AS "TEMP(attr:END_STATION:nk)(1548104342)(0)",
  "t0"."TEMP(attr:END_STATION:nk)(2148915267)(0)" AS "TEMP(attr:END_STATION:nk)(2148915267)(0)",
  "t0"."TEMP(attr:ROUTE:nk)(1320924962)(0)" AS "TEMP(attr:ROUTE:nk)(1320924962)(0)",
  "t0"."TEMP(attr:ROUTE:nk)(2915299511)(0)" AS "TEMP(attr:ROUTE:nk)(2915299511)(0)",
  "t0"."TEMP(attr:START_STATION:nk)(3194509540)(0)" AS "TEMP(attr:START_STATION:nk)(3194509540)(0)",
  "t0"."TEMP(attr:START_STATION:nk)(467338260)(0)" AS "TEMP(attr:START_STATION:nk)(467338260)(0)",
  "t0"."sum:Calculation_3960731233705021:ok" AS "sum:Calculation_3960731233705021:ok",
  "t0"."sum:Calculation_3980808001119024:ok" AS "sum:Calculation_3980808001119024:ok",
  "t0"."sum:Calculation_5610808000357373:ok" AS "sum:Calculation_5610808000357373:ok",
  "t0"."sum:NUM_OF_TRIPS:ok" AS "sum:NUM_OF_TRIPS:ok"
FROM (
  SELECT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
    "Extract"."STATION_LAT" AS "STATION_LAT",
    "Extract"."STATION_LNG" AS "STATION_LNG",
    "Extract"."STATION_NAME" AS "Station based on Map View (copy)",
    MIN((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
    MAX((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
    MAX((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
    MIN((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
    MAX("Extract"."END_STATION") AS "TEMP(attr:END_STATION:nk)(1548104342)(0)",
    MIN("Extract"."END_STATION") AS "TEMP(attr:END_STATION:nk)(2148915267)(0)",
    MIN("Extract"."ROUTE") AS "TEMP(attr:ROUTE:nk)(1320924962)(0)",
    MAX("Extract"."ROUTE") AS "TEMP(attr:ROUTE:nk)(2915299511)(0)",
    MIN("Extract"."START_STATION") AS "TEMP(attr:START_STATION:nk)(3194509540)(0)",
    MAX("Extract"."START_STATION") AS "TEMP(attr:START_STATION:nk)(467338260)(0)",
    SUM((CASE "Extract"."ROW_TYPE" WHEN 'DEPARTURE' THEN '0'::double precision ELSE "Extract"."NUM_OF_TRIPS" END)) AS "sum:Calculation_3960731233705021:ok",
    SUM(TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))) AS "sum:Calculation_3980808001119024:ok",
    SUM(ABS((30 - TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))))) AS "sum:Calculation_5610808000357373:ok",
    SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok",
    (CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) WHEN TRUE THEN 'OVER' WHEN FALSE THEN null::text ELSE NULL END) AS "$temp0_cse"
  FROM "Extract"."Extract" "Extract"
  WHERE ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR (NOT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30))
  GROUP BY 1,
    2,
    3,
    4
) "t0"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LmJZSOJlEsMKzRZ3WpW0TI", "lqctx-batch-query-id": "10" } } */;
SELECT "Extract"."station" AS "station"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "station" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "CvfiOmy6k1dJq4dsrCip/v" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_12_EEC976BF-6427-427A-B88B-73671947F16C_1_Filter' AND r.relkind = 'x';
SELECT SUM(1) AS "TEMP(% of Arrivals (bars) (copy 2))(1055644946)(0)",
  SUM((CASE ("Extract"."DIRECTION" = 'START') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(% of Arrivals (bars) (copy 2))(2578777489)(0)",
  SUM((CASE ("Extract"."DIRECTION" = 'END') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(% of Arrivals (bars) (copy))(3007965628)(0)",
  COUNT(DISTINCT TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date")) AS "TEMP(Calculation_4430802212455260)(4014195320)(0)",
  MIN((((('https://maps.googleapis.com/maps/api/streetview?size=600x400&location=' || CAST("Extract"."station_lat" AS TEXT OR NULL)) || ',') || CAST("Extract"."station_lng" AS TEXT OR NULL)) || '&fov=90&pitch=10')) AS "TEMP(attr:Calculation_0070807232015785:nk)(1860144092)(0)",
  MAX((((('https://maps.googleapis.com/maps/api/streetview?size=600x400&location=' || CAST("Extract"."station_lat" AS TEXT OR NULL)) || ',') || CAST("Extract"."station_lng" AS TEXT OR NULL)) || '&fov=90&pitch=10')) AS "TEMP(attr:Calculation_0070807232015785:nk)(2373587651)(0)",
  MIN(UPPER_FULL("Extract"."municipal")) AS "TEMP(attr:Calculation_4810803212143783:nk)(3070991726)(0)",
  MAX(UPPER_FULL("Extract"."municipal")) AS "TEMP(attr:Calculation_4810803212143783:nk)(3887853035)(0)",
  "Extract"."station" AS "station",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_12_EEC976BF-6427-427A-B88B-73671947F16C_1_Filter" "Filter_1"
WHERE ("Extract"."station" = "Filter_1"."station")
)
GROUP BY 9
/* { "tableau-query-origins": { "query-category": "SecondaryDSInterpreter", "lqctx-root-activity-id": "00X2YTM9kBRLdaDzObSxqA" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')) AND ("Extract"."subsc_type" = 'Registered'))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "B6T5lsJIUqRIw4I64T9ikG" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('South Station - 700 Atlantic Ave.' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "MVxL2NAa003KGt+SsnBPyF" } } */;
SELECT "Extract"."START_STATION" AS "START_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('Y' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0/MHflBGk1eJJsXlc+bhDG", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  (CASE WHEN ('Y' = 'Y') THEN ('TOP ' || 'INCOMING ROUTES') ELSE null::text END) AS "Outgoing Route Title (copy)",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HH6NfxTJkk1J/HDPDC0Aa3", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."ROW_TYPE" AS "Calculation_3870801010840903",
  ((('http://maps.google.com/maps?q=&layer=c&cbll=' || CAST("Extract"."STATION_LAT" AS TEXT OR NULL)) || ',') || CAST("Extract"."STATION_LNG" AS TEXT OR NULL)) AS "Calculation_5050827144949392",
  "Extract"."STATION_LAT" AS "STATION_LAT",
  "Extract"."STATION_LNG" AS "STATION_LNG",
  "Extract"."STATION_NAME" AS "STATION_NAME"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
GROUP BY 1,
  3,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gn4RMSlq0eWKnIKNV2zwKy", "lqctx-batch-query-id": "4" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M2Qbv5piUczJwcVW7v2JKa", "lqctx-batch-query-id": "9" } } */;
SELECT "t0"."Calculation_4410801010513903" AS "Calculation_4410801010513903",
  "t0"."Calculation_4620801002117852" AS "Calculation_4620801002117852",
  "t0"."Calculation_7210801010218459" AS "Calculation_7210801010218459",
  "t0"."STATION_LAT" AS "STATION_LAT",
  "t0"."STATION_LNG" AS "STATION_LNG",
  "t0"."Station based on Map View (copy)" AS "Station based on Map View (copy)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(1507842809)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(2594922874)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:END_STATION:nk)(1548104342)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:END_STATION:nk)(2148915267)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(1320924962)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(2915299511)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:START_STATION:nk)(3194509540)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:START_STATION:nk)(467338260)(0)",
  "t0"."sum:Calculation_3960731233705021:ok" AS "sum:Calculation_3960731233705021:ok",
  "t0"."sum:Calculation_3980808001119024:ok" AS "sum:Calculation_3980808001119024:ok",
  "t0"."sum:Calculation_5610808000357373:ok" AS "sum:Calculation_5610808000357373:ok",
  "t0"."sum:NUM_OF_TRIPS:ok" AS "sum:NUM_OF_TRIPS:ok"
FROM (
  SELECT "Extract"."END_STATION" AS "Calculation_4410801010513903",
    ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
    "Extract"."ROUTE" AS "Calculation_7210801010218459",
    "Extract"."STATION_LAT" AS "STATION_LAT",
    "Extract"."STATION_LNG" AS "STATION_LNG",
    "Extract"."START_STATION" AS "Station based on Map View (copy)",
    MIN((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
    MAX((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
    MAX((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
    MIN((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
    SUM((CASE "Extract"."ROW_TYPE" WHEN 'DEPARTURE' THEN '0'::double precision ELSE "Extract"."NUM_OF_TRIPS" END)) AS "sum:Calculation_3960731233705021:ok",
    SUM(TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))) AS "sum:Calculation_3980808001119024:ok",
    SUM(ABS((30 - TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))))) AS "sum:Calculation_5610808000357373:ok",
    SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok",
    (CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) WHEN TRUE THEN 'OVER' WHEN FALSE THEN null::text ELSE NULL END) AS "$temp0_cse"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR (NOT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
  GROUP BY 1,
    2,
    3,
    4,
    5,
    6
) "t0"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GxbYNGzkkuTLqATFmdUr5L", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM('0.0'::double precision) AS "sum:Calculation_9520804222823259:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('Y' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CHbt8ULA0tZJPQ2+fQKL87", "lqctx-batch-query-id": "10" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  (CASE WHEN (TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL)) IN ('61'::double precision, '64'::double precision, '68'::double precision, '72'::double precision, '96'::double precision)) THEN '61'::double precision ELSE '11149'::double precision END) AS "Duration Whole Minutes (group) 1",
  COUNT(DISTINCT "Extract"."RecordID") AS "ctd:RecordID:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."END_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CMvpW6QBEwmJ22YYklLrlH", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lporzp2W0kiKfw0Vov2d3V", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."ROW_TYPE" AS "Calculation_3870801010840903",
  ((('http://maps.google.com/maps?q=&layer=c&cbll=' || CAST("Extract"."STATION_LAT" AS TEXT OR NULL)) || ',') || CAST("Extract"."STATION_LNG" AS TEXT OR NULL)) AS "Calculation_5050827144949392",
  "Extract"."STATION_LAT" AS "STATION_LAT",
  "Extract"."STATION_LNG" AS "STATION_LNG",
  "Extract"."STATION_NAME" AS "STATION_NAME"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
GROUP BY 1,
  3,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DyJmFPPR0rCJq7bk8lGjw7", "lqctx-batch-query-id": "4" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HoelF+5/0iQLUZqa+qHKC0", "lqctx-batch-query-id": "9" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  (CASE WHEN (TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL)) IN ('61'::double precision, '64'::double precision, '68'::double precision, '72'::double precision, '96'::double precision)) THEN '61'::double precision ELSE '11149'::double precision END) AS "Duration Whole Minutes (group) 1",
  COUNT(DISTINCT "Extract"."RecordID") AS "ctd:RecordID:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B1DdZWjbkcUJmXUla+m3A5", "lqctx-batch-query-id": "8" } } */;
SELECT "t0"."Calculation_4410801010513903" AS "Calculation_4410801010513903",
  "t0"."Calculation_4620801002117852" AS "Calculation_4620801002117852",
  "t0"."Calculation_7210801010218459" AS "Calculation_7210801010218459",
  "t0"."STATION_LAT" AS "STATION_LAT",
  "t0"."STATION_LNG" AS "STATION_LNG",
  "t0"."Station based on Map View (copy)" AS "Station based on Map View (copy)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(1507842809)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(2594922874)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:END_STATION:nk)(1548104342)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:END_STATION:nk)(2148915267)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(1320924962)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(2915299511)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:START_STATION:nk)(3194509540)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:START_STATION:nk)(467338260)(0)",
  "t0"."sum:Calculation_3960731233705021:ok" AS "sum:Calculation_3960731233705021:ok",
  "t0"."sum:Calculation_3980808001119024:ok" AS "sum:Calculation_3980808001119024:ok",
  "t0"."sum:Calculation_5610808000357373:ok" AS "sum:Calculation_5610808000357373:ok",
  "t0"."sum:NUM_OF_TRIPS:ok" AS "sum:NUM_OF_TRIPS:ok"
FROM (
  SELECT "Extract"."START_STATION" AS "Calculation_4410801010513903",
    ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
    "Extract"."ROUTE" AS "Calculation_7210801010218459",
    "Extract"."STATION_LAT" AS "STATION_LAT",
    "Extract"."STATION_LNG" AS "STATION_LNG",
    "Extract"."END_STATION" AS "Station based on Map View (copy)",
    MIN((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
    MAX((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
    MAX((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
    MIN((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
    SUM((CASE "Extract"."ROW_TYPE" WHEN 'DEPARTURE' THEN '0'::double precision ELSE "Extract"."NUM_OF_TRIPS" END)) AS "sum:Calculation_3960731233705021:ok",
    SUM(TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))) AS "sum:Calculation_3980808001119024:ok",
    SUM(ABS((30 - TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))))) AS "sum:Calculation_5610808000357373:ok",
    SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok",
    (CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) WHEN TRUE THEN 'OVER' WHEN FALSE THEN null::text ELSE NULL END) AS "$temp0_cse"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE ("Extract"."START_STATION" = 'South Station - 700 Atlantic Ave.' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR (NOT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
  GROUP BY 1,
    2,
    3,
    4,
    5,
    6
) "t0"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OWzADMID0AXKXjxa4RBgQU", "lqctx-batch-query-id": "3" } } */;
SELECT (CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) AS "Calculation_0220731224644499"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Calculation_0220731224644499" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LydozDSmkEnLj284EXD6Uu", "lqctx-batch-query-id": "6" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  (CASE WHEN ('N' = 'Y') THEN ('TOP ' || 'OUTGOING ROUTES') ELSE null::text END) AS "Outgoing Route Title (copy)",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('N' = 'Y') AND ((CASE ("Extract"."END_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Oax1WESQUSvLp+UZzXEwZf", "lqctx-batch-query-id": "8" } } */;
SELECT SUM((CASE ("Extract"."DIRECTION" = 'END') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_4430802212455260)(3007965628)(0)",
  COUNT(DISTINCT TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date")) AS "TEMP(Calculation_4430802212455260)(4014195320)(0)",
  SUM((CASE ("Extract"."DIRECTION" = 'START') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_7220802212524064)(2578777489)(0)",
  AVG(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_4540804163306180:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "LdrOlOg+0H8LHUvntf+qJB", "lqctx-batch-query-id": "27" } } */;
SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") AS "tmn:date:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Kk7ZwAGvksqIn5xYeWdegC", "lqctx-batch-query-id": "19" } } */;
SELECT MIN(TABLEAU.NORMALIZE_DATETIME("Extract"."date")) AS "TEMP(Calculation_0010803215822448)(296412420)(0)"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ("Extract"."subsc_type" = 'Registered'))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gbb1ctho0AMJcI5pEVjPT5", "lqctx-batch-query-id": "5" } } */;
SELECT UPPER_FULL("Extract"."municipal") AS "Calculation_4810803212143783"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PPW3OZ4Pk9HIBnNeGYyYxd", "lqctx-batch-query-id": "13" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  (CASE WHEN (TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL)) IN ('61'::double precision, '64'::double precision, '68'::double precision, '72'::double precision, '96'::double precision)) THEN '61'::double precision ELSE '11149'::double precision END) AS "Duration Whole Minutes (group) 1",
  COUNT(DISTINCT "Extract"."RecordID") AS "ctd:RecordID:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "F90T8dBg05BI8DBCxchfXO", "lqctx-batch-query-id": "22" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM('0.0'::double precision) AS "sum:Calculation_9520804222823259:ok",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('Y' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ob9JuWd/0CgL0pPkJu4bSY", "lqctx-batch-query-id": "24" } } */;
SELECT SUM("Extract"."num_of_bikes") AS "sum:num_of_bikes:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."name") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JIgI+8T+0mMI3LbjSfnIm3", "lqctx-batch-query-id": "0" } } */;
SELECT COUNT(DISTINCT "Extract"."hubway_id") AS "Calculation_7690802213728458",
  COUNT(DISTINCT "Extract"."hubway_id") AS "TEMP(TC_)(3487342581)(0)",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BVkZ4YMeUOrLv/QaA4GwNa", "lqctx-batch-query-id": "12" } } */;
SELECT CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Age (bin)",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01'))) AND (NOT (CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NXGSNBS6ULZJVOFOq+75YF", "lqctx-batch-query-id": "25" } } */;
SELECT UPPER_FULL("Extract"."station") AS "Calculation_9390802234319998"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JSn9ep9NkX8JkiwFiUngG6", "lqctx-batch-query-id": "17" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  "Extract"."gender" AS "gender",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')) AND ("Extract"."subsc_type" = 'Registered'))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LbgXw+Eek/RLB72zrH4/YN", "lqctx-batch-query-id": "16" } } */;
SELECT (CASE WHEN ('Y' = 'Y') THEN ('TOP ' || 'OUTGOING ROUTES') ELSE null::text END) AS "Calculation_1940828133858180",
  "Extract"."END_STATION" AS "END_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."END_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('Y' = 'Y'))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PQm7cvYhULNIFft3gA+g42", "lqctx-batch-query-id": "15" } } */;
SELECT "Extract"."ROW_TYPE" AS "Calculation_3870801010840903",
  ((('http://maps.google.com/maps?q=&layer=c&cbll=' || CAST("Extract"."STATION_LAT" AS TEXT OR NULL)) || ',') || CAST("Extract"."STATION_LNG" AS TEXT OR NULL)) AS "Calculation_5050827144949392",
  "Extract"."STATION_LAT" AS "STATION_LAT",
  "Extract"."STATION_LNG" AS "STATION_LNG",
  "Extract"."STATION_NAME" AS "STATION_NAME"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
GROUP BY 1,
  3,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Dfjwu3gUUA+Iuvc5OwqNV9", "lqctx-batch-query-id": "11" } } */;
SELECT MAX("Extract"."station_lat") AS "max:station_lat:ok",
  MAX("Extract"."station_lng") AS "max:station_lng:ok",
  "Extract"."municipal" AS "municipal"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y')
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KGbBE9vlUW8L78Kt9XSVXW", "lqctx-batch-query-id": "9" } } */;
SELECT "t0"."Calculation_4410801010513903" AS "Calculation_4410801010513903",
  "t0"."Calculation_4620801002117852" AS "Calculation_4620801002117852",
  "t0"."Calculation_7210801010218459" AS "Calculation_7210801010218459",
  "t0"."STATION_LAT" AS "STATION_LAT",
  "t0"."STATION_LNG" AS "STATION_LNG",
  "t0"."Station based on Map View (copy)" AS "Station based on Map View (copy)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
  "t0"."TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)" AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(1507842809)(0)",
  "t0"."$temp0_cse" AS "TEMP(attr:Calculation_4100801010206008:nk)(2594922874)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
  "t0"."TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)" AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:END_STATION:nk)(1548104342)(0)",
  "t0"."Station based on Map View (copy)" AS "TEMP(attr:END_STATION:nk)(2148915267)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(1320924962)(0)",
  "t0"."Calculation_7210801010218459" AS "TEMP(attr:ROUTE:nk)(2915299511)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:START_STATION:nk)(3194509540)(0)",
  "t0"."Calculation_4410801010513903" AS "TEMP(attr:START_STATION:nk)(467338260)(0)",
  "t0"."sum:Calculation_3960731233705021:ok" AS "sum:Calculation_3960731233705021:ok",
  "t0"."sum:Calculation_3980808001119024:ok" AS "sum:Calculation_3980808001119024:ok",
  "t0"."sum:Calculation_5610808000357373:ok" AS "sum:Calculation_5610808000357373:ok",
  "t0"."sum:NUM_OF_TRIPS:ok" AS "sum:NUM_OF_TRIPS:ok"
FROM (
  SELECT "Extract"."START_STATION" AS "Calculation_4410801010513903",
    ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
    "Extract"."ROUTE" AS "Calculation_7210801010218459",
    "Extract"."STATION_LAT" AS "STATION_LAT",
    "Extract"."STATION_LNG" AS "STATION_LNG",
    "Extract"."END_STATION" AS "Station based on Map View (copy)",
    MIN((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3080994021)(0)",
    MAX((CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) <= 30) WHEN TRUE THEN 'Under' WHEN FALSE THEN null::text ELSE NULL END)) AS "TEMP(attr:30 Min Over (copy):nk)(3504939639)(0)",
    MAX((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(1097759744)(0)",
    MIN((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0))) AS "TEMP(attr:Calculation_6530801000743279:qk)(591082826)(0)",
    SUM((CASE "Extract"."ROW_TYPE" WHEN 'DEPARTURE' THEN '0'::double precision ELSE "Extract"."NUM_OF_TRIPS" END)) AS "sum:Calculation_3960731233705021:ok",
    SUM(TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))) AS "sum:Calculation_3980808001119024:ok",
    SUM(ABS((30 - TABLEAU.ROUND((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)),CAST(0 AS INTEGER OR NULL))))) AS "sum:Calculation_5610808000357373:ok",
    SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok",
    (CASE ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) WHEN TRUE THEN 'OVER' WHEN FALSE THEN null::text ELSE NULL END) AS "$temp0_cse"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND ((((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) IS NULL) OR (NOT ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)) OR ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30)))
  GROUP BY 1,
    2,
    3,
    4,
    5,
    6
) "t0"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GJNBSK+qUILJMFXRik/0ZL", "lqctx-batch-query-id": "10" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  "Extract"."subsc_type" AS "subsc_type",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "E/32DVE6EOFKhxNtLaP9TY", "lqctx-batch-query-id": "18" } } */;
SELECT "Extract"."START_STATION" AS "START_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N') AND ('N' = 'Y'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OVZYuA1Rk+MLUgpph6mJ6b", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."END_STATION" AS "END_STATION",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'N'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N80d37rGk/yLPeI4ds5Rhs", "lqctx-batch-query-id": "14" } } */;
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "Calculation_6640804182804488",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ETA/J41C0ABLVu1EyKPrXZ", "lqctx-batch-query-id": "26" } } */;
SELECT (CASE WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 60) THEN 60 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 56) THEN 58 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 54) THEN 56 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 52) THEN 54 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 50) THEN 52 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 48) THEN 50 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 46) THEN 48 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 44) THEN 46 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 42) THEN 44 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 40) THEN 42 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 38) THEN 40 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 36) THEN 38 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 34) THEN 36 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 32) THEN 34 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 30) THEN 32 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 28) THEN 30 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 26) THEN 28 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 24) THEN 26 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 22) THEN 24 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 20) THEN 22 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 18) THEN 20 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 16) THEN 18 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 14) THEN 16 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 12) THEN 14 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 10) THEN 12 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 8) THEN 10 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 6) THEN 8 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 4) THEN 6 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 2) THEN 4 WHEN ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) >= 0) THEN 2 ELSE null::int END) AS "Calculation_4550804214403779",
  ((CAST("Extract"."AVG_DURATION" AS DOUBLE PRECISION OR NULL) / NULLIF(60,0)) > 30) AS "Calculation_4620801002117852",
  SUM("Extract"."NUM_OF_TRIPS") AS "sum:NUM_OF_TRIPS:ok"
FROM "Extract"."Extract" "Extract"
WHERE (('Y' = 'Y') AND ((CASE ("Extract"."START_STATION" = 'Tremont St / West St' COLLATE "binary") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PJE4oAXMUSOLB39jbL4Sqt", "lqctx-batch-query-id": "23" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')) AND ("Extract"."subsc_type" = 'Registered'))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "GPgXAl860tZLVtRnYieM+r" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2013-12-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "LiRnAaWRkR8LyerkKnzQbl" } } */;
SELECT COUNT(DISTINCT "Extract"."hubway_id") AS "Calculation_7690802213728458",
  COUNT(DISTINCT "Extract"."hubway_id") AS "TEMP(TC_)(3487342581)(0)",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')))
GROUP BY 3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DA9Qcd/I0UbJEzbW1SrooH", "lqctx-batch-query-id": "4" } } */;
SELECT SUM((CASE ("Extract"."DIRECTION" = 'END') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_4430802212455260)(3007965628)(0)",
  COUNT(DISTINCT TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date")) AS "TEMP(Calculation_4430802212455260)(4014195320)(0)",
  SUM((CASE ("Extract"."DIRECTION" = 'START') WHEN TRUE THEN 1 WHEN FALSE THEN null::int ELSE NULL END)) AS "TEMP(Calculation_7220802212524064)(2578777489)(0)",
  AVG(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_4540804163306180:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "LaJHkSFfU/5J+J10cf4MZx", "lqctx-batch-query-id": "11" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  "Extract"."gender" AS "gender",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')) AND ("Extract"."subsc_type" = 'Registered'))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N8sZe6Xo0TpIJsSH5Q/F9k", "lqctx-batch-query-id": "5" } } */;
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "Calculation_6640804182804488",
  CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL) AS "hr:date:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."date"))) AS BIGINT OR NULL)) AS "wd:date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G77llemlkBgKGe23bvBq60", "lqctx-batch-query-id": "10" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  "Extract"."subsc_type" AS "subsc_type",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IlZ9jfTr0e4JA1DpTTT6Fg", "lqctx-batch-query-id": "6" } } */;
SELECT CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Age (bin)",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01'))) AND (NOT (CAST(FLOOR(CAST((CAST(EXTRACT(YEAR FROM CURRENT_DATE) AS BIGINT OR NULL) - COALESCE(CAST("Extract"."birth_date" AS BIGINT OR NULL),CAST(TRUNC(CAST("Extract"."birth_date" AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL))) AS DOUBLE PRECISION OR NULL) / CAST(5 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OsegRzy0kP6Lqql0YjD4D0", "lqctx-batch-query-id": "9" } } */;
SELECT '0.0'::double precision AS "avg:Calculation_0710802235443781:ok",
  SUM(1) AS "cnt:Calculation_0710802235443781:ok",
  SUM('0.0'::double precision) AS "sum:Calculation_0710802235443781:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')) AND ("Extract"."subsc_type" = 'Registered'))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "P+Ro4v7TEW+J7AcCTjXy0O" } } */;
SELECT '1'::double precision AS "avg:Calculation_4190902191617529:ok",
  SUM(1) AS "cnt:Calculation_4190902191617529:ok",
  SUM(1) AS "sum:Calculation_4190902191617529:ok",
  COUNT(DISTINCT "Extract"."hubway_id") AS "usr:Calculation_7690802213728458:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE ('Tremont St / West St' COLLATE "binary" = "Extract"."station") WHEN TRUE THEN 'Y' WHEN FALSE THEN 'N' ELSE NULL END) = 'Y') AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") >= (DATE '2011-06-01')) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."date")), "Extract"."date") <= (DATE '2012-08-01')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "BDtyRadmU7ZKERTQhgWTBY" } } */;
