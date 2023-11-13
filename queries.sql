SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "H/oHPpVtURhJ221TSuyAu0" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "H/oHPpVtURhJ221TSuyAu0" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "NxyzIanFUWIIioktbOk9hS" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "NxyzIanFUWIIioktbOk9hS" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Calculation_2082633360308736021" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Mi4ygySIkW+K+nDhzoDJ45", "lqctx-batch-query-id": "0" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Calculation_2082633360308736021" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Mi4ygySIkW+K+nDhzoDJ45", "lqctx-batch-query-id": "0" } } */
SELECT "Extract"."Registration" AS "Registration"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
LIMIT 64
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "KVh+hZ0WEJCIFvVcJCItT4" } } */
SELECT "Extract"."Registration" AS "Registration"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
LIMIT 64
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "KVh+hZ0WEJCIFvVcJCItT4" } } */
SELECT COUNT("Extract"."Registration") AS "cnt:Registration:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Purchase Date")) AS BIGINT OR NULL) AS "yr:Purchase Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND (NOT (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) IS NULL)))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D+sLByUNkoXJJAhWwtUxHi", "lqctx-batch-query-id": "12" } } */
SELECT SUM("Extract"."Bought For") AS "TEMP(TC_)(1564061952)(0)",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "TEMP(TC_)(2470052658)(0)",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "tyr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "CSr7162m0tkKu0LZ3FXAt1", "lqctx-batch-query-id": "21" } } */
SELECT COUNT("Extract"."Registration") AS "TEMP(TC_)(2358810839)(0)",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Purchase Date")), "Extract"."Purchase Date") AS "tyr:Purchase Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "F0F5jUyokCvL0k2Ig+1CQR", "lqctx-batch-query-id": "22" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
  (''::text) AS "Calculation_2082633360690294810",
  SUM((CASE WHEN (CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL) = "t0"."__measure__0") THEN "Extract"."Bought For" ELSE null::double precision END)) AS "TEMP(Calculation_2082633360318062616)(1282632443)(0)",
  SUM((CASE WHEN (CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL) = ("t0"."__measure__0" - 1)) THEN "Extract"."Bought For" ELSE null::double precision END)) AS "TEMP(Calculation_2082633360318062616)(3384277651)(0)",
  (''::text) AS "TEMP(attr:Drill Down 1 (copy)_2082633360691359771:nk)(1627489121)(0)",
  (''::text) AS "TEMP(attr:Drill Down 1 (copy)_2082633360691359771:nk)(2697872999)(0)",
  MIN("Extract"."Model") AS "TEMP(attr:Model:nk)(2588546795)(0)",
  MAX("Extract"."Model") AS "TEMP(attr:Model:nk)(3229299531)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL)) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "KVh+hZ0WEJCIFvVcJCItT4", "lqctx-batch-query-id": "18" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
  (NOT ("t0"."$temp1_output" IS NULL)) AS "io:Colour Set:nk",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "tyr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Extract"."Fuel Type" AS "Fuel Type",
    1 AS "$temp1_output"
  FROM "Extract"."Extract" "Extract"
  WHERE ("Extract"."Fuel Type" = 'Electric')
  LIMIT 1
) "t0" ON ("Extract"."Fuel Type" = "t0"."Fuel Type")
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KaXoHro2k0DLJ22/Lt1+O9", "lqctx-batch-query-id": "1" } } */
SELECT COUNT("Extract"."Registration") AS "TEMP(TC_)(2358810839)(0)",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Purchase Date")), "Extract"."Purchase Date") AS "tyr:Purchase Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "F0F5jUyokCvL0k2Ig+1CQR", "lqctx-batch-query-id": "22" } } */
SELECT "Extract"."Registration" AS "Registration",
  (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Sold Well (copy)_2169046178871697408",
  MIN((CASE WHEN ("Extract"."Milage" < 20000) THEN '0-19999' WHEN ("Extract"."Milage" < 40000) THEN '20000-39999' WHEN ("Extract"."Milage" < 60000) THEN '40000-59999' WHEN ("Extract"."Milage" < 80000) THEN '60000-79999' WHEN ("Extract"."Milage" < 100000) THEN '80000-99999' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360310767638:nk)(3297652736)(0)",
  MAX((CASE WHEN ("Extract"."Milage" < 20000) THEN '0-19999' WHEN ("Extract"."Milage" < 40000) THEN '20000-39999' WHEN ("Extract"."Milage" < 60000) THEN '40000-59999' WHEN ("Extract"."Milage" < 80000) THEN '60000-79999' WHEN ("Extract"."Milage" < 100000) THEN '80000-99999' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360310767638:nk)(549620405)(0)",
  MAX((CASE WHEN ("Extract"."Registration Year" > 2009) THEN '2010-2023' WHEN ("Extract"."Registration Year" > 1999) THEN '2000-2009' WHEN ("Extract"."Registration Year" > 1989) THEN '1990-1999' WHEN ("Extract"."Registration Year" > 1979) THEN '1980-1989' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360316551191:nk)(2594455804)(0)",
  MIN((CASE WHEN ("Extract"."Registration Year" > 2009) THEN '2010-2023' WHEN ("Extract"."Registration Year" > 1999) THEN '2000-2009' WHEN ("Extract"."Registration Year" > 1989) THEN '1990-1999' WHEN ("Extract"."Registration Year" > 1979) THEN '1980-1989' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360316551191:nk)(2861909136)(0)",
  MIN("Extract"."Car Type") AS "TEMP(attr:Car Type:nk)(1374655916)(0)",
  MAX("Extract"."Car Type") AS "TEMP(attr:Car Type:nk)(4261521743)(0)",
  MIN("Extract"."Engine Size (L") AS "TEMP(attr:Engine Size (L:nk)(1310504793)(0)",
  MAX("Extract"."Engine Size (L") AS "TEMP(attr:Engine Size (L:nk)(3297120900)(0)",
  MAX("Extract"."Fuel Type") AS "TEMP(attr:Fuel Type:nk)(1557859336)(0)",
  MIN("Extract"."Fuel Type") AS "TEMP(attr:Fuel Type:nk)(996968261)(0)",
  MAX("Extract"."Make") AS "TEMP(attr:Make:nk)(1024079440)(0)",
  MIN("Extract"."Make") AS "TEMP(attr:Make:nk)(29215411)(0)",
  MIN("Extract"."Model") AS "TEMP(attr:Model:nk)(2588546795)(0)",
  MAX("Extract"."Model") AS "TEMP(attr:Model:nk)(3229299531)(0)",
  AVG(CAST((CAST(("Extract"."Sale Price" - "Extract"."retail amountGBP") AS DOUBLE PRECISION OR NULL) / NULLIF("Extract"."retail amountGBP",0)) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_2082633360240754703:ok",
  AVG(CAST((CASE WHEN ("Extract"."Sold" = 'No') THEN TABLEAU.DATE_DIFF('DAY', TABLEAU.DATE('2023-12-31'), "Extract"."Purchase Date") ELSE TABLEAU.DATE_DIFF('DAY', "Extract"."Sale date", "Extract"."Purchase Date") END) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_2082633360240926736:ok",
  AVG(CAST("Extract"."Sale Price" AS DOUBLE PRECISION OR NULL)) AS "avg:Sale Price:ok",
  AVG(CAST("Extract"."retail amountGBP" AS DOUBLE PRECISION OR NULL)) AS "avg:retail amountGBP:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0bjsYcHW0SrLLYsFELSxYB", "lqctx-batch-query-id": "4" } } */
SELECT COUNT("Extract"."Registration") AS "cnt:Registration:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Purchase Date")) AS BIGINT OR NULL) AS "yr:Purchase Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND (NOT (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) IS NULL)))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D+sLByUNkoXJJAhWwtUxHi", "lqctx-batch-query-id": "12" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
  (''::text) AS "Calculation_2082633360690294810",
  SUM((CASE WHEN (CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL) = "t0"."__measure__0") THEN "Extract"."Bought For" ELSE null::double precision END)) AS "TEMP(Calculation_2082633360318062616)(1282632443)(0)",
  SUM((CASE WHEN (CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL) = ("t0"."__measure__0" - 1)) THEN "Extract"."Bought For" ELSE null::double precision END)) AS "TEMP(Calculation_2082633360318062616)(3384277651)(0)",
  (''::text) AS "TEMP(attr:Drill Down 1 (copy)_2082633360691359771:nk)(1627489121)(0)",
  (''::text) AS "TEMP(attr:Drill Down 1 (copy)_2082633360691359771:nk)(2697872999)(0)",
  MIN("Extract"."Model") AS "TEMP(attr:Model:nk)(2588546795)(0)",
  MAX("Extract"."Model") AS "TEMP(attr:Model:nk)(3229299531)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(CAST(EXTRACT(YEAR FROM "Extract"."Sale date") AS BIGINT OR NULL)) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "KVh+hZ0WEJCIFvVcJCItT4", "lqctx-batch-query-id": "18" } } */
SELECT "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
  (NOT ("t0"."$temp1_output" IS NULL)) AS "io:Colour Set:nk",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "tyr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Extract"."Fuel Type" AS "Fuel Type",
    1 AS "$temp1_output"
  FROM "Extract"."Extract" "Extract"
  WHERE ("Extract"."Fuel Type" = 'Electric')
  LIMIT 1
) "t0" ON ("Extract"."Fuel Type" = "t0"."Fuel Type")
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KaXoHro2k0DLJ22/Lt1+O9", "lqctx-batch-query-id": "1" } } */
SELECT "t1"."__measure__4" AS "usr:Calculation_2082633360232312832:ok",
  "t1"."__measure__5" AS "usr:Max Profit (copy)_2082633360233308163:ok",
  "t4"."__measure__12" AS "usr:Max Stock Number (copy)_2082633360236130312:ok",
  "t4"."__measure__10" AS "usr:Min Profit (copy)_2082633360234643460:ok",
  "t1"."__measure__0" AS "usr:Min Profit (copy)_2082633360235712517:ok",
  "t1"."__measure__1" AS "usr:Min Stock Number (copy)_2082633360236019719:ok",
  "t1"."__measure__2" AS "usr:Min Stock Number (copy)_2082633360236568585:ok",
  "t4"."__measure__11" AS "usr:Min Stock Value (copy) (copy)_2082633360236662795:ok",
  "t1"."__measure__3" AS "usr:Min Stock Value (copy)_2082633360236654602:ok"
FROM (
  SELECT MIN("t0"."__measure__9") AS "__measure__0",
    MAX("t0"."__measure__9") AS "__measure__1",
    MIN("t0"."__measure__7") AS "__measure__2",
    MAX("t0"."__measure__7") AS "__measure__3",
    MAX("t0"."__measure__8") AS "__measure__4",
    MIN("t0"."__measure__8") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6",
      COUNT("Extract"."Registration") AS "__measure__9",
      SUM("Extract"."Bought For") AS "__measure__7",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__8"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__6")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__9" AS DOUBLE PRECISION OR NULL)) AS "__measure__12",
    AVG(CAST("t3"."__measure__8" AS DOUBLE PRECISION OR NULL)) AS "__measure__10",
    AVG(CAST("t3"."__measure__7" AS DOUBLE PRECISION OR NULL)) AS "__measure__11"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__8",
      SUM("Extract"."Bought For") AS "__measure__7",
      COUNT("Extract"."Registration") AS "__measure__9"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__6" IS NOT DISTINCT FROM "t3"."__dimension__6")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "MPMPoKl4kPiKB2UNPJGAZ3", "lqctx-batch-query-id": "19" } } */
SELECT SUM("Extract"."Bought For") AS "sum:Bought For:ok",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) AS "yr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND (NOT (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) IS NULL)))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "CXZ0sqf7kobLR46p3q/jDp", "lqctx-batch-query-id": "20" } } */
SELECT "Extract"."Registration" AS "Registration",
  (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Sold Well (copy)_2169046178871697408",
  MIN((CASE WHEN ("Extract"."Milage" < 20000) THEN '0-19999' WHEN ("Extract"."Milage" < 40000) THEN '20000-39999' WHEN ("Extract"."Milage" < 60000) THEN '40000-59999' WHEN ("Extract"."Milage" < 80000) THEN '60000-79999' WHEN ("Extract"."Milage" < 100000) THEN '80000-99999' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360310767638:nk)(3297652736)(0)",
  MAX((CASE WHEN ("Extract"."Milage" < 20000) THEN '0-19999' WHEN ("Extract"."Milage" < 40000) THEN '20000-39999' WHEN ("Extract"."Milage" < 60000) THEN '40000-59999' WHEN ("Extract"."Milage" < 80000) THEN '60000-79999' WHEN ("Extract"."Milage" < 100000) THEN '80000-99999' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360310767638:nk)(549620405)(0)",
  MAX((CASE WHEN ("Extract"."Registration Year" > 2009) THEN '2010-2023' WHEN ("Extract"."Registration Year" > 1999) THEN '2000-2009' WHEN ("Extract"."Registration Year" > 1989) THEN '1990-1999' WHEN ("Extract"."Registration Year" > 1979) THEN '1980-1989' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360316551191:nk)(2594455804)(0)",
  MIN((CASE WHEN ("Extract"."Registration Year" > 2009) THEN '2010-2023' WHEN ("Extract"."Registration Year" > 1999) THEN '2000-2009' WHEN ("Extract"."Registration Year" > 1989) THEN '1990-1999' WHEN ("Extract"."Registration Year" > 1979) THEN '1980-1989' ELSE null::text END)) AS "TEMP(attr:Calculation_2082633360316551191:nk)(2861909136)(0)",
  MIN("Extract"."Car Type") AS "TEMP(attr:Car Type:nk)(1374655916)(0)",
  MAX("Extract"."Car Type") AS "TEMP(attr:Car Type:nk)(4261521743)(0)",
  MIN("Extract"."Engine Size (L") AS "TEMP(attr:Engine Size (L:nk)(1310504793)(0)",
  MAX("Extract"."Engine Size (L") AS "TEMP(attr:Engine Size (L:nk)(3297120900)(0)",
  MAX("Extract"."Fuel Type") AS "TEMP(attr:Fuel Type:nk)(1557859336)(0)",
  MIN("Extract"."Fuel Type") AS "TEMP(attr:Fuel Type:nk)(996968261)(0)",
  MAX("Extract"."Make") AS "TEMP(attr:Make:nk)(1024079440)(0)",
  MIN("Extract"."Make") AS "TEMP(attr:Make:nk)(29215411)(0)",
  MIN("Extract"."Model") AS "TEMP(attr:Model:nk)(2588546795)(0)",
  MAX("Extract"."Model") AS "TEMP(attr:Model:nk)(3229299531)(0)",
  AVG(CAST((CAST(("Extract"."Sale Price" - "Extract"."retail amountGBP") AS DOUBLE PRECISION OR NULL) / NULLIF("Extract"."retail amountGBP",0)) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_2082633360240754703:ok",
  AVG(CAST((CASE WHEN ("Extract"."Sold" = 'No') THEN TABLEAU.DATE_DIFF('DAY', TABLEAU.DATE('2023-12-31'), "Extract"."Purchase Date") ELSE TABLEAU.DATE_DIFF('DAY', "Extract"."Sale date", "Extract"."Purchase Date") END) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_2082633360240926736:ok",
  AVG(CAST("Extract"."Sale Price" AS DOUBLE PRECISION OR NULL)) AS "avg:Sale Price:ok",
  AVG(CAST("Extract"."retail amountGBP" AS DOUBLE PRECISION OR NULL)) AS "avg:retail amountGBP:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0bjsYcHW0SrLLYsFELSxYB", "lqctx-batch-query-id": "4" } } */
SELECT SUM("Extract"."Bought For") AS "TEMP(TC_)(1564061952)(0)",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "TEMP(TC_)(2470052658)(0)",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "tyr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "CSr7162m0tkKu0LZ3FXAt1", "lqctx-batch-query-id": "21" } } */
SELECT SUM("Extract"."Bought For") AS "sum:Bought For:ok",
  SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) AS "yr:Sale date:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND (NOT (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Sale date")) AS BIGINT OR NULL) IS NULL)))
GROUP BY 3
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "CXZ0sqf7kobLR46p3q/jDp", "lqctx-batch-query-id": "20" } } */
SELECT "t1"."__measure__4" AS "usr:Calculation_2082633360232312832:ok",
  "t1"."__measure__5" AS "usr:Max Profit (copy)_2082633360233308163:ok",
  "t4"."__measure__12" AS "usr:Max Stock Number (copy)_2082633360236130312:ok",
  "t4"."__measure__10" AS "usr:Min Profit (copy)_2082633360234643460:ok",
  "t1"."__measure__0" AS "usr:Min Profit (copy)_2082633360235712517:ok",
  "t1"."__measure__1" AS "usr:Min Stock Number (copy)_2082633360236019719:ok",
  "t1"."__measure__2" AS "usr:Min Stock Number (copy)_2082633360236568585:ok",
  "t4"."__measure__11" AS "usr:Min Stock Value (copy) (copy)_2082633360236662795:ok",
  "t1"."__measure__3" AS "usr:Min Stock Value (copy)_2082633360236654602:ok"
FROM (
  SELECT MIN("t0"."__measure__9") AS "__measure__0",
    MAX("t0"."__measure__9") AS "__measure__1",
    MIN("t0"."__measure__7") AS "__measure__2",
    MAX("t0"."__measure__7") AS "__measure__3",
    MAX("t0"."__measure__8") AS "__measure__4",
    MIN("t0"."__measure__8") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6",
      COUNT("Extract"."Registration") AS "__measure__9",
      SUM("Extract"."Bought For") AS "__measure__7",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__8"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__6")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__9" AS DOUBLE PRECISION OR NULL)) AS "__measure__12",
    AVG(CAST("t3"."__measure__8" AS DOUBLE PRECISION OR NULL)) AS "__measure__10",
    AVG(CAST("t3"."__measure__7" AS DOUBLE PRECISION OR NULL)) AS "__measure__11"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__6",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__8",
      SUM("Extract"."Bought For") AS "__measure__7",
      COUNT("Extract"."Registration") AS "__measure__9"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__6" IS NOT DISTINCT FROM "t3"."__dimension__6")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "MPMPoKl4kPiKB2UNPJGAZ3", "lqctx-batch-query-id": "19" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'pg_temp'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'pg_temp'
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND r.relkind = 'x'
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND r.relkind = 'x'
SELECT hyper_database_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'), hyper_schema_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter')
SELECT hyper_database_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'), hyper_schema_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter')
SELECT a.attname, a.atttypid, a.atttypmod, a.attnotnull, coll.collname, a.attnum, cl.relpersistence FROM pg_catalog.pg_attribute a JOIN pg_catalog.pg_class cl ON a.attrelid = cl.oid JOIN pg_catalog.pg_namespace n ON n.oid = cl.relnamespace LEFT JOIN  pg_catalog.pg_collation coll ON a.attcollation = coll.oid WHERE a.attnum > 0 AND NOT a.attisdropped AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND n.nspname = 'pg_temp' ORDER BY a.attnum
SELECT a.attname, a.atttypid, a.atttypmod, a.attnotnull, coll.collname, a.attnum, cl.relpersistence FROM pg_catalog.pg_attribute a JOIN pg_catalog.pg_class cl ON a.attrelid = cl.oid JOIN pg_catalog.pg_namespace n ON n.oid = cl.relnamespace LEFT JOIN  pg_catalog.pg_collation coll ON a.attcollation = coll.oid WHERE a.attnum > 0 AND NOT a.attisdropped AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND n.nspname = 'pg_temp' ORDER BY a.attnum
SELECT hyper_database_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'), hyper_schema_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter')
SELECT hyper_database_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'), hyper_schema_of_table('#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter')
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND s.schemaname = 'pg_temp'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'
   AND cl.relnamespace = 42
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter' AND s.schemaname = 'pg_temp'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'
   AND cl.relnamespace = 42
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'
   AND cl.relnamespace = 42
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = '#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter'
   AND cl.relnamespace = 42
SELECT "t0"."Calculation_2082633360258269204" AS "Calculation_2082633360258269204",
  "t0"."Calculation_2082633360308736021" AS "Calculation_2082633360308736021",
  "t0"."Car Type" AS "Car Type",
  "t0"."Model" AS "Model",
  "t0"."Registration" AS "Registration",
  "t0"."TEMP(Calculation_1361494470883127296)(1516216135)(0)" AS "TEMP(Calculation_1361494470883127296)(1516216135)(0)",
  "t3"."__measure__3" AS "TEMP(Calculation_1361494470883127296)(3207739184)(0)",
  "t3"."__measure__4" AS "avg:Calculation_2082633360251293713:ok",
  "t0"."sum:Calculation_231372438402052096:ok" AS "sum:Calculation_231372438402052096:ok",
  "t0"."sum:partExchange amountGBP:ok" AS "sum:partExchange amountGBP:ok"
FROM (
  SELECT (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Calculation_2082633360258269204",
    "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
    "Extract"."Car Type" AS "Car Type",
    "Extract"."Model" AS "Model",
    "Extract"."Registration" AS "Registration",
    SUM("Extract"."Sale Price") AS "TEMP(Calculation_1361494470883127296)(1516216135)(0)",
    SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
    SUM("Extract"."partExchange amountGBP") AS "sum:partExchange amountGBP:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
  SELECT 1 AS "one"
  FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_1"
  WHERE ("Extract"."Registration" = "Filter_1"."Registration")
  )
  GROUP BY 1,
    2,
    3,
    4,
    5
) "t0"
  INNER JOIN (
  SELECT "t1"."Calculation_2082633360258269204" AS "Calculation_2082633360258269204",
    "t1"."Calculation_2082633360308736021" AS "Calculation_2082633360308736021",
    "t1"."Car Type" AS "Car Type",
    "t1"."Model" AS "Model",
    "t1"."Registration" AS "Registration",
    SUM("t2"."__measure__2") AS "__measure__3",
    AVG(CAST("t2"."__measure__2" AS DOUBLE PRECISION OR NULL)) AS "__measure__4"
  FROM (
    SELECT (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Calculation_2082633360258269204",
      "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
      "Extract"."Car Type" AS "Car Type",
      "Extract"."Make" AS "Make",
      "Extract"."Model" AS "Model",
      "Extract"."Registration" AS "Registration"
    FROM "Extract"."Extract" "Extract"
    WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
    SELECT 1 AS "one"
    FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_2"
    WHERE ("Extract"."Registration" = "Filter_2"."Registration")
    )
    GROUP BY 1,
      2,
      3,
      4,
      5,
      6
  ) "t1"
    INNER JOIN (
    SELECT "Extract"."Make" AS "Make",
      AVG(CAST("Extract"."Sale Price" AS DOUBLE PRECISION OR NULL)) AS "__measure__2"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t2" ON ("t1"."Make" IS NOT DISTINCT FROM "t2"."Make")
  GROUP BY 1,
    2,
    3,
    4,
    5
) "t3" ON (("t0"."Calculation_2082633360258269204" = "t3"."Calculation_2082633360258269204") AND ("t0"."Calculation_2082633360308736021" IS NOT DISTINCT FROM "t3"."Calculation_2082633360308736021") AND ("t0"."Car Type" IS NOT DISTINCT FROM "t3"."Car Type") AND ("t0"."Model" IS NOT DISTINCT FROM "t3"."Model") AND ("t0"."Registration" IS NOT DISTINCT FROM "t3"."Registration"))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Jpa3jIxCkTBIoEISbX5/cU", "lqctx-batch-query-id": "5" } } */
SELECT "t0"."Calculation_2082633360258269204" AS "Calculation_2082633360258269204",
  "t0"."Calculation_2082633360308736021" AS "Calculation_2082633360308736021",
  "t0"."Car Type" AS "Car Type",
  "t0"."Model" AS "Model",
  "t0"."Registration" AS "Registration",
  "t0"."TEMP(Calculation_1361494470883127296)(1516216135)(0)" AS "TEMP(Calculation_1361494470883127296)(1516216135)(0)",
  "t3"."__measure__3" AS "TEMP(Calculation_1361494470883127296)(3207739184)(0)",
  "t3"."__measure__4" AS "avg:Calculation_2082633360251293713:ok",
  "t0"."sum:Calculation_231372438402052096:ok" AS "sum:Calculation_231372438402052096:ok",
  "t0"."sum:partExchange amountGBP:ok" AS "sum:partExchange amountGBP:ok"
FROM (
  SELECT (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Calculation_2082633360258269204",
    "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
    "Extract"."Car Type" AS "Car Type",
    "Extract"."Model" AS "Model",
    "Extract"."Registration" AS "Registration",
    SUM("Extract"."Sale Price") AS "TEMP(Calculation_1361494470883127296)(1516216135)(0)",
    SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "sum:Calculation_231372438402052096:ok",
    SUM("Extract"."partExchange amountGBP") AS "sum:partExchange amountGBP:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
  SELECT 1 AS "one"
  FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_1"
  WHERE ("Extract"."Registration" = "Filter_1"."Registration")
  )
  GROUP BY 1,
    2,
    3,
    4,
    5
) "t0"
  INNER JOIN (
  SELECT "t1"."Calculation_2082633360258269204" AS "Calculation_2082633360258269204",
    "t1"."Calculation_2082633360308736021" AS "Calculation_2082633360308736021",
    "t1"."Car Type" AS "Car Type",
    "t1"."Model" AS "Model",
    "t1"."Registration" AS "Registration",
    SUM("t2"."__measure__2") AS "__measure__3",
    AVG(CAST("t2"."__measure__2" AS DOUBLE PRECISION OR NULL)) AS "__measure__4"
  FROM (
    SELECT (CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) AS "Calculation_2082633360258269204",
      "Extract"."Fuel Type" AS "Calculation_2082633360308736021",
      "Extract"."Car Type" AS "Car Type",
      "Extract"."Make" AS "Make",
      "Extract"."Model" AS "Model",
      "Extract"."Registration" AS "Registration"
    FROM "Extract"."Extract" "Extract"
    WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
    SELECT 1 AS "one"
    FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_2"
    WHERE ("Extract"."Registration" = "Filter_2"."Registration")
    )
    GROUP BY 1,
      2,
      3,
      4,
      5,
      6
  ) "t1"
    INNER JOIN (
    SELECT "Extract"."Make" AS "Make",
      AVG(CAST("Extract"."Sale Price" AS DOUBLE PRECISION OR NULL)) AS "__measure__2"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t2" ON ("t1"."Make" IS NOT DISTINCT FROM "t2"."Make")
  GROUP BY 1,
    2,
    3,
    4,
    5
) "t3" ON (("t0"."Calculation_2082633360258269204" = "t3"."Calculation_2082633360258269204") AND ("t0"."Calculation_2082633360308736021" IS NOT DISTINCT FROM "t3"."Calculation_2082633360308736021") AND ("t0"."Car Type" IS NOT DISTINCT FROM "t3"."Car Type") AND ("t0"."Model" IS NOT DISTINCT FROM "t3"."Model") AND ("t0"."Registration" IS NOT DISTINCT FROM "t3"."Registration"))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Jpa3jIxCkTBIoEISbX5/cU", "lqctx-batch-query-id": "5" } } */
SELECT "Extract"."Registration" AS "Registration",
  SUM("Extract"."Sale Price") AS "sum:Sale Price:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_1"
WHERE ("Extract"."Registration" = "Filter_1"."Registration")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ow3uCIBPUhkIMPPOet24Xb", "lqctx-batch-query-id": "0" } } */
SELECT "Extract"."Registration" AS "Registration",
  SUM("Extract"."Sale Price") AS "sum:Sale Price:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_58338C4A-D7CA-46C7-999C-96BA34A72F50_1_Filter" "Filter_1"
WHERE ("Extract"."Registration" = "Filter_1"."Registration")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ow3uCIBPUhkIMPPOet24Xb", "lqctx-batch-query-id": "0" } } */
SELECT "t1"."__measure__4" AS "usr:Calculation_2082633360232312832:ok",
  "t1"."__measure__5" AS "usr:Max Profit (copy)_2082633360233308163:ok",
  "t4"."__measure__7" AS "usr:Min Profit (copy)_2082633360234643460:ok"
FROM (
  SELECT MAX("t0"."__measure__3") AS "__measure__4",
    MIN("t0"."__measure__3") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__2")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__3" AS DOUBLE PRECISION OR NULL)) AS "__measure__7"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__2" IS NOT DISTINCT FROM "t3"."__dimension__2")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HgHfIsyTU24LV7Ct7Hn44c", "lqctx-batch-query-id": "0" } } */
SELECT "t1"."__measure__4" AS "usr:Calculation_2082633360232312832:ok",
  "t1"."__measure__5" AS "usr:Max Profit (copy)_2082633360233308163:ok",
  "t4"."__measure__7" AS "usr:Min Profit (copy)_2082633360234643460:ok"
FROM (
  SELECT MAX("t0"."__measure__3") AS "__measure__4",
    MIN("t0"."__measure__3") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__2")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__3" AS DOUBLE PRECISION OR NULL)) AS "__measure__7"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM(("Extract"."Sale Price" - "Extract"."Bought For")) AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__2" IS NOT DISTINCT FROM "t3"."__dimension__2")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HgHfIsyTU24LV7Ct7Hn44c", "lqctx-batch-query-id": "0" } } */
SELECT AVG(CAST("t1"."__measure__4" AS DOUBLE PRECISION OR NULL)) AS "usr:Max Stock Number (copy)_2082633360236130312:ok",
  MIN("t1"."__measure__4") AS "usr:Min Profit (copy)_2082633360235712517:ok",
  MAX("t1"."__measure__4") AS "usr:Min Stock Number (copy)_2082633360236019719:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__3"
  FROM "Extract"."Extract" "Extract"
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  GROUP BY 1
) "t0"
  INNER JOIN (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__3",
    COUNT("Extract"."Registration") AS "__measure__4"
  FROM "Extract"."Extract" "Extract"
  GROUP BY 1
) "t1" ON ("t0"."__dimension__3" IS NOT DISTINCT FROM "t1"."__dimension__3")
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HYyrkb7e05/JWpAk0YZ2YY", "lqctx-batch-query-id": "0" } } */
SELECT AVG(CAST("t1"."__measure__4" AS DOUBLE PRECISION OR NULL)) AS "usr:Max Stock Number (copy)_2082633360236130312:ok",
  MIN("t1"."__measure__4") AS "usr:Min Profit (copy)_2082633360235712517:ok",
  MAX("t1"."__measure__4") AS "usr:Min Stock Number (copy)_2082633360236019719:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__3"
  FROM "Extract"."Extract" "Extract"
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  GROUP BY 1
) "t0"
  INNER JOIN (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__3",
    COUNT("Extract"."Registration") AS "__measure__4"
  FROM "Extract"."Extract" "Extract"
  GROUP BY 1
) "t1" ON ("t0"."__dimension__3" IS NOT DISTINCT FROM "t1"."__dimension__3")
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HYyrkb7e05/JWpAk0YZ2YY", "lqctx-batch-query-id": "0" } } */
SELECT "t1"."__measure__4" AS "usr:Min Stock Number (copy)_2082633360236568585:ok",
  "t4"."__measure__7" AS "usr:Min Stock Value (copy) (copy)_2082633360236662795:ok",
  "t1"."__measure__5" AS "usr:Min Stock Value (copy)_2082633360236654602:ok"
FROM (
  SELECT MIN("t0"."__measure__3") AS "__measure__4",
    MAX("t0"."__measure__3") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM("Extract"."Bought For") AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__2")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__3" AS DOUBLE PRECISION OR NULL)) AS "__measure__7"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM("Extract"."Bought For") AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__2" IS NOT DISTINCT FROM "t3"."__dimension__2")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OH8jOZPFEDkIC/L6W8A4mk", "lqctx-batch-query-id": "0" } } */
SELECT "t1"."__measure__4" AS "usr:Min Stock Number (copy)_2082633360236568585:ok",
  "t4"."__measure__7" AS "usr:Min Stock Value (copy) (copy)_2082633360236662795:ok",
  "t1"."__measure__5" AS "usr:Min Stock Value (copy)_2082633360236654602:ok"
FROM (
  SELECT MIN("t0"."__measure__3") AS "__measure__4",
    MAX("t0"."__measure__3") AS "__measure__5"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM("Extract"."Bought For") AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0" ON (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") IS NOT DISTINCT FROM "t0"."__dimension__2")
  WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
  HAVING (COUNT(1) > 0)
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("t3"."__measure__3" AS DOUBLE PRECISION OR NULL)) AS "__measure__7"
  FROM (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2"
    FROM "Extract"."Extract" "Extract"
    WHERE ((CASE WHEN (((CASE WHEN ("Extract"."Sale Price" > "Extract"."partExchange amountGBP") THEN '🔵' ELSE '🟠' END) = '🔵') AND ("Extract"."Registration" IN ('AC82-9GK', 'AS90-0PB', 'CL03-4DP', 'DA85-3IH', 'GL95-0ZM', 'GX61-9CD', 'JG84-2XD', 'JY96-5QB', 'LP50-6NM', 'LP68-7YP', 'PS72-7PQ', 'QC18-5VX', 'SS82-1HM', 'TW82-6XY', 'WX20-1US', 'XR58-5ZM', 'YI70-2FC', 'YX59-0HC', 'ZW01-8XI'))) THEN FALSE ELSE TRUE END) AND ("Extract"."Sold" = 'Yes'))
    GROUP BY 1
  ) "t2"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Sale date")), "Extract"."Sale date") AS "__dimension__2",
      SUM("Extract"."Bought For") AS "__measure__3"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t3" ON ("t2"."__dimension__2" IS NOT DISTINCT FROM "t3"."__dimension__2")
  HAVING (COUNT(1) > 0)
) "t4"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OH8jOZPFEDkIC/L6W8A4mk", "lqctx-batch-query-id": "0" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "F5wdshYfUcVIMjQv1d12cl" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "F5wdshYfUcVIMjQv1d12cl" } } */
SELECT "t3"."Calculation_1304214366241488907" AS "Calculation_1304214366241488907",
  "t3"."Date" AS "Date",
  "t3"."Symbol" AS "Symbol",
  "t5"."__measure__1" AS "sum:Calculation_1304214366239588360:ok",
  ("t5"."__measure__1" - "t5"."__measure__2") AS "sum:Calculation_1304214366240071689:ok",
  (CAST(("t5"."__measure__1" - "t5"."__measure__2") AS DOUBLE PRECISION OR NULL) / NULLIF("t5"."__measure__2",0)) AS "sum:Calculation_1304214366240198666:ok",
  (-CAST("t5"."__measure__1" AS DOUBLE PRECISION OR NULL)) AS "sum:Calculation_1304214366241886220:ok",
  "t3"."sum:Last Week Volume (copy 2):ok" AS "sum:Last Week Volume (copy 2):ok",
  "t5"."__measure__2" AS "sum:Last Week Volume (copy):ok",
  "t3"."sum:Volume:ok" AS "sum:Volume:ok"
FROM (
  SELECT ('Last 30 Days as of: ' || CAST("t0"."__measure__0" AS TEXT OR NULL)) AS "Calculation_1304214366241488907",
    "Extract"."Date" AS "Date",
    "Extract"."Symbol" AS "Symbol",
    SUM((CASE WHEN (TABLEAU.DATE_DIFF('DAY', "t2"."__measure__0", "Extract"."Date") = 0) THEN "Extract"."Volume" ELSE null::int END)) AS "sum:Last Week Volume (copy 2):ok",
    SUM("Extract"."Volume") AS "sum:Volume:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__0", "Extract"."Date") < 30))
  GROUP BY 1,
    2,
    3
) "t3"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__1",
    SUM((CAST(CAST(((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") >= 7) AND (TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 14)) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t4"
  GROUP BY 1
) "t5" ON ("t3"."Symbol" IS NOT DISTINCT FROM "t5"."Symbol")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BlFSnxYVEtFJrklNH1qvi6", "lqctx-batch-query-id": "0" } } */
SELECT "t3"."Calculation_1304214366241488907" AS "Calculation_1304214366241488907",
  "t3"."Date" AS "Date",
  "t3"."Symbol" AS "Symbol",
  "t5"."__measure__1" AS "sum:Calculation_1304214366239588360:ok",
  ("t5"."__measure__1" - "t5"."__measure__2") AS "sum:Calculation_1304214366240071689:ok",
  (CAST(("t5"."__measure__1" - "t5"."__measure__2") AS DOUBLE PRECISION OR NULL) / NULLIF("t5"."__measure__2",0)) AS "sum:Calculation_1304214366240198666:ok",
  (-CAST("t5"."__measure__1" AS DOUBLE PRECISION OR NULL)) AS "sum:Calculation_1304214366241886220:ok",
  "t3"."sum:Last Week Volume (copy 2):ok" AS "sum:Last Week Volume (copy 2):ok",
  "t5"."__measure__2" AS "sum:Last Week Volume (copy):ok",
  "t3"."sum:Volume:ok" AS "sum:Volume:ok"
FROM (
  SELECT ('Last 30 Days as of: ' || CAST("t0"."__measure__0" AS TEXT OR NULL)) AS "Calculation_1304214366241488907",
    "Extract"."Date" AS "Date",
    "Extract"."Symbol" AS "Symbol",
    SUM((CASE WHEN (TABLEAU.DATE_DIFF('DAY', "t2"."__measure__0", "Extract"."Date") = 0) THEN "Extract"."Volume" ELSE null::int END)) AS "sum:Last Week Volume (copy 2):ok",
    SUM("Extract"."Volume") AS "sum:Volume:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__0", "Extract"."Date") < 30))
  GROUP BY 1,
    2,
    3
) "t3"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__1",
    SUM((CAST(CAST(((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") >= 7) AND (TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 14)) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t4"
  GROUP BY 1
) "t5" ON ("t3"."Symbol" IS NOT DISTINCT FROM "t5"."Symbol")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BlFSnxYVEtFJrklNH1qvi6", "lqctx-batch-query-id": "0" } } */
SELECT "t2"."Symbol" AS "Symbol",
  SUM((-CAST("t4"."__measure__3" AS DOUBLE PRECISION OR NULL))) AS "sum:Calculation_1304214366241886220:ok"
FROM (
  SELECT "Extract"."Symbol" AS "Symbol"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__1", "Extract"."Date") < 30))
  GROUP BY ('Last 30 Days as of: ' || CAST("t0"."__measure__1" AS TEXT OR NULL)),
    "Extract"."Date",
    1
) "t2"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t3"."__measure__1", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__3"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t3"
  GROUP BY 1
) "t4" ON ("t2"."Symbol" IS NOT DISTINCT FROM "t4"."Symbol")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "JUkA7R8OkvmKYTkiTpbS5l" } } */
SELECT "t2"."Symbol" AS "Symbol",
  SUM((-CAST("t4"."__measure__3" AS DOUBLE PRECISION OR NULL))) AS "sum:Calculation_1304214366241886220:ok"
FROM (
  SELECT "Extract"."Symbol" AS "Symbol"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__1", "Extract"."Date") < 30))
  GROUP BY ('Last 30 Days as of: ' || CAST("t0"."__measure__1" AS TEXT OR NULL)),
    "Extract"."Date",
    1
) "t2"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t3"."__measure__1", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__3"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t3"
  GROUP BY 1
) "t4" ON ("t2"."Symbol" IS NOT DISTINCT FROM "t4"."Symbol")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "JUkA7R8OkvmKYTkiTpbS5l" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "Kw74fgyikUjJjbiCqBzo4s" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "Kw74fgyikUjJjbiCqBzo4s" } } */
SELECT "t3"."Calculation_1304214366241488907" AS "Calculation_1304214366241488907",
  "t3"."Date" AS "Date",
  "t3"."Symbol" AS "Symbol",
  "t5"."__measure__1" AS "sum:Calculation_1304214366239588360:ok",
  ("t5"."__measure__1" - "t5"."__measure__2") AS "sum:Calculation_1304214366240071689:ok",
  (CAST(("t5"."__measure__1" - "t5"."__measure__2") AS DOUBLE PRECISION OR NULL) / NULLIF("t5"."__measure__2",0)) AS "sum:Calculation_1304214366240198666:ok",
  (-CAST("t5"."__measure__1" AS DOUBLE PRECISION OR NULL)) AS "sum:Calculation_1304214366241886220:ok",
  "t3"."sum:Last Week Volume (copy 2):ok" AS "sum:Last Week Volume (copy 2):ok",
  "t5"."__measure__2" AS "sum:Last Week Volume (copy):ok",
  "t3"."sum:Volume:ok" AS "sum:Volume:ok"
FROM (
  SELECT ('Last 30 Days as of: ' || CAST("t0"."__measure__0" AS TEXT OR NULL)) AS "Calculation_1304214366241488907",
    "Extract"."Date" AS "Date",
    "Extract"."Symbol" AS "Symbol",
    SUM((CASE WHEN (TABLEAU.DATE_DIFF('DAY', "t2"."__measure__0", "Extract"."Date") = 0) THEN "Extract"."Volume" ELSE null::int END)) AS "sum:Last Week Volume (copy 2):ok",
    SUM("Extract"."Volume") AS "sum:Volume:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__0", "Extract"."Date") < 30))
  GROUP BY 1,
    2,
    3
) "t3"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__1",
    SUM((CAST(CAST(((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") >= 7) AND (TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 14)) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t4"
  GROUP BY 1
) "t5" ON ("t3"."Symbol" IS NOT DISTINCT FROM "t5"."Symbol")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B4mBfP+dEftIuqQQWcY3W3", "lqctx-batch-query-id": "0" } } */
SELECT "t3"."Calculation_1304214366241488907" AS "Calculation_1304214366241488907",
  "t3"."Date" AS "Date",
  "t3"."Symbol" AS "Symbol",
  "t5"."__measure__1" AS "sum:Calculation_1304214366239588360:ok",
  ("t5"."__measure__1" - "t5"."__measure__2") AS "sum:Calculation_1304214366240071689:ok",
  (CAST(("t5"."__measure__1" - "t5"."__measure__2") AS DOUBLE PRECISION OR NULL) / NULLIF("t5"."__measure__2",0)) AS "sum:Calculation_1304214366240198666:ok",
  (-CAST("t5"."__measure__1" AS DOUBLE PRECISION OR NULL)) AS "sum:Calculation_1304214366241886220:ok",
  "t3"."sum:Last Week Volume (copy 2):ok" AS "sum:Last Week Volume (copy 2):ok",
  "t5"."__measure__2" AS "sum:Last Week Volume (copy):ok",
  "t3"."sum:Volume:ok" AS "sum:Volume:ok"
FROM (
  SELECT ('Last 30 Days as of: ' || CAST("t0"."__measure__0" AS TEXT OR NULL)) AS "Calculation_1304214366241488907",
    "Extract"."Date" AS "Date",
    "Extract"."Symbol" AS "Symbol",
    SUM((CASE WHEN (TABLEAU.DATE_DIFF('DAY', "t2"."__measure__0", "Extract"."Date") = 0) THEN "Extract"."Volume" ELSE null::int END)) AS "sum:Last Week Volume (copy 2):ok",
    SUM("Extract"."Volume") AS "sum:Volume:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__0", "Extract"."Date") < 30))
  GROUP BY 1,
    2,
    3
) "t3"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__1",
    SUM((CAST(CAST(((TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") >= 7) AND (TABLEAU.DATE_DIFF('DAY', "t4"."__measure__0", "Extract"."Date") < 14)) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t4"
  GROUP BY 1
) "t5" ON ("t3"."Symbol" IS NOT DISTINCT FROM "t5"."Symbol")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B4mBfP+dEftIuqQQWcY3W3", "lqctx-batch-query-id": "0" } } */
SELECT "t2"."Symbol" AS "Symbol",
  SUM((-CAST("t4"."__measure__3" AS DOUBLE PRECISION OR NULL))) AS "sum:Calculation_1304214366241886220:ok"
FROM (
  SELECT "Extract"."Symbol" AS "Symbol"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__1", "Extract"."Date") < 30))
  GROUP BY ('Last 30 Days as of: ' || CAST("t0"."__measure__1" AS TEXT OR NULL)),
    "Extract"."Date",
    1
) "t2"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t3"."__measure__1", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__3"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t3"
  GROUP BY 1
) "t4" ON ("t2"."Symbol" IS NOT DISTINCT FROM "t4"."Symbol")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "EGH35dRgErGKYnW85nrK5c" } } */
SELECT "t2"."Symbol" AS "Symbol",
  SUM((-CAST("t4"."__measure__3" AS DOUBLE PRECISION OR NULL))) AS "sum:Calculation_1304214366241886220:ok"
FROM (
  SELECT "Extract"."Symbol" AS "Symbol"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t1"
  WHERE ((CASE WHEN ("Extract"."Symbol" = 'DATA') THEN FALSE ELSE TRUE END) AND (TABLEAU.DATE_DIFF('DAY', "t1"."__measure__1", "Extract"."Date") < 30))
  GROUP BY ('Last 30 Days as of: ' || CAST("t0"."__measure__1" AS TEXT OR NULL)),
    "Extract"."Date",
    1
) "t2"
  INNER JOIN (
  SELECT "Extract"."Symbol" AS "Symbol",
    SUM((CAST(CAST((TABLEAU.DATE_DIFF('DAY', "t3"."__measure__1", "Extract"."Date") < 7) AS INTEGER OR NULL) AS BIGINT OR NULL) * "Extract"."Volume")) AS "__measure__3"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX("Extract"."Date") AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    HAVING (COUNT(1) > 0)
  ) "t3"
  GROUP BY 1
) "t4" ON ("t2"."Symbol" IS NOT DISTINCT FROM "t4"."Symbol")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "EGH35dRgErGKYnW85nrK5c" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "01pHtRK1EDbJgAKvBLyKHy" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "01pHtRK1EDbJgAKvBLyKHy" } } */
SELECT "t2"."Calculation_4623648725538181139" AS "Calculation_4623648725538181139",
  ('Header'::text) AS "Calculation_4623648725541404693",
  "t2"."Quarter" AS "Quarter",
  "t2"."Sub-Category" AS "Sub-Category",
  SUM("t2"."Profit") AS "TEMP(Calculation_4623648725525016582)(1796823176)(0)",
  SUM("t2"."Sales") AS "TEMP(Calculation_4623648725525016582)(3018240649)(0)"
FROM (
  SELECT "t1"."Profit" AS "Profit",
    "t1"."Sales" AS "Sales",
    "t1"."Sub-Category" AS "Sub-Category",
    (CASE WHEN ("t1"."$temp0_cse" > '0.1'::double precision) THEN 'Green' WHEN ("t1"."$temp0_cse" < 0) THEN 'Red' ELSE 'Yellow' END) AS "Calculation_4623648725538181139",
    CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('QUARTER', TABLEAU.NORMALIZE_DATETIME("t1"."Order Date")), "t1"."Order Date") AS DATE OR NULL) AS "Quarter"
  FROM (
    SELECT "Extract"."Order Date" AS "Order Date",
      "Extract"."Sub-Category" AS "Sub-Category",
      "Extract"."Sales" AS "Sales",
      "Extract"."Profit" AS "Profit",
      "t0"."$temp2_output" AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
      INNER JOIN (
      SELECT "Extract"."Sub-Category" AS "Sub-Category",
        (CAST(SUM("Extract"."Profit") AS DOUBLE PRECISION OR NULL) / NULLIF(SUM("Extract"."Sales"),0)) AS "$temp2_output"
      FROM "Extract"."Extract" "Extract"
      GROUP BY 1
    ) "t0" ON ("Extract"."Sub-Category" IS NOT DISTINCT FROM "t0"."Sub-Category")
  ) "t1"
) "t2"
GROUP BY 1,
  3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0sa/mYNg0sSKO3hecONB2+", "lqctx-batch-query-id": "2" } } */
SELECT "t2"."Sub-Category" AS "Sub-Category",
  COUNT("t2"."Discount") AS "TEMP(Calculation_4623648725520486404)(1493905074)(0)",
  SUM("t2"."Discount") AS "TEMP(Calculation_4623648725520486404)(3431077758)(0)",
  SUM("t2"."Profit") AS "TEMP(Calculation_4623648725525016582)(1796823176)(0)",
  SUM("t2"."Sales") AS "TEMP(Calculation_4623648725525016582)(3018240649)(0)",
  SUM((CASE WHEN "t2"."$temp0_cse" THEN "t2"."Profit" ELSE null::double precision END)) AS "TEMP(Calculation_4623648725526781960)(2279104618)(0)",
  SUM((CASE WHEN "t2"."$temp0_cse" THEN "t2"."Sales" ELSE null::double precision END)) AS "TEMP(Calculation_4623648725526781960)(4190553770)(0)",
  SUM((CASE WHEN "t2"."$temp2_cse" THEN "t2"."Profit" ELSE null::double precision END)) AS "TEMP(Previous Year Profitability (copy)_4623648725528158217)(1510212004)(0)",
  SUM((CASE WHEN "t2"."$temp2_cse" THEN "t2"."Sales" ELSE null::double precision END)) AS "TEMP(Previous Year Profitability (copy)_4623648725528158217)(3563589152)(0)",
  '-0.5'::double precision AS "avg:Calculation_4623648725518135298:ok",
  '0.5'::double precision AS "avg:Calculation_4623648725518405635:ok",
  '0.2'::double precision AS "avg:Calculation_4623648725522247685:ok",
  AVG(CAST("t2"."Discount" AS DOUBLE PRECISION OR NULL)) AS "avg:Discount:ok",
  0 AS "sum:Calculation_4623648725517553664:ok",
  0 AS "sum:Calculation_4623648725517692929:ok"
FROM (
  SELECT "t1"."Profit" AS "Profit",
    "t1"."Discount" AS "Discount",
    "t1"."Sales" AS "Sales",
    "t1"."Sub-Category" AS "Sub-Category",
    (CAST(EXTRACT(YEAR FROM "t1"."Order Date") AS BIGINT OR NULL) = ("t1"."$temp1_cse" - 1)) AS "$temp0_cse",
    (CAST(EXTRACT(YEAR FROM "t1"."Order Date") AS BIGINT OR NULL) >= ("t1"."$temp1_cse" - 2)) AS "$temp2_cse"
  FROM (
    SELECT "Extract"."Order Date" AS "Order Date",
      "Extract"."Sub-Category" AS "Sub-Category",
      "Extract"."Sales" AS "Sales",
      "Extract"."Discount" AS "Discount",
      "Extract"."Profit" AS "Profit",
      "t0"."__measure__0" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(CAST(EXTRACT(YEAR FROM "Extract"."Order Date") AS BIGINT OR NULL)) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      HAVING (COUNT(1) > 0)
    ) "t0"
  ) "t1"
) "t2"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "LXtf0wSLUz9Ko/IQ9Ji8uF", "lqctx-batch-query-id": "3" } } */
SELECT "t2"."Calculation_4623648725538181139" AS "Calculation_4623648725538181139",
  ('Header'::text) AS "Calculation_4623648725541404693",
  "t2"."Quarter" AS "Quarter",
  "t2"."Sub-Category" AS "Sub-Category",
  SUM("t2"."Profit") AS "TEMP(Calculation_4623648725525016582)(1796823176)(0)",
  SUM("t2"."Sales") AS "TEMP(Calculation_4623648725525016582)(3018240649)(0)"
FROM (
  SELECT "t1"."Profit" AS "Profit",
    "t1"."Sales" AS "Sales",
    "t1"."Sub-Category" AS "Sub-Category",
    (CASE WHEN ("t1"."$temp0_cse" > '0.1'::double precision) THEN 'Green' WHEN ("t1"."$temp0_cse" < 0) THEN 'Red' ELSE 'Yellow' END) AS "Calculation_4623648725538181139",
    CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('QUARTER', TABLEAU.NORMALIZE_DATETIME("t1"."Order Date")), "t1"."Order Date") AS DATE OR NULL) AS "Quarter"
  FROM (
    SELECT "Extract"."Order Date" AS "Order Date",
      "Extract"."Sub-Category" AS "Sub-Category",
      "Extract"."Sales" AS "Sales",
      "Extract"."Profit" AS "Profit",
      "t0"."$temp2_output" AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
      INNER JOIN (
      SELECT "Extract"."Sub-Category" AS "Sub-Category",
        (CAST(SUM("Extract"."Profit") AS DOUBLE PRECISION OR NULL) / NULLIF(SUM("Extract"."Sales"),0)) AS "$temp2_output"
      FROM "Extract"."Extract" "Extract"
      GROUP BY 1
    ) "t0" ON ("Extract"."Sub-Category" IS NOT DISTINCT FROM "t0"."Sub-Category")
  ) "t1"
) "t2"
GROUP BY 1,
  3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0sa/mYNg0sSKO3hecONB2+", "lqctx-batch-query-id": "2" } } */
SELECT "t2"."Sub-Category" AS "Sub-Category",
  COUNT("t2"."Discount") AS "TEMP(Calculation_4623648725520486404)(1493905074)(0)",
  SUM("t2"."Discount") AS "TEMP(Calculation_4623648725520486404)(3431077758)(0)",
  SUM("t2"."Profit") AS "TEMP(Calculation_4623648725525016582)(1796823176)(0)",
  SUM("t2"."Sales") AS "TEMP(Calculation_4623648725525016582)(3018240649)(0)",
  SUM((CASE WHEN "t2"."$temp0_cse" THEN "t2"."Profit" ELSE null::double precision END)) AS "TEMP(Calculation_4623648725526781960)(2279104618)(0)",
  SUM((CASE WHEN "t2"."$temp0_cse" THEN "t2"."Sales" ELSE null::double precision END)) AS "TEMP(Calculation_4623648725526781960)(4190553770)(0)",
  SUM((CASE WHEN "t2"."$temp2_cse" THEN "t2"."Profit" ELSE null::double precision END)) AS "TEMP(Previous Year Profitability (copy)_4623648725528158217)(1510212004)(0)",
  SUM((CASE WHEN "t2"."$temp2_cse" THEN "t2"."Sales" ELSE null::double precision END)) AS "TEMP(Previous Year Profitability (copy)_4623648725528158217)(3563589152)(0)",
  '-0.5'::double precision AS "avg:Calculation_4623648725518135298:ok",
  '0.5'::double precision AS "avg:Calculation_4623648725518405635:ok",
  '0.2'::double precision AS "avg:Calculation_4623648725522247685:ok",
  AVG(CAST("t2"."Discount" AS DOUBLE PRECISION OR NULL)) AS "avg:Discount:ok",
  0 AS "sum:Calculation_4623648725517553664:ok",
  0 AS "sum:Calculation_4623648725517692929:ok"
FROM (
  SELECT "t1"."Profit" AS "Profit",
    "t1"."Discount" AS "Discount",
    "t1"."Sales" AS "Sales",
    "t1"."Sub-Category" AS "Sub-Category",
    (CAST(EXTRACT(YEAR FROM "t1"."Order Date") AS BIGINT OR NULL) = ("t1"."$temp1_cse" - 1)) AS "$temp0_cse",
    (CAST(EXTRACT(YEAR FROM "t1"."Order Date") AS BIGINT OR NULL) >= ("t1"."$temp1_cse" - 2)) AS "$temp2_cse"
  FROM (
    SELECT "Extract"."Order Date" AS "Order Date",
      "Extract"."Sub-Category" AS "Sub-Category",
      "Extract"."Sales" AS "Sales",
      "Extract"."Discount" AS "Discount",
      "Extract"."Profit" AS "Profit",
      "t0"."__measure__0" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(CAST(EXTRACT(YEAR FROM "Extract"."Order Date") AS BIGINT OR NULL)) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      HAVING (COUNT(1) > 0)
    ) "t0"
  ) "t1"
) "t2"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "LXtf0wSLUz9Ko/IQ9Ji8uF", "lqctx-batch-query-id": "3" } } */
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname = 'Extract'
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT a.attname, a.atttypid, a.attnotnull, a.attnum, a.atttypmod, s.n_distinct,
       CASE WHEN a.attcollation <> t.typcollation THEN c.collname ELSE NULL END AS attcollation,
       d.description
  FROM pg_catalog.pg_attribute a
  JOIN pg_catalog.pg_class cl
    ON a.attrelid = cl.oid
  LEFT JOIN pg_catalog.pg_description d
    ON cl.oid = d.objoid AND a.attnum = d.objsubid
  LEFT JOIN pg_catalog.pg_collation c
    ON c.oid = a.attcollation
  LEFT JOIN pg_catalog.pg_type t
    ON t.oid = a.atttypid
  LEFT JOIN pg_catalog.pg_stats s
    ON s.attname = a.attname AND s.tablename = 'Extract' AND s.schemaname = 'Extract'
  WHERE a.attnum > 0
   AND NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT c.contype, c.conname, a.attname, a.attnotnull, tns.relname, unnest_conkey, conkey_string, tns.nspname as ref_ns
  FROM pg_catalog.pg_class cl
  JOIN ( SELECT c.contype, unnest(c.conkey) AS unnest_conkey,
                c.conname, c.confrelid, array_to_string(c.conkey, ',', '*') as conkey_string,
                c.conrelid
          FROM pg_catalog.pg_constraint c) c
   ON c.conrelid = cl.oid
  JOIN pg_catalog.pg_attribute a
   ON  c.unnest_conkey = a.attnum
   AND a.attrelid      = cl.oid
  LEFT JOIN (
    SELECT t.oid, t.relname, ns.nspname
    FROM pg_catalog.pg_class t
    JOIN pg_catalog.pg_namespace ns
      ON ns.oid = t.relnamespace
    WHERE t.relkind IN('r','v','f')
     AND ns.nspname not like 'pg_catalog') tns
  ON c.confrelid = tns.oid
 WHERE NOT a.attisdropped
   AND cl.relname = 'Extract'
   AND cl.relnamespace = 10004
SELECT FALSE AS "@Dendrogram L2 DZV Boolean (copy)_4378061807705284661"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "Ix/yOhBw0btKPBkIL/nXVE" } } */
SELECT FALSE AS "@Dendrogram L2 DZV Boolean (copy)_4378061807705284661"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "Ix/yOhBw0btKPBkIL/nXVE" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "N0qfgXu4kJHKyWTONrelR+" } } */
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "N0qfgXu4kJHKyWTONrelR+" } } */
SELECT FALSE AS "Calculation_4378061807719374919",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IoKk8vWLE/yKtpzFByZusU", "lqctx-batch-query-id": "2" } } */
SELECT FALSE AS "Calculation_4378061807719374919",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IoKk8vWLE/yKtpzFByZusU", "lqctx-batch-query-id": "2" } } */
SELECT ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OhQHxv5BEXoKWogxOo3MxZ", "lqctx-batch-query-id": "27" } } */
SELECT ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OhQHxv5BEXoKWogxOo3MxZ", "lqctx-batch-query-id": "27" } } */
SELECT ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  ('CY'::text) AS "Current Month Parameter Trigger (copy)_4378061807709470786",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C8X21LXNk4KLFNQpIIYLvM", "lqctx-batch-query-id": "3" } } */
SELECT ('Month'::text) AS "Calculation_4378061807709032512",
  ('CM'::text) AS "Calculation_4378061807709077569",
  ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GViW52cPkHdJ63BmkBgs5x", "lqctx-batch-query-id": "1" } } */
SELECT ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  ('CY'::text) AS "Current Month Parameter Trigger (copy)_4378061807709470786",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C8X21LXNk4KLFNQpIIYLvM", "lqctx-batch-query-id": "3" } } */
SELECT ('Month'::text) AS "Calculation_4378061807709032512",
  ('CM'::text) AS "Calculation_4378061807709077569",
  ('All'::text) AS "Calculation_4378061807710470211",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  '0.5'::double precision AS "usr:Calculation_4378061807708917822:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GViW52cPkHdJ63BmkBgs5x", "lqctx-batch-query-id": "1" } } */
SELECT (''::text) AS "Calculation_49539609121796169"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JU7Ltm2MU1vKo5EK9DLt4P", "lqctx-batch-query-id": "25" } } */
SELECT (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HjFjAj7AUCbKkuwaUW+EJf", "lqctx-batch-query-id": "26" } } */
SELECT (''::text) AS "Calculation_49539609121796169"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JU7Ltm2MU1vKo5EK9DLt4P", "lqctx-batch-query-id": "25" } } */
SELECT (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HjFjAj7AUCbKkuwaUW+EJf", "lqctx-batch-query-id": "26" } } */
SELECT (CASE 'Link' COLLATE "en_GB" WHEN 'All' THEN TRUE WHEN "Extract"."Type" THEN TRUE ELSE FALSE END) AS "Dendrogram Highlight (copy)_4378061807735418960",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)",
  "Extract"."Type" AS "Type"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GyIgVuUa0k1KK70RpAMCDc", "lqctx-batch-query-id": "10" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "Extract"."Boosted" AS "Boosted",
  "Extract"."Budget" AS "Budget",
  "Extract"."CPC_manual" AS "CPC_manual",
  CAST(CEIL("Extract"."Likes") AS BIGINT OR NULL) AS "Calculation_4378061807722020940",
  CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) AS "Calculation_4378061807722172493",
  CAST(CEIL("Extract"."Retweets") AS BIGINT OR NULL) AS "Calculation_4378061807722463310",
  "t0"."__measure__0" AS "Calculation_4378061808052744292",
  "Extract"."Cost per Impressions" AS "Cost per Impressions",
  "Extract"."Impressions" AS "Impressions",
  "Extract"."Post ID" AS "Post ID",
  "Extract"."Segment_comments_split" AS "Segment_comments_split",
  "Extract"."Segment_likes_split" AS "Segment_likes_split",
  "Extract"."Segment_retweets_split" AS "Segment_retweets_split",
  "Extract"."Post ID" AS "min:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  GROUP BY 1
) "t0" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t0"."Post ID")
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Hqf6wIj5E8RIfXgWq1DvL6", "lqctx-batch-query-id": "12" } } */
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS "hr:Timestamp:ok",
  SUM("Extract"."Total_Segment_Interactions") AS "sum:Total_Segment_Interactions:ok",
  0 AS "usr:Calculation_4013270235426603023:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp (copy)_4378061807733461071:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C8a0SoiaE5RLQ7Bp5Zb7/V", "lqctx-batch-query-id": "36" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Impressions" ELSE null::int END)) AS "TEMP(Retweets Prev Period BAN (copy)_5331136077437575200)(2707317375)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ILPb2tIVkCZL1FjSrQyvZV", "lqctx-batch-query-id": "18" } } */
SELECT TRUE AS "CYTD Button Selected (copy)_4378061807719587912",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MV9LTN7T0KvKDRamVwfDH8", "lqctx-batch-query-id": "0" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Likes Prev Period BAN (copy)_4013270235443232810)(1793316039)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K8ZL8CWsEZuKX6Bq/rBAdK", "lqctx-batch-query-id": "9" } } */
SELECT "Extract"."Category" AS "Category",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N7GRSBbS0hHJcRow1pnD+p", "lqctx-batch-query-id": "11" } } */
SELECT "t3"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077437014047)(2683668858)(0)",
  "t3"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077437014047)(2707317375)(0)",
  "t1"."sum:Impressions:ok" AS "sum:Impressions:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Impressions") AS "sum:Impressions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Impressions" ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Impressions" ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IcyNHrIn0uDKSvZieiHxMJ", "lqctx-batch-query-id": "15" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Retweets" ELSE null::int END)) AS "TEMP(Likes Prev Period BAN (copy)_5185613514110210057)(3140751569)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OtaBaQ4FUpSJdRUZlHZ2Fr", "lqctx-batch-query-id": "33" } } */
SELECT TRUE AS "CYTD Button Selected (copy)_4378061807719587912",
  (''::text) AS "Calculation_4378061807719743561",
  (' '::text) AS "Calculation_4378061807719764042",
  0 AS "usr:Calculation_4378061807708786747:ok",
  1 AS "usr:Calculation_4378061807708819517:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MV9LTN7T0KvKDRamVwfDH8", "lqctx-batch-query-id": "0" } } */
SELECT "t5"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077429243924)(209897625)(0)",
  "t5"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077429243924)(3140751569)(0)",
  "t1"."sum:Retweets:ok" AS "sum:Retweets:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Retweets") AS "sum:Retweets:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0")) THEN "Extract"."Retweets" ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Retweets" ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t5"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EemmHtB10C/LpI9XkPrwyq", "lqctx-batch-query-id": "28" } } */
SELECT (''::text) AS "Calculation_3546303243749179417"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0R5MBvgpk1bJMM1i5oVijU", "lqctx-batch-query-id": "34" } } */
SELECT (''::text) AS "Calculation_3546303243749179417"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0R5MBvgpk1bJMM1i5oVijU", "lqctx-batch-query-id": "34" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "Extract"."Boosted" AS "Boosted",
  "Extract"."Budget" AS "Budget",
  "Extract"."CPC_manual" AS "CPC_manual",
  CAST(CEIL("Extract"."Likes") AS BIGINT OR NULL) AS "Calculation_4378061807722020940",
  CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) AS "Calculation_4378061807722172493",
  CAST(CEIL("Extract"."Retweets") AS BIGINT OR NULL) AS "Calculation_4378061807722463310",
  "t0"."__measure__0" AS "Calculation_4378061808052744292",
  "Extract"."Cost per Impressions" AS "Cost per Impressions",
  "Extract"."Impressions" AS "Impressions",
  "Extract"."Post ID" AS "Post ID",
  "Extract"."Segment_comments_split" AS "Segment_comments_split",
  "Extract"."Segment_likes_split" AS "Segment_likes_split",
  "Extract"."Segment_retweets_split" AS "Segment_retweets_split",
  "Extract"."Post ID" AS "min:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  GROUP BY 1
) "t0" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t0"."Post ID")
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Hqf6wIj5E8RIfXgWq1DvL6", "lqctx-batch-query-id": "12" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(209897625)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(3140751569)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(2443664382)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(299535124)(0)",
  '0.8'::double precision AS "usr:Calculation_5331136077431123989:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Retweets" AS "Retweets",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Retweets" AS "Retweets",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EasxC8VJE7IJ10U7Psutir", "lqctx-batch-query-id": "32" } } */
SELECT (CASE 'Link' COLLATE "en_GB" WHEN 'All' THEN TRUE WHEN "Extract"."Type" THEN TRUE ELSE FALSE END) AS "Dendrogram Highlight (copy)_4378061807735418960",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)",
  "Extract"."Type" AS "Type"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GyIgVuUa0k1KK70RpAMCDc", "lqctx-batch-query-id": "10" } } */
SELECT "t3"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077437014047)(2683668858)(0)",
  "t3"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077437014047)(2707317375)(0)",
  "t1"."sum:Impressions:ok" AS "sum:Impressions:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Impressions") AS "sum:Impressions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Impressions" ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Impressions" ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IcyNHrIn0uDKSvZieiHxMJ", "lqctx-batch-query-id": "15" } } */
SELECT "Extract"."Category" AS "Category",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N7GRSBbS0hHJcRow1pnD+p", "lqctx-batch-query-id": "11" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2683668858)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2707317375)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2173489593)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2854064822)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Impressions" AS "Impressions",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Impressions" AS "Impressions",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HaLDG9Kh0PcLegvplioA0g", "lqctx-batch-query-id": "13" } } */
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS "hr:Timestamp:ok",
  SUM("Extract"."Total_Segment_Interactions") AS "sum:Total_Segment_Interactions:ok",
  0 AS "usr:Calculation_4013270235426603023:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp (copy)_4378061807733461071:ok",
  (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C8a0SoiaE5RLQ7Bp5Zb7/V", "lqctx-batch-query-id": "36" } } */
SELECT "t5"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077429243924)(209897625)(0)",
  "t5"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077429243924)(3140751569)(0)",
  "t1"."sum:Retweets:ok" AS "sum:Retweets:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Retweets") AS "sum:Retweets:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0")) THEN "Extract"."Retweets" ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Retweets" ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t5"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EemmHtB10C/LpI9XkPrwyq", "lqctx-batch-query-id": "28" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Retweets" ELSE null::int END)) AS "TEMP(Likes Prev Period BAN (copy)_5185613514110210057)(3140751569)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OtaBaQ4FUpSJdRUZlHZ2Fr", "lqctx-batch-query-id": "33" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Likes Prev Period BAN (copy)_4013270235443232810)(1793316039)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K8ZL8CWsEZuKX6Bq/rBAdK", "lqctx-batch-query-id": "9" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2683668858)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2707317375)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2173489593)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2854064822)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Impressions" AS "Impressions",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Impressions" AS "Impressions",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HaLDG9Kh0PcLegvplioA0g", "lqctx-batch-query-id": "13" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(209897625)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(3140751569)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(2443664382)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(299535124)(0)",
  '0.8'::double precision AS "usr:Calculation_5331136077431123989:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Retweets" AS "Retweets",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Retweets" AS "Retweets",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EasxC8VJE7IJ10U7Psutir", "lqctx-batch-query-id": "32" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Impressions" ELSE null::int END)) AS "TEMP(Retweets Prev Period BAN (copy)_5331136077437575200)(2707317375)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ILPb2tIVkCZL1FjSrQyvZV", "lqctx-batch-query-id": "18" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)",
  '0.8'::double precision AS "usr:Calculation_5185613514148941898:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DeC+dEYB0v9IIXpxcMpowH", "lqctx-batch-query-id": "23" } } */
SELECT ((TABLEAU.LEFT(TO_CHAR(MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
  ('| Link' || ' post') AS "Calculation_4378061808035045460"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CAOige5/0Q/J1aP7XIQXbf", "lqctx-batch-query-id": "35" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)",
  '0.8'::double precision AS "usr:Calculation_5185613514148941898:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DeC+dEYB0v9IIXpxcMpowH", "lqctx-batch-query-id": "23" } } */
SELECT ((TABLEAU.LEFT(TO_CHAR(MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
  ('| Link' || ' post') AS "Calculation_4378061808035045460"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CAOige5/0Q/J1aP7XIQXbf", "lqctx-batch-query-id": "35" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(209897625)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(3140751569)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(2443664382)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(299535124)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Retweets" AS "Retweets",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Retweets" AS "Retweets",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G8Wq2s5mUVLJWfDYCx3L9C", "lqctx-batch-query-id": "31" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "TEMP(Likes Current Period BAN (copy)_4013270235440685084)(1172973022)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GunCJdavkT2K32VgWLHAuw", "lqctx-batch-query-id": "24" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(1793316039)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(2005101520)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(2005500787)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(3559306207)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Comments" AS "Comments",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Comments" AS "Comments",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PkLNfP7Q0fLLWNLitTJ/IL", "lqctx-batch-query-id": "7" } } */
SELECT ('PM'::text) AS "Calculation_4013270235442122785",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__1")), "t0"."__measure__1") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "TEMP(Likes Current Period BAN (copy)_4013270235440685084)(1172973022)(0)"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GunCJdavkT2K32VgWLHAuw", "lqctx-batch-query-id": "24" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(209897625)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Month Comments % Diff  (copy)_5185613514111189009)(3140751569)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(2443664382)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Retweets" ELSE null::int END)) AS "TEMP(Current Year Comments % Diff (copy)_5185613514110881807)(299535124)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Retweets" AS "Retweets",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Retweets" AS "Retweets",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G8Wq2s5mUVLJWfDYCx3L9C", "lqctx-batch-query-id": "31" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(1793316039)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(2005101520)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(2005500787)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(3559306207)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Comments" AS "Comments",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Comments" AS "Comments",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PkLNfP7Q0fLLWNLitTJ/IL", "lqctx-batch-query-id": "7" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  ((TABLEAU.LEFT(TO_CHAR(MAX(TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM MAX(TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp"))) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__0" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K+VoNytykDwIr6Y+KbwCjt", "lqctx-batch-query-id": "22" } } */
SELECT "t5"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077423841297)(1793316039)(0)",
  "t5"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077423841297)(2005101520)(0)",
  "t1"."sum:Comments:ok" AS "sum:Comments:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Comments") AS "sum:Comments:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0")) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t5"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BRy1pd0c0BNLJpvJWboeP5", "lqctx-batch-query-id": "4" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(1793316039)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(2005101520)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(2005500787)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(3559306207)(0)",
  '0.8'::double precision AS "usr:Calculation_5331136077425799187:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Comments" AS "Comments",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Comments" AS "Comments",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FftoNDm8kgyIZksXoEumyH", "lqctx-batch-query-id": "8" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2683668858)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2707317375)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2173489593)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2854064822)(0)",
  '0.8'::double precision AS "usr:Calculation_5185613514148941898:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Impressions" AS "Impressions",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Impressions" AS "Impressions",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D6M3VzBPUGZIfSXf/ZzWnG", "lqctx-batch-query-id": "14" } } */
SELECT ('CM'::text) AS "BAN Prev Period String (copy)_5331136077424934930",
  ((TABLEAU.LEFT(TO_CHAR(MAX(TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM MAX(TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp"))) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)",
  1 AS "usr:Calculation_5185613514106908675:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__0" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K+VoNytykDwIr6Y+KbwCjt", "lqctx-batch-query-id": "22" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(1793316039)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235442782243)(2005101520)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(2005500787)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN CAST(CEIL("t2"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "TEMP(Current Year Likes % Diff (copy)_4013270235442782245)(3559306207)(0)",
  '0.8'::double precision AS "usr:Calculation_5331136077425799187:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Comments" AS "Comments",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Comments" AS "Comments",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FftoNDm8kgyIZksXoEumyH", "lqctx-batch-query-id": "8" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2683668858)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Month Likes % Diff (copy)_5331136077434724381)(2707317375)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2173489593)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Impressions" ELSE null::int END)) AS "TEMP(Current Year Retweets % Diff (copy)_5331136077434630172)(2854064822)(0)",
  '0.8'::double precision AS "usr:Calculation_5185613514148941898:ok"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Timestamp" AS "Timestamp",
    "t1"."Impressions" AS "Impressions",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Impressions" AS "Impressions",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D6M3VzBPUGZIfSXf/ZzWnG", "lqctx-batch-query-id": "14" } } */
SELECT "t3"."__measure__1" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(1172973022)(0)",
  "t3"."__measure__2" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(4069847474)(0)",
  "t1"."sum:Likes:ok" AS "sum:Likes:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Likes") AS "sum:Likes:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M/csggfgUKRKsVdt2yGkfN", "lqctx-batch-query-id": "19" } } */
SELECT "t5"."__measure__1" AS "TEMP(Likes Highlight Colour (copy)_5331136077423841297)(1793316039)(0)",
  "t5"."__measure__2" AS "TEMP(Likes Highlight Colour (copy)_5331136077423841297)(2005101520)(0)",
  "t1"."sum:Comments:ok" AS "sum:Comments:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Comments") AS "sum:Comments:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")), "t4"."__measure__0")) THEN CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL) ELSE null::int END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t5"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BRy1pd0c0BNLJpvJWboeP5", "lqctx-batch-query-id": "4" } } */
SELECT "t3"."__measure__1" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(1172973022)(0)",
  "t3"."__measure__2" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(4069847474)(0)",
  "t1"."sum:Likes:ok" AS "sum:Likes:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM("Extract"."Likes") AS "sum:Likes:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M/csggfgUKRKsVdt2yGkfN", "lqctx-batch-query-id": "19" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KPzhZ/JpUu+IZjRq7VGCBL", "lqctx-batch-query-id": "21" } } */
SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = (TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse") + -1 * INTERVAL '1 MONTH')) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(1172973022)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Calculation_4013270235438100503)(4069847474)(0)",
  SUM((CASE WHEN ((CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) = (CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL) - 1)) AND (CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")) AS BIGINT OR NULL) <= CAST(EXTRACT(MONTH FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")) AS BIGINT OR NULL))) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(2449054680)(0)",
  SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."$temp1_cse")), "t2"."$temp1_cse")) THEN "t2"."Likes" ELSE null::double precision END)) AS "TEMP(Current Month Likes % Diff (copy)_4013270235439357978)(3430217264)(0)"
FROM (
  SELECT "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."Likes" AS "Likes",
    "t1"."Timestamp" AS "Timestamp",
    TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t1"."$temp1_cse")), "t1"."$temp1_cse") AS "$temp0_cse"
  FROM (
    SELECT "Extract"."Likes" AS "Likes",
      "Extract"."Timestamp" AS "Timestamp",
      "t0"."__measure__4" AS "$temp1_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
      HAVING (COUNT(1) > 0)
    ) "t0"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
  ) "t1"
) "t2"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KPzhZ/JpUu+IZjRq7VGCBL", "lqctx-batch-query-id": "21" } } */
SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "CR6e+VJy0KYILGojeIRwvg" } } */
SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type")) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "CR6e+VJy0KYILGojeIRwvg" } } */
SELECT (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "GIC+LZjXEB8IHg14ctQhvA" } } */
SELECT (1 + CAST(TRUNC(DATE_PART('DOW', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL)) AS "wd:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "GIC+LZjXEB8IHg14ctQhvA" } } */
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS "hr:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "CRDScU8Ok7bJrekzPba9eZ" } } */
SELECT CAST(TRUNC(EXTRACT(HOUR FROM TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp"))) AS BIGINT OR NULL) AS "hr:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND ('Link' COLLATE "en_GB" = "Extract"."Type"))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "CRDScU8Ok7bJrekzPba9eZ" } } */
SELECT n.nspname, n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema'
SELECT n.nspname, n.oid FROM pg_catalog.pg_namespace n WHERE n.nspname !~ '^pg_' AND n.nspname <> 'information_schema'
SELECT (CASE 'Link' COLLATE "en_GB" WHEN 'All' THEN TRUE WHEN "Extract"."Type" THEN TRUE ELSE FALSE END) AS "Calculation_4378061807685214222",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)",
  "Extract"."Type" AS "Type"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BqZtcuTuESfKndsUvrtsvF", "lqctx-batch-query-id": "27" } } */
SELECT (CASE 'Link' COLLATE "en_GB" WHEN 'All' THEN TRUE WHEN "Extract"."Type" THEN TRUE ELSE FALSE END) AS "Calculation_4378061807685214222",
  CAST(FLOOR(CAST("Extract"."Path" AS DOUBLE PRECISION OR NULL) / CAST(1 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Path (bin)",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "TEMP(TC_)(1846912170)(0)",
  "Extract"."Type" AS "Type"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BqZtcuTuESfKndsUvrtsvF", "lqctx-batch-query-id": "27" } } */
SELECT "Extract"."Post ID" AS "Post ID",
  "Extract"."Post ID" AS "min:Post ID:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "M9Ja5l0r01sIkqpCqI7RDG" } } */
SELECT "Extract"."Post ID" AS "Post ID",
  "Extract"."Post ID" AS "min:Post ID:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "M9Ja5l0r01sIkqpCqI7RDG" } } */
SELECT AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "avg:CPC_manual:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PqIqP6/rkuWK06jZVcHShG", "lqctx-batch-query-id": "3" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('1'::text) AS "Calculation_5185613514127790121",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514127941674:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MdAhzMuc044IEN6MzAX8t7", "lqctx-batch-query-id": "14" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_likes_split" AS "Segment_likes_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045129820:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FNq28B5sUC9LGU/MbUtwiS", "lqctx-batch-query-id": "11" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808038600792)(1053616820)(0)" AS "TEMP(Calculation_4378061808038600792)(1053616820)(0)",
  "t1"."TEMP(Calculation_4378061808038600792)(1912477073)(0)" AS "TEMP(Calculation_4378061808038600792)(1912477073)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808038600792)(510768008)(0)",
  "t1"."avg:Cost per Impressions:ok" AS "avg:Cost per Impressions:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    COUNT("Extract"."Cost per Impressions") AS "TEMP(Calculation_4378061808038600792)(1053616820)(0)",
    SUM("Extract"."Cost per Impressions") AS "TEMP(Calculation_4378061808038600792)(1912477073)(0)",
    AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Impressions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Bcza0YuekUeIAjI7ZmBjRp", "lqctx-batch-query-id": "6" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Impressions" AS "Impressions",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045207647:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Cd+H27nYUKzKDxqhGb/t4f", "lqctx-batch-query-id": "17" } } */
SELECT AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Impressions:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N6cq3254ktlLZYDAHH6QEc", "lqctx-batch-query-id": "5" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_comments_split" AS "Segment_comments_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045170781:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PQozAbZkkHVLlWlgjDj0pU", "lqctx-batch-query-id": "13" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808037126230)(3023506325)(0)" AS "TEMP(Calculation_4378061808037126230)(3023506325)(0)",
  "t1"."TEMP(Calculation_4378061808037126230)(3131680063)(0)" AS "TEMP(Calculation_4378061808037126230)(3131680063)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808037126230)(3506849536)(0)",
  "t1"."avg:CPC_manual:ok" AS "avg:CPC_manual:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    SUM("Extract"."CPC_manual") AS "TEMP(Calculation_4378061808037126230)(3023506325)(0)",
    COUNT("Extract"."CPC_manual") AS "TEMP(Calculation_4378061808037126230)(3131680063)(0)",
    AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "avg:CPC_manual:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lrzaq0XVUFNI/YQYUChOBc", "lqctx-batch-query-id": "4" } } */
SELECT AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "avg:Total_Segment_Interactions:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Kq7t6+UzUyLIsEfXkti2NP", "lqctx-batch-query-id": "7" } } */
SELECT AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "avg:CPC_manual:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PqIqP6/rkuWK06jZVcHShG", "lqctx-batch-query-id": "3" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_retweets_split" AS "Segment_retweets_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045191262:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BQ1LCiuMkYfI3YFrkq4x9j", "lqctx-batch-query-id": "15" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('2'::text) AS "Calculation_5185613514128199730",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128125998:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DHc0TZkGEnbIl7kLVRvfPF", "lqctx-batch-query-id": "12" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808038600792)(1053616820)(0)" AS "TEMP(Calculation_4378061808038600792)(1053616820)(0)",
  "t1"."TEMP(Calculation_4378061808038600792)(1912477073)(0)" AS "TEMP(Calculation_4378061808038600792)(1912477073)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808038600792)(510768008)(0)",
  "t1"."avg:Cost per Impressions:ok" AS "avg:Cost per Impressions:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    COUNT("Extract"."Cost per Impressions") AS "TEMP(Calculation_4378061808038600792)(1053616820)(0)",
    SUM("Extract"."Cost per Impressions") AS "TEMP(Calculation_4378061808038600792)(1912477073)(0)",
    AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Impressions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Bcza0YuekUeIAjI7ZmBjRp", "lqctx-batch-query-id": "6" } } */
SELECT AVG(CAST("Extract"."Cost per Impressions" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Impressions:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N6cq3254ktlLZYDAHH6QEc", "lqctx-batch-query-id": "5" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '1.0'::double precision AS "usr:Calculation_5185613514126577697:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DxdkePuxUtJLYtdedg/sXw", "lqctx-batch-query-id": "18" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_likes_split" AS "Segment_likes_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045129820:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FNq28B5sUC9LGU/MbUtwiS", "lqctx-batch-query-id": "11" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808041324634)(2092649867)(0)" AS "TEMP(Calculation_4378061808041324634)(2092649867)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808041324634)(2330348729)(0)",
  "t1"."TEMP(Calculation_4378061808041324634)(4166626548)(0)" AS "TEMP(Calculation_4378061808041324634)(4166626548)(0)",
  "t1"."avg:Total_Segment_Interactions:ok" AS "avg:Total_Segment_Interactions:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    COUNT("Extract"."Total_Segment_Interactions") AS "TEMP(Calculation_4378061808041324634)(2092649867)(0)",
    SUM("Extract"."Total_Segment_Interactions") AS "TEMP(Calculation_4378061808041324634)(4166626548)(0)",
    AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "avg:Total_Segment_Interactions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NErVPU3IUgtJSC0KiwVDQd", "lqctx-batch-query-id": "8" } } */
SELECT AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "avg:Total_Segment_Interactions:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Kq7t6+UzUyLIsEfXkti2NP", "lqctx-batch-query-id": "7" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('1'::text) AS "Calculation_5185613514127790121",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514127941674:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MdAhzMuc044IEN6MzAX8t7", "lqctx-batch-query-id": "14" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Impressions" AS "Impressions",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045207647:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Cd+H27nYUKzKDxqhGb/t4f", "lqctx-batch-query-id": "17" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808037126230)(3023506325)(0)" AS "TEMP(Calculation_4378061808037126230)(3023506325)(0)",
  "t1"."TEMP(Calculation_4378061808037126230)(3131680063)(0)" AS "TEMP(Calculation_4378061808037126230)(3131680063)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808037126230)(3506849536)(0)",
  "t1"."avg:CPC_manual:ok" AS "avg:CPC_manual:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    SUM("Extract"."CPC_manual") AS "TEMP(Calculation_4378061808037126230)(3023506325)(0)",
    COUNT("Extract"."CPC_manual") AS "TEMP(Calculation_4378061808037126230)(3131680063)(0)",
    AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "avg:CPC_manual:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."CPC_manual" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lrzaq0XVUFNI/YQYUChOBc", "lqctx-batch-query-id": "4" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_comments_split" AS "Segment_comments_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045170781:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PQozAbZkkHVLlWlgjDj0pU", "lqctx-batch-query-id": "13" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('3'::text) AS "Calculation_5185613514129031227",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128838709:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EfNv44G+0jcKW3ejXki66B", "lqctx-batch-query-id": "10" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('2'::text) AS "Calculation_5185613514128199730",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128125998:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DHc0TZkGEnbIl7kLVRvfPF", "lqctx-batch-query-id": "12" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  "Extract"."Segment_retweets_split" AS "Segment_retweets_split",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.27'::double precision AS "usr:Calculation_4378061808045191262:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BQ1LCiuMkYfI3YFrkq4x9j", "lqctx-batch-query-id": "15" } } */
SELECT "t1"."Ad Group" AS "Ad Group",
  "t1"."TEMP(Calculation_4378061808041324634)(2092649867)(0)" AS "TEMP(Calculation_4378061808041324634)(2092649867)(0)",
  "t3"."__measure__1" AS "TEMP(Calculation_4378061808041324634)(2330348729)(0)",
  "t1"."TEMP(Calculation_4378061808041324634)(4166626548)(0)" AS "TEMP(Calculation_4378061808041324634)(4166626548)(0)",
  "t1"."avg:Total_Segment_Interactions:ok" AS "avg:Total_Segment_Interactions:ok"
FROM (
  SELECT "Extract"."Ad Group" AS "Ad Group",
    COUNT("Extract"."Total_Segment_Interactions") AS "TEMP(Calculation_4378061808041324634)(2092649867)(0)",
    SUM("Extract"."Total_Segment_Interactions") AS "TEMP(Calculation_4378061808041324634)(4166626548)(0)",
    AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "avg:Total_Segment_Interactions:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT AVG(CAST("Extract"."Total_Segment_Interactions" AS DOUBLE PRECISION OR NULL)) AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NErVPU3IUgtJSC0KiwVDQd", "lqctx-batch-query-id": "8" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('4'::text) AS "Calculation_5185613514129465410",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514129346621:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "04vutyvskWkI4Kk/YzZYXg", "lqctx-batch-query-id": "16" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '1.0'::double precision AS "usr:Calculation_5185613514126577697:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DxdkePuxUtJLYtdedg/sXw", "lqctx-batch-query-id": "18" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('3'::text) AS "Calculation_5185613514129031227",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128838709:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EfNv44G+0jcKW3ejXki66B", "lqctx-batch-query-id": "10" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  ('4'::text) AS "Calculation_5185613514129465410",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514129346621:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "04vutyvskWkI4Kk/YzZYXg", "lqctx-batch-query-id": "16" } } */
SELECT "t5"."Calculation_5185613514120036378" AS "Calculation_5185613514120036378",
  "t5"."Calculation_5185613514120773661" AS "Calculation_5185613514120773661",
  CAST(TABLEAU.NORMALIZE_DATETIME("t5"."$temp1_import") AS DATE OR NULL) AS "Max Date (copy)_5185613514120454172",
  "t5"."Post ID" AS "Post ID",
  "t7"."__measure__3" AS "TEMP(Calculation_5185613514118795289)(1469243959)(0)",
  "t7"."__measure__4" AS "TEMP(Calculation_5185613514118795289)(3703574488)(0)",
  "t7"."__measure__5" AS "TEMP(Calculation_5185613514118795289)(594232309)(0)",
  "t5"."TEMP(Calculation_5185613514118795289)(908667754)(0)" AS "TEMP(Calculation_5185613514118795289)(908667754)(0)",
  "t7"."__measure__2" AS "TEMP(attr:Calculation_4378061808052744292:nk)(2681435799)(0)",
  "t7"."__measure__2" AS "TEMP(attr:Calculation_4378061808052744292:nk)(2990480919)(0)",
  "t5"."Timestamp" AS "Timestamp"
FROM (
  SELECT CAST(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__1") AS DATE OR NULL) AS "Calculation_5185613514120036378",
    ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= CAST(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__1") AS DATE OR NULL)) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0"))) AS "Calculation_5185613514120773661",
    "Extract"."Post ID" AS "Post ID",
    "Extract"."Timestamp" AS "Timestamp",
    MIN(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")) AS "$temp1_import",
    SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514118795289)(908667754)(0)"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MIN((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")) THEN TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") ELSE null::timestamp END)) AS "__measure__1",
      MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t1"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
        WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
        HAVING (COUNT(1) > 0)
      ) "t2"
      WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")), "t1"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1,
    2,
    3,
    4
) "t5"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "__measure__3",
    MIN("Extract"."Retweets") AS "__measure__4",
    MIN("Extract"."Likes") AS "__measure__5",
    MIN("Extract"."Content") AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t6"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t6"."__measure__0")), "t6"."__measure__0")))
  GROUP BY 1
) "t7" ON ("t5"."Post ID" IS NOT DISTINCT FROM "t7"."Post ID")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IeYAw+JVkTMJwygFrMXnVm", "lqctx-batch-query-id": "9" } } */
SELECT "t5"."Calculation_5185613514120036378" AS "Calculation_5185613514120036378",
  "t5"."Calculation_5185613514120773661" AS "Calculation_5185613514120773661",
  CAST(TABLEAU.NORMALIZE_DATETIME("t5"."$temp1_import") AS DATE OR NULL) AS "Max Date (copy)_5185613514120454172",
  "t5"."Post ID" AS "Post ID",
  "t7"."__measure__3" AS "TEMP(Calculation_5185613514118795289)(1469243959)(0)",
  "t7"."__measure__4" AS "TEMP(Calculation_5185613514118795289)(3703574488)(0)",
  "t7"."__measure__5" AS "TEMP(Calculation_5185613514118795289)(594232309)(0)",
  "t5"."TEMP(Calculation_5185613514118795289)(908667754)(0)" AS "TEMP(Calculation_5185613514118795289)(908667754)(0)",
  "t7"."__measure__2" AS "TEMP(attr:Calculation_4378061808052744292:nk)(2681435799)(0)",
  "t7"."__measure__2" AS "TEMP(attr:Calculation_4378061808052744292:nk)(2990480919)(0)",
  "t5"."Timestamp" AS "Timestamp"
FROM (
  SELECT CAST(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__1") AS DATE OR NULL) AS "Calculation_5185613514120036378",
    ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= CAST(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__1") AS DATE OR NULL)) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0"))) AS "Calculation_5185613514120773661",
    "Extract"."Post ID" AS "Post ID",
    "Extract"."Timestamp" AS "Timestamp",
    MIN(TABLEAU.NORMALIZE_DATETIME("t4"."__measure__0")) AS "$temp1_import",
    SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514118795289)(908667754)(0)"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
    CROSS JOIN (
    SELECT MIN((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0")) THEN TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") ELSE null::timestamp END)) AS "__measure__1",
      MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t1"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
        WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
        HAVING (COUNT(1) > 0)
      ) "t2"
      WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
      HAVING (COUNT(1) > 0)
    ) "t3"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")), "t1"."__measure__0")))
    HAVING (COUNT(1) > 0)
  ) "t4"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1,
    2,
    3,
    4
) "t5"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "__measure__3",
    MIN("Extract"."Retweets") AS "__measure__4",
    MIN("Extract"."Likes") AS "__measure__5",
    MIN("Extract"."Content") AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t6"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t6"."__measure__0")), "t6"."__measure__0")))
SELECT "t4"."Calculation_4013270235441242144" AS "Calculation_4013270235441242144",
  "t12"."__measure__2" AS "sum:Calculation_5331136077450895401:ok",
  "t12"."__measure__1" AS "sum:Post ID per month LOD (copy)_5331136077452345387:ok",
  "t4"."sum:Segment Budget:ok" AS "sum:Segment Budget:ok"
FROM (
  SELECT ((TABLEAU.LEFT(TO_CHAR(TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse"), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
    SUM("t2"."Segment Budget") AS "sum:Segment Budget:ok"
  FROM (
    SELECT "Extract"."Segment Budget" AS "Segment Budget",
      "Extract"."Timestamp" AS "Timestamp",
      "t1"."__measure__0" AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
        WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
        HAVING (COUNT(1) > 0)
      ) "t0"
      WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
      HAVING (COUNT(1) > 0)
    ) "t1"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t3"
  WHERE (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0"))
  GROUP BY 1
) "t4"
  INNER JOIN (
  SELECT "t9"."Calculation_4013270235441242144" AS "Calculation_4013270235441242144",
    SUM("t11"."__measure__4") AS "__measure__2",
    SUM("t11"."__measure__5") AS "__measure__1"
  FROM (
    SELECT ((TABLEAU.LEFT(TO_CHAR(TABLEAU.NORMALIZE_DATETIME("t7"."$temp1_cse"), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t7"."$temp1_cse")) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
      TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t7"."Timestamp")), "t7"."Timestamp") AS "__dimension__3"
    FROM (
      SELECT "Extract"."Timestamp" AS "Timestamp",
        "t6"."__measure__0" AS "$temp1_cse"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
          CROSS JOIN (
          SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
          FROM "Extract"."Extract" "Extract"
          WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
          HAVING (COUNT(1) > 0)
        ) "t5"
        WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t5"."__measure__0")), "t5"."__measure__0")))
        HAVING (COUNT(1) > 0)
      ) "t6"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    ) "t7"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t8"
    WHERE (TABLEAU.NORMALIZE_DATETIME(TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t7"."Timestamp")), "t7"."Timestamp")) = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t8"."__measure__0")), "t8"."__measure__0"))
    GROUP BY 1,
      2
  ) "t9"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "__dimension__3",
      COUNT(DISTINCT "Extract"."Post ID") AS "__measure__4",
      COUNT(DISTINCT (CASE WHEN "Extract"."Boosted" THEN "Extract"."Post ID" ELSE null::int END)) AS "__measure__5"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t10"
    WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.NORMALIZE_DATETIME(TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp")) = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t10"."__measure__0")), "t10"."__measure__0")))
    GROUP BY 1
  ) "t11" ON ("t9"."__dimension__3" = "t11"."__dimension__3")
  GROUP BY 1
) "t12" ON ("t4"."Calculation_4013270235441242144" IS NOT DISTINCT FROM "t12"."Calculation_4013270235441242144")
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PePWwNzhEXQIgSPEQi6Hgk", "lqctx-batch-query-id": "2" } } */
SELECT "t4"."Calculation_4013270235441242144" AS "Calculation_4013270235441242144",
  "t12"."__measure__2" AS "sum:Calculation_5331136077450895401:ok",
  "t12"."__measure__1" AS "sum:Post ID per month LOD (copy)_5331136077452345387:ok",
  "t4"."sum:Segment Budget:ok" AS "sum:Segment Budget:ok"
FROM (
  SELECT ((TABLEAU.LEFT(TO_CHAR(TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse"), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t2"."$temp0_cse")) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
    SUM("t2"."Segment Budget") AS "sum:Segment Budget:ok"
  FROM (
    SELECT "Extract"."Segment Budget" AS "Segment Budget",
      "Extract"."Timestamp" AS "Timestamp",
      "t1"."__measure__0" AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
        WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
        HAVING (COUNT(1) > 0)
      ) "t0"
      WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
      HAVING (COUNT(1) > 0)
    ) "t1"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  ) "t2"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t3"
  WHERE (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."Timestamp")), "t2"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t3"."__measure__0")), "t3"."__measure__0"))
  GROUP BY 1
) "t4"
  INNER JOIN (
  SELECT "t9"."Calculation_4013270235441242144" AS "Calculation_4013270235441242144",
    SUM("t11"."__measure__4") AS "__measure__2",
    SUM("t11"."__measure__5") AS "__measure__1"
  FROM (
    SELECT ((TABLEAU.LEFT(TO_CHAR(TABLEAU.NORMALIZE_DATETIME("t7"."$temp1_cse"), 'FMMonth'),3) || '-') || TABLEAU.RIGHT(CAST(CAST(EXTRACT(YEAR FROM TABLEAU.NORMALIZE_DATETIME("t7"."$temp1_cse")) AS BIGINT OR NULL) AS TEXT OR NULL),2)) AS "Calculation_4013270235441242144",
      TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t7"."Timestamp")), "t7"."Timestamp") AS "__dimension__3"
    FROM (
      SELECT "Extract"."Timestamp" AS "Timestamp",
        "t6"."__measure__0" AS "$temp1_cse"
      FROM "Extract"."Extract" "Extract"
        CROSS JOIN (
        SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
        FROM "Extract"."Extract" "Extract"
          CROSS JOIN (
          SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
          FROM "Extract"."Extract" "Extract"
          WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
          HAVING (COUNT(1) > 0)
        ) "t5"
        WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t5"."__measure__0")), "t5"."__measure__0")))
        HAVING (COUNT(1) > 0)
      ) "t6"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    ) "t7"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
      HAVING (COUNT(1) > 0)
    ) "t8"
    WHERE (TABLEAU.NORMALIZE_DATETIME(TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t7"."Timestamp")), "t7"."Timestamp")) = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t8"."__measure__0")), "t8"."__measure__0"))
    GROUP BY 1,
      2
  ) "t9"
    INNER JOIN (
    SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "__dimension__3",
      COUNT(DISTINCT "Extract"."Post ID") AS "__measure__4",
      COUNT(DISTINCT (CASE WHEN "Extract"."Boosted" THEN "Extract"."Post ID" ELSE null::int END)) AS "__measure__5"
    FROM "Extract"."Extract" "Extract"
      CROSS JOIN (
      SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
      FROM "Extract"."Extract" "Extract"
      WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timesta
SELECT "Extract"."Post ID" AS "Post ID",
  (CAST(((MIN(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) + MIN("Extract"."Likes")) + MIN("Extract"."Retweets")) AS DOUBLE PRECISION OR NULL) / NULLIF(SUM("Extract"."Impressions"),0)) AS "usr:Calculation_5185613514118795289:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__4")), "t0"."__measure__4")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "G6xB2i99k8VLknLQLQdTFy" } } */
SELECT "Extract"."Post ID" AS "Post ID",
  (CAST(((MIN(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) + MIN("Extract"."Likes")) + MIN("Extract"."Retweets")) AS DOUBLE PRECISION OR NULL) / NULLIF(SUM("Extract"."Impressions"),0)) AS "usr:Calculation_5185613514118795289:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__4"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__4")), "t0"."__measure__4")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "G6xB2i99k8VLknLQLQdTFy" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066498668",
  ('4'::text) AS "Calculation_5185613514129465410",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514129346621:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C0VQSWrlkHkJUXiDXYOUa3", "lqctx-batch-query-id": "16" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066445418",
  ('1'::text) AS "Calculation_5185613514127790121",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514127941674:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DOc0QUMBU9YLjsOKFV2Cjz", "lqctx-batch-query-id": "14" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066396264",
  ('2'::text) AS "Calculation_5185613514128199730",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128125998:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NMujcX2nkv5JLbmrdWB93i", "lqctx-batch-query-id": "12" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066269286",
  ('3'::text) AS "Calculation_5185613514129031227",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128838709:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0XeQlzCaU8tJyaK9WzuarF", "lqctx-batch-query-id": "10" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066498668",
  ('4'::text) AS "Calculation_5185613514129465410",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514129346621:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C0VQSWrlkHkJUXiDXYOUa3", "lqctx-batch-query-id": "16" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066445418",
  ('1'::text) AS "Calculation_5185613514127790121",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514127941674:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DOc0QUMBU9YLjsOKFV2Cjz", "lqctx-batch-query-id": "14" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066396264",
  ('2'::text) AS "Calculation_5185613514128199730",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128125998:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NMujcX2nkv5JLbmrdWB93i", "lqctx-batch-query-id": "12" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  "t1"."__measure__1" AS "Calculation_4378061808052744292",
  (''::text) AS "Calculation_4378061808066269286",
  ('3'::text) AS "Calculation_5185613514129031227",
  SUM("Extract"."Segment_comments_split") AS "TEMP(Calculation_5185613514142855241)(1739401247)(0)",
  SUM("Extract"."Segment_likes_split") AS "TEMP(Calculation_5185613514142855241)(2389403615)(0)",
  SUM("Extract"."Impressions") AS "TEMP(Calculation_5185613514142855241)(2639511941)(0)",
  SUM("Extract"."Segment_retweets_split") AS "TEMP(Calculation_5185613514142855241)(304597571)(0)",
  '0.2'::double precision AS "usr:Calculation_5185613514128838709:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN (
  SELECT "Extract"."Post ID" AS "Post ID",
    MIN("Extract"."Content") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1" ON ("Extract"."Post ID" IS NOT DISTINCT FROM "t1"."Post ID")
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t2"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted") AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0XeQlzCaU8tJyaK9WzuarF", "lqctx-batch-query-id": "10" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  AVG(CAST("Extract"."Cost per Click" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Click:ok",
  SUM("Extract"."Segment_comments_split") AS "sum:Segment_comments_split:ok",
  SUM("Extract"."Segment_likes_split") AS "sum:Segment_likes_split:ok",
  SUM("Extract"."Segment_retweets_split") AS "sum:Segment_retweets_split:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HNHifBhuEm3KBmATEe9Upw", "lqctx-batch-query-id": "9" } } */
SELECT "Extract"."Category" AS "Category",
  SUM(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "sum:Calculation_4013270235443613741:ok",
  SUM("Extract"."Likes") AS "sum:Likes:ok",
  SUM("Extract"."Retweets") AS "sum:Retweets:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HBwdYFyvktMKVAvsTwow6B", "lqctx-batch-query-id": "4" } } */
SELECT "Extract"."Type" AS "Type",
  COUNT(DISTINCT "Extract"."Post ID") AS "ctd:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OTFPeNRl0CgLJRA8iQqn8Z", "lqctx-batch-query-id": "10" } } */
SELECT "t0"."Boosted" AS "Boosted",
  "t0"."cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok" AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok",
  (CAST("t1"."__measure__0" AS DOUBLE PRECISION OR NULL) / NULLIF("t1"."__measure__1",0)) AS "sum:Calculation_5331136077455298605:ok",
  0 AS "usr:Calculation_4013270235422408710:ok"
FROM (
  SELECT "Extract"."Boosted" AS "Boosted",
    SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  GROUP BY 1
) "t0"
  CROSS JOIN (
  SELECT COUNT(DISTINCT (CASE WHEN "Extract"."Boosted" THEN "Extract"."Post ID" ELSE null::int END)) AS "__measure__0",
    COUNT(DISTINCT "Extract"."Post ID") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t1"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0czFyTgeUXDL2ewrQkfCjC", "lqctx-batch-query-id": "6" } } */
SELECT "Extract"."Category" AS "Category",
  SUM(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "sum:Calculation_4013270235443613741:ok",
  SUM("Extract"."Likes") AS "sum:Likes:ok",
  SUM("Extract"."Retweets") AS "sum:Retweets:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HBwdYFyvktMKVAvsTwow6B", "lqctx-batch-query-id": "4" } } */
SELECT "Extract"."Ad Group" AS "Ad Group",
  AVG(CAST("Extract"."Cost per Click" AS DOUBLE PRECISION OR NULL)) AS "avg:Cost per Click:ok",
  SUM("Extract"."Segment_comments_split") AS "sum:Segment_comments_split:ok",
  SUM("Extract"."Segment_likes_split") AS "sum:Segment_likes_split:ok",
  SUM("Extract"."Segment_retweets_split") AS "sum:Segment_retweets_split:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp) AND "Extract"."Boosted")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HNHifBhuEm3KBmATEe9Upw", "lqctx-batch-query-id": "9" } } */
SELECT "Extract"."Category" AS "Category",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "sum:Calculation_4013270235424612364:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GfpB7yBxEkbLN4TQGrkHxL", "lqctx-batch-query-id": "5" } } */
SELECT "Extract"."Type" AS "Type",
  COUNT(DISTINCT "Extract"."Post ID") AS "ctd:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OTFPeNRl0CgLJRA8iQqn8Z", "lqctx-batch-query-id": "10" } } */
SELECT "t0"."cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok" AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok",
  "t3"."__measure__2" AS "sum:Calculation_4013270235423383563:ok",
  0 AS "usr:Calculation_4013270235422490632:ok"
FROM (
  SELECT SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
  CROSS JOIN (
  SELECT SUM((CAST((CASE WHEN "t1"."Boosted" THEN "t1"."__measure__1" ELSE null::int END) AS DOUBLE PRECISION OR NULL) / NULLIF("t2"."__measure__1",0))) AS "__measure__2"
  FROM (
    SELECT "Extract"."Boosted" AS "Boosted",
      SUM(1) AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    GROUP BY 1
  ) "t1"
    CROSS JOIN (
    SELECT SUM(1) AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lkmf3jXKkTKK6HGs8kLq99", "lqctx-batch-query-id": "7" } } */
SELECT "t0"."Boosted" AS "Boosted",
  "t0"."cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok" AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok",
  (CAST("t1"."__measure__0" AS DOUBLE PRECISION OR NULL) / NULLIF("t1"."__measure__1",0)) AS "sum:Calculation_5331136077455298605:ok",
  0 AS "usr:Calculation_4013270235422408710:ok"
FROM (
  SELECT "Extract"."Boosted" AS "Boosted",
    SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  GROUP BY 1
) "t0"
  CROSS JOIN (
  SELECT COUNT(DISTINCT (CASE WHEN "Extract"."Boosted" THEN "Extract"."Post ID" ELSE null::int END)) AS "__measure__0",
    COUNT(DISTINCT "Extract"."Post ID") AS "__measure__1"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t1"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0czFyTgeUXDL2ewrQkfCjC", "lqctx-batch-query-id": "6" } } */
SELECT "Extract"."Category" AS "Category",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "sum:Calculation_4013270235424612364:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GfpB7yBxEkbLN4TQGrkHxL", "lqctx-batch-query-id": "5" } } */
SELECT "t0"."cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok" AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok",
  "t3"."__measure__2" AS "sum:Calculation_4013270235423383563:ok",
  0 AS "usr:Calculation_4013270235422490632:ok"
FROM (
  SELECT SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
  CROSS JOIN (
  SELECT SUM((CAST((CASE WHEN "t1"."Boosted" THEN "t1"."__measure__1" ELSE null::int END) AS DOUBLE PRECISION OR NULL) / NULLIF("t2"."__measure__1",0))) AS "__measure__2"
  FROM (
    SELECT "Extract"."Boosted" AS "Boosted",
      SUM(1) AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    GROUP BY 1
  ) "t1"
    CROSS JOIN (
    SELECT SUM(1) AS "__measure__1"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lkmf3jXKkTKK6HGs8kLq99", "lqctx-batch-query-id": "7" } } */
SELECT CAST(TABLEAU.NORMALIZE_DATETIME("t1"."__measure__2") AS DATE OR NULL) AS "Calculation_5185613514120036378",
  CAST(MIN(TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")) AS DATE OR NULL) AS "Max Date (copy)_5185613514120454172",
  "Extract"."Post ID" AS "Post ID",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "sum:Calculation_4013270235424612364:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tdy:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MIN((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")) THEN TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") ELSE null::timestamp END)) AS "__measure__2",
    MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t1"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")), "t1"."__measure__0")))
GROUP BY 1,
  3,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IlcS1sxlE0WLTp64akFDcX", "lqctx-batch-query-id": "8" } } */
SELECT "t3"."__measure__1" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(1172973022)(0)",
  "t3"."__measure__2" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(4069847474)(0)",
  0 AS "sum:Calculation_4013270235407958019:ok",
  "t1"."sum:Calculation_4013270235443613741:ok" AS "sum:Calculation_4013270235443613741:ok",
  "t1"."sum:Impressions:ok" AS "sum:Impressions:ok",
  "t1"."sum:Likes:ok" AS "sum:Likes:ok",
  "t1"."sum:Retweets:ok" AS "sum:Retweets:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "sum:Calculation_4013270235443613741:ok",
    SUM("Extract"."Impressions") AS "sum:Impressions:ok",
    SUM("Extract"."Likes") AS "sum:Likes:ok",
    SUM("Extract"."Retweets") AS "sum:Retweets:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "GThL9cITU32J/tXsSwVlmv", "lqctx-batch-query-id": "11" } } */
SELECT CAST(TABLEAU.NORMALIZE_DATETIME("t1"."__measure__2") AS DATE OR NULL) AS "Calculation_5185613514120036378",
  CAST(MIN(TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")) AS DATE OR NULL) AS "Max Date (copy)_5185613514120454172",
  "Extract"."Post ID" AS "Post ID",
  SUM((("Extract"."Likes" + "Extract"."Retweets") + CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL))) AS "sum:Calculation_4013270235424612364:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('DAY', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tdy:Timestamp:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MIN((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")) THEN TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") ELSE null::timestamp END)) AS "__measure__2",
    MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t1"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t1"."__measure__0")), "t1"."__measure__0")))
GROUP BY 1,
  3,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IlcS1sxlE0WLTp64akFDcX", "lqctx-batch-query-id": "8" } } */
SELECT "t3"."__measure__1" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(1172973022)(0)",
  "t3"."__measure__2" AS "TEMP(Current Month Likes (copy)_5331136077398114307)(4069847474)(0)",
  0 AS "sum:Calculation_4013270235407958019:ok",
  "t1"."sum:Calculation_4013270235443613741:ok" AS "sum:Calculation_4013270235443613741:ok",
  "t1"."sum:Impressions:ok" AS "sum:Impressions:ok",
  "t1"."sum:Likes:ok" AS "sum:Likes:ok",
  "t1"."sum:Retweets:ok" AS "sum:Retweets:ok",
  "t1"."tmn:Timestamp:ok" AS "tmn:Timestamp:ok"
FROM (
  SELECT TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") AS "tmn:Timestamp:ok",
    SUM(CAST(CEIL("Extract"."Comments") AS BIGINT OR NULL)) AS "sum:Calculation_4013270235443613741:ok",
    SUM("Extract"."Impressions") AS "sum:Impressions:ok",
    SUM("Extract"."Likes") AS "sum:Likes:ok",
    SUM("Extract"."Retweets") AS "sum:Retweets:ok"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t0"
  WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
  GROUP BY 1
) "t1"
  CROSS JOIN (
  SELECT SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0") + -1 * INTERVAL '1 MONTH')) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__1",
    SUM((CASE WHEN (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t2"."__measure__0")), "t2"."__measure__0")) THEN "Extract"."Likes" ELSE null::double precision END)) AS "__measure__2"
  FROM "Extract"."Extract" "Extract"
    CROSS JOIN (
    SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
    FROM "Extract"."Extract" "Extract"
    WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
    HAVING (COUNT(1) > 0)
  ) "t2"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t3"
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "GThL9cITU32J/tXsSwVlmv", "lqctx-batch-query-id": "11" } } */
SELECT "Extract"."Boosted" AS "Boosted",
  SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "MSnbyYaMUvsKB3kd5s9KPl" } } */
SELECT "Extract"."Boosted" AS "Boosted",
  SUM(1) AS "cnt:mock_twitter_data_L10.2.csv_EEFB9B5BF2BB43F28D1CC10EEC6EDCFA:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "MSnbyYaMUvsKB3kd5s9KPl" } } */
SELECT COUNT(DISTINCT "Extract"."Post ID") AS "ctd:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Di/iuCFO0H1KU5K2S9VcGI" } } */
SELECT COUNT(DISTINCT "Extract"."Post ID") AS "ctd:Post ID:ok"
FROM "Extract"."Extract" "Extract"
  CROSS JOIN (
  SELECT MAX(TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")) AS "__measure__0"
  FROM "Extract"."Extract" "Extract"
  WHERE ((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp))
  HAVING (COUNT(1) > 0)
) "t0"
WHERE (((TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") >= '2022-01-01 09:24:00.000'::timestamp) AND (TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp") <= '2023-09-30 23:59:59.000'::timestamp)) AND (TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("Extract"."Timestamp")), "Extract"."Timestamp") = TABLEAU.TO_DATETIME(DATE_TRUNC('MONTH', TABLEAU.NORMALIZE_DATETIME("t0"."__measure__0")), "t0"."__measure__0")))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Di/iuCFO0H1KU5K2S9VcGI" } } */
