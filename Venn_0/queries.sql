SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "0JpfgM54UyUIH7AGc166Y7" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "PECr2K+R0UoL2ZxyER+fV4" } } */;
SELECT "t5"."Layer (copy)" AS "Layer (copy)",
  AVG(CAST((CASE WHEN ("t5"."Layer (copy)" = 'JD') THEN '1'::double precision WHEN ("t5"."Layer (copy)" = 'JB') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'MB') THEN '0.5'::double precision ELSE null::double precision END) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_1311111163618762:ok",
  AVG(CAST((CASE WHEN ("t5"."Layer (copy)" = 'JD') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'JB') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'MB') THEN '1'::double precision WHEN ("t5"."Layer (copy)" = 'JBJD') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'JDMB') THEN '0.5'::double precision WHEN ("t5"."Layer (copy)" = 'JBMB') THEN '0.5'::double precision WHEN ("t5"."Layer (copy)" = 'Combined') THEN '0.5'::double precision ELSE null::double precision END) AS DOUBLE PRECISION OR NULL)) AS "avg:X Pos (copy):ok",
  COUNT(DISTINCT "t5"."Customer Name") AS "ctd:Customer Name:ok",
  "t5"."io:Jumbo_Box:nk" AS "io:Jumbo_Box:nk"
FROM (
  SELECT "t4"."Customer Name" AS "Customer Name",
    (CASE WHEN ("t4"."$temp0_cse" AND "t4"."$temp2_cse" AND "t4"."$temp3_cse") THEN 'JB' WHEN ("t4"."$temp1_cse" AND "t4"."$temp4_cse" AND "t4"."$temp3_cse") THEN 'JD' WHEN ("t4"."$temp1_cse" AND "t4"."$temp2_cse" AND "t4"."$temp5_cse") THEN 'MB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp4_cse" AND "t4"."$temp3_cse") THEN 'JBJD' WHEN ("t4"."$temp1_cse" AND "t4"."$temp4_cse" AND "t4"."$temp5_cse") THEN 'JDMB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp2_cse" AND "t4"."$temp5_cse") THEN 'JBMB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp4_cse" AND "t4"."$temp5_cse") THEN 'Combined' ELSE null::text END) AS "Layer (copy)",
    "t4"."$temp0_cse" AS "io:Jumbo_Box:nk"
  FROM (
    SELECT "t3"."$temp2_cse" AS "$temp2_cse",
      "t3"."$temp1_cse" AS "$temp1_cse",
      "t3"."Customer Name" AS "Customer Name",
      "t3"."$temp3_cse" AS "$temp3_cse",
      (NOT "t3"."$temp1_cse") AS "$temp0_cse",
      (NOT "t3"."$temp2_cse") AS "$temp4_cse",
      (NOT "t3"."$temp3_cse") AS "$temp5_cse"
    FROM (
      SELECT "Extract"."Customer Name" AS "Customer Name",
        ("t0"."$temp7_output" IS NULL) AS "$temp1_cse",
        ("t1"."$temp9_output" IS NULL) AS "$temp2_cse",
        ("t2"."$temp11_output" IS NULL) AS "$temp3_cse"
      FROM "Extract"."Extract" "Extract"
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp7_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Box') THEN 1 ELSE null::int END)) > 0)
      ) "t0" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t0"."Customer Name")
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp9_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Drum') THEN 1 ELSE null::int END)) > 0)
      ) "t1" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t1"."Customer Name")
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp11_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Medium Box') THEN 1 ELSE null::int END)) > 0)
      ) "t2" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t2"."Customer Name")
    ) "t3"
  ) "t4"
) "t5"
WHERE (("t5"."Layer (copy)" >= 'Combined') AND ("t5"."Layer (copy)" <= 'MB'))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NAzhIUX8E4fLdWLhK0Z3pn", "lqctx-batch-query-id": "1" } } */;
SELECT "t5"."Layer (copy)" AS "Layer (copy)",
  AVG(CAST((CASE WHEN ("t5"."Layer (copy)" = 'JBJD') THEN '0.5'::double precision WHEN ("t5"."Layer (copy)" = 'JDMB') THEN '0.75'::double precision WHEN ("t5"."Layer (copy)" = 'JBMB') THEN '0.25'::double precision WHEN ("t5"."Layer (copy)" = 'Combined') THEN '0.5'::double precision ELSE null::double precision END) AS DOUBLE PRECISION OR NULL)) AS "avg:Calculation_9681111152109238:ok",
  AVG(CAST((CASE WHEN ("t5"."Layer (copy)" = 'JD') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'JB') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'MB') THEN '1'::double precision WHEN ("t5"."Layer (copy)" = 'JBJD') THEN '0'::double precision WHEN ("t5"."Layer (copy)" = 'JDMB') THEN '0.5'::double precision WHEN ("t5"."Layer (copy)" = 'JBMB') THEN '0.5'::double precision WHEN ("t5"."Layer (copy)" = 'Combined') THEN '0.5'::double precision ELSE null::double precision END) AS DOUBLE PRECISION OR NULL)) AS "avg:X Pos (copy):ok",
  COUNT(DISTINCT "t5"."Customer Name") AS "ctd:Customer Name:ok"
FROM (
  SELECT "t4"."Customer Name" AS "Customer Name",
    (CASE WHEN ("t4"."$temp0_cse" AND "t4"."$temp2_cse" AND "t4"."$temp3_cse") THEN 'JB' WHEN ("t4"."$temp1_cse" AND "t4"."$temp4_cse" AND "t4"."$temp3_cse") THEN 'JD' WHEN ("t4"."$temp1_cse" AND "t4"."$temp2_cse" AND "t4"."$temp5_cse") THEN 'MB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp4_cse" AND "t4"."$temp3_cse") THEN 'JBJD' WHEN ("t4"."$temp1_cse" AND "t4"."$temp4_cse" AND "t4"."$temp5_cse") THEN 'JDMB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp2_cse" AND "t4"."$temp5_cse") THEN 'JBMB' WHEN ("t4"."$temp0_cse" AND "t4"."$temp4_cse" AND "t4"."$temp5_cse") THEN 'Combined' ELSE null::text END) AS "Layer (copy)"
  FROM (
    SELECT "t3"."$temp2_cse" AS "$temp2_cse",
      "t3"."$temp1_cse" AS "$temp1_cse",
      "t3"."Customer Name" AS "Customer Name",
      "t3"."$temp3_cse" AS "$temp3_cse",
      (NOT "t3"."$temp1_cse") AS "$temp0_cse",
      (NOT "t3"."$temp2_cse") AS "$temp4_cse",
      (NOT "t3"."$temp3_cse") AS "$temp5_cse"
    FROM (
      SELECT "Extract"."Customer Name" AS "Customer Name",
        ("t0"."$temp7_output" IS NULL) AS "$temp1_cse",
        ("t1"."$temp9_output" IS NULL) AS "$temp2_cse",
        ("t2"."$temp11_output" IS NULL) AS "$temp3_cse"
      FROM "Extract"."Extract" "Extract"
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp7_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Box') THEN 1 ELSE null::int END)) > 0)
      ) "t0" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t0"."Customer Name")
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp9_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Drum') THEN 1 ELSE null::int END)) > 0)
      ) "t1" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t1"."Customer Name")
        LEFT JOIN (
        SELECT "Extract"."Customer Name" AS "Customer Name",
          1 AS "$temp11_output"
        FROM "Extract"."Extract" "Extract"
        GROUP BY 1
        HAVING (SUM((CASE WHEN ("Extract"."Product Container" = 'Medium Box') THEN 1 ELSE null::int END)) > 0)
      ) "t2" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t2"."Customer Name")
    ) "t3"
  ) "t4"
) "t5"
WHERE (("t5"."Layer (copy)" >= 'Combined') AND ("t5"."Layer (copy)" <= 'MB'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NgmNdn5Q0NXIn0rQvEM8fw", "lqctx-batch-query-id": "0" } } */;
SELECT 1 AS "Calculation_8030929093539750",
  "Extract"."Product Container" AS "Product Container",
  COUNT(DISTINCT "Extract"."Customer Name") AS "ctd:Customer Name:ok",
  COUNT(DISTINCT (CASE WHEN (("Extract"."Product Container" <> 'Jumbo Box') AND ("t0"."$temp1_output" IS NULL)) THEN "Extract"."Customer Name" ELSE null::text END) COLLATE "en_US_CI") AS "usr:Calculation_8650929094105968:ok"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Extract"."Customer Name" AS "Customer Name",
    1 AS "$temp1_output"
  FROM "Extract"."Extract" "Extract"
  GROUP BY 1
  HAVING ((SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Box') THEN 1 ELSE null::int END)) > 0) AND (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Drum') THEN 1 ELSE null::int END)) > 0))
) "t0" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t0"."Customer Name")
WHERE (CASE WHEN (("Extract"."Product Container" IN ('Jumbo Box', 'Jumbo Drum')) OR ("Extract"."Product Container" IS NULL)) THEN TRUE ELSE FALSE END)
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O/wa11G/kWJKkHn9xfVInY", "lqctx-batch-query-id": "0" } } */;
SELECT 1 AS "Calculation_8030929093539750",
  COUNT(DISTINCT (CASE WHEN (("Extract"."Product Container" <> 'Jumbo Box') AND ("t0"."$temp2_output" IS NULL)) THEN "Extract"."Customer Name" ELSE null::text END) COLLATE "en_US_CI") AS "TEMP(Calculation_8650929094105968)(3152229427)(0)",
  COUNT(DISTINCT "Extract"."Customer Name") AS "ctd:Customer Name:ok",
  COUNT(DISTINCT (CASE WHEN (NOT ("t0"."$temp2_output" IS NULL)) THEN "Extract"."Customer Name" ELSE null::text END) COLLATE "en_US_CI") AS "usr:Calculation_0440929094505522:ok"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Extract"."Customer Name" AS "Customer Name",
    1 AS "$temp2_output"
  FROM "Extract"."Extract" "Extract"
  GROUP BY 1
  HAVING ((SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Box') THEN 1 ELSE null::int END)) > 0) AND (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Drum') THEN 1 ELSE null::int END)) > 0))
) "t0" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t0"."Customer Name")
WHERE (CASE WHEN (("Extract"."Product Container" IN ('Jumbo Box', 'Jumbo Drum')) OR ("Extract"."Product Container" IS NULL)) THEN TRUE ELSE FALSE END)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O8wXkSsJkDjIkUtDvVlAxh", "lqctx-batch-query-id": "1" } } */;
SELECT COUNT(DISTINCT "Extract"."Customer Name") AS "ctd:Customer Name:ok",
  COUNT(DISTINCT (CASE WHEN (("Extract"."Product Container" <> 'Jumbo Box') AND ("t0"."$temp1_output" IS NULL)) THEN "Extract"."Customer Name" ELSE null::text END) COLLATE "en_US_CI") AS "usr:Calculation_8650929094105968:ok"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Extract"."Customer Name" AS "Customer Name",
    1 AS "$temp1_output"
  FROM "Extract"."Extract" "Extract"
  GROUP BY 1
  HAVING ((SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Box') THEN 1 ELSE null::int END)) > 0) AND (SUM((CASE WHEN ("Extract"."Product Container" = 'Jumbo Drum') THEN 1 ELSE null::int END)) > 0))
) "t0" ON ("Extract"."Customer Name" IS NOT DISTINCT FROM "t0"."Customer Name")
WHERE (CASE WHEN (("Extract"."Product Container" IN ('Jumbo Box', 'Jumbo Drum')) OR ("Extract"."Product Container" IS NULL)) THEN TRUE ELSE FALSE END)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "DGezPURq0D8LGgeX/ijk1V" } } */;
SELECT "t1"."Containers Match (copy)" AS "Containers Match (copy)",
  "t1"."Product Container" AS "Product Container",
  COUNT(DISTINCT "t1"."Customer Name2") AS "TEMP(TC_)(3398353009)(0)",
  "t1"."Product Container" AS "TEMP(TEMP(TC_)(3358977185)(0))(3190964526)(0)",
  "t1"."Product Container" AS "TEMP(TEMP(TC_)(3358977185)(0))(3726835869)(0)",
  LENGTH("t1"."Containers Match (copy)") AS "min:Calculation_7260715074427621:ok"
FROM (
  SELECT "t0"."Customer Name2" AS "Customer Name2",
    "t0"."Product Container2" AS "Product Container",
    (CASE WHEN (("t0"."Product Container2" > "t0"."Product Container") AND ("t0"."Product Container" > "t0"."Product Container1")) THEN (("t0"."$temp0_cse" || ' - ') COLLATE "en_GB" || "t0"."Product Container1") COLLATE "en_GB" WHEN (("t0"."Product Container2" < "t0"."Product Container") AND ("t0"."Product Container" < "t0"."Product Container1")) THEN (((("t0"."Product Container1" || ' - ') COLLATE "en_GB" || "t0"."Product Container") COLLATE "en_GB" || ' - ') COLLATE "en_GB" || "t0"."Product Container2") COLLATE "en_GB" WHEN ("t0"."Product Container2" < "t0"."Product Container") THEN "t0"."$temp0_cse" WHEN ("t0"."Product Container2" > "t0"."Product Container") THEN (("t0"."Product Container" || ' - ') COLLATE "en_GB" || "t0"."Product Container2") COLLATE "en_GB" ELSE "t0"."Product Container2" END) AS "Containers Match (copy)"
  FROM (
    SELECT "Extract"."Product Container" AS "Product Container",
      "Extract"."Product Container1" AS "Product Container1",
      "Extract"."Product Container2" AS "Product Container2",
      "Extract"."Customer Name2" AS "Customer Name2",
      (("Extract"."Product Container2" || ' - ') COLLATE "en_GB" || "Extract"."Product Container") COLLATE "en_GB" AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
    WHERE (("Extract"."Product Container2" IN ('Jumbo Box', 'Jumbo Drum', 'Large Box')) AND ("Extract"."Product Container" IN ('Jumbo Box', 'Jumbo Drum', 'Large Box')))
  ) "t0"
) "t1"
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Mk2KW0HbU7mKPUo5GxHBLs", "lqctx-batch-query-id": "0" } } */;
