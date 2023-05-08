SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "PTIv+DFfUPLLLDj6OBjjHL" } } */;
SELECT ('Клик'::text) AS "Calculation_8090303014120161"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "E0DmAmxI0JTL6m41i5+UdN", "lqctx-batch-query-id": "3" } } */;
SELECT '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CX86Yq/vUVyKReS4XMGL43", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."answer" AS "answer"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
GROUP BY 1
ORDER BY "answer" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "Ippiv90KkEcLSvZOcA2G26" } } */;
SELECT "Extract"."city" AS "city"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
GROUP BY 1
ORDER BY "city" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "BF3ZOQPIETAJWis3zOpzB3" } } */;
SELECT (CASE WHEN ("Extract"."country" IN ('Германия', 'Germany')) THEN 'Germany' WHEN ("Extract"."country" IN ('Россия', 'Russia', 'RUSSIAN_FEDERATION')) THEN 'Russia' WHEN ("Extract"."country" IN ('Украина', 'UKRAINE')) THEN 'UKRAINE' ELSE "Extract"."country" END) AS "Country (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OOkgYSRikCPI+cQOEw7LOy", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."sex" AS "sex",
  SUM(1) AS "sum:Number of Records:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "F1X1JAUSUoeLoKBu+TmQ3y", "lqctx-batch-query-id": "6" } } */;
SELECT "t3"."Calculation_9960813182850830" AS "Calculation_9960813182850830",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT (CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) AS "Calculation_9960813182850830"
  FROM (
    SELECT (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
    FROM (
      SELECT "t0"."$temp1_cse" AS "$temp1_cse",
        "t0"."$temp3_cse" AS "$temp3_cse",
        "t0"."bdate" AS "bdate",
        CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
      FROM (
        SELECT "Extract"."bdate" AS "bdate",
          "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
          "Extract"."bdate" COLLATE "ru" AS "$temp3_cse"
        FROM "Extract"."Extract" "Extract"
        WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
      ) "t0"
    ) "t1"
  ) "t2"
) "t3"
WHERE ("t3"."Calculation_9960813182850830" <> '')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ck7BPz8Q0bOJKqlR5LHdXm", "lqctx-batch-query-id": "4" } } */;
SELECT "t3"."Calculation_9960813182850830" AS "Calculation_9960813182850830",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT (CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) AS "Calculation_9960813182850830"
  FROM (
    SELECT (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
    FROM (
      SELECT "t0"."$temp1_cse" AS "$temp1_cse",
        "t0"."$temp3_cse" AS "$temp3_cse",
        "t0"."bdate" AS "bdate",
        CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
      FROM (
        SELECT "Extract"."bdate" AS "bdate",
          "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
          "Extract"."bdate" COLLATE "ru" AS "$temp3_cse"
        FROM "Extract"."Extract" "Extract"
        WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
      ) "t0"
    ) "t1"
  ) "t2"
) "t3"
WHERE (("t3"."Calculation_9960813182850830" >= '') AND ("t3"."Calculation_9960813182850830" <= 'менее 18'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EXyJlYs8kWuJ2TOrs3VbZM", "lqctx-batch-query-id": "7" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_924D8C21-3EDE-4068-97D3-056DBB6F7D80_1_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_1_Group' AND r.relkind = 'x';
SELECT "Group_1"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
  SUM(1) AS "sum:Number of Records:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_924D8C21-3EDE-4068-97D3-056DBB6F7D80_1_Group" "Group_1" ON ("Extract"."answer" = "Group_1"."answer")
WHERE ((CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END) AND (CASE WHEN ("Group_1"."mongo_profiles_raw_answer (group)" IN ('answer')) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ippiv90KkEcLSvZOcA2G26", "lqctx-batch-query-id": "5" } } */;
SELECT "Group_1"."City (group)" AS "City (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_1_Group" "Group_1" ON ("Extract"."city" = "Group_1"."city")
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BF3ZOQPIETAJWis3zOpzB3", "lqctx-batch-query-id": "0" } } */;
SELECT "t2"."Country (group)" AS "Country (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."Country (group)" AS "Country (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."Country (group)" AS "Country (group)",
      "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."bdate" AS "bdate",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        (CASE WHEN ("Extract"."country" IN ('Германия', 'Germany')) THEN 'Germany' WHEN ("Extract"."country" IN ('Россия', 'Russia', 'RUSSIAN_FEDERATION')) THEN 'Russia' WHEN ("Extract"."country" IN ('Украина', 'UKRAINE')) THEN 'UKRAINE' ELSE "Extract"."country" END) AS "Country (group)"
      FROM "Extract"."Extract" "Extract"
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '45-54')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O4/frtJAUbbII7JYgvkCCe", "lqctx-batch-query-id": "1" } } */;
SELECT "t2"."sex" AS "sex",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."sex" AS "sex",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."sex" AS "sex",
      "t0"."bdate" AS "bdate",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."sex" AS "sex",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse"
      FROM "Extract"."Extract" "Extract"
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '45-54')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DPtDMmadUtBJp+TTzvYSKJ", "lqctx-batch-query-id": "4" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12161D6D-2D81-47E0-9FF4-016A39BF5379_1_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_8_B3B634A6-5F61-41F4-BE1B-A611956ED875_1_Group' AND r.relkind = 'x';
SELECT "t2"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."bdate" AS "bdate",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
      "t0"."$temp1_cse" AS "$temp1_cse",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        "Group_1"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)"
      FROM "Extract"."Extract" "Extract"
        INNER JOIN "#Tableau_1_12161D6D-2D81-47E0-9FF4-016A39BF5379_1_Group" "Group_1" ON ("Extract"."answer" = "Group_1"."answer")
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."mongo_profiles_raw_answer (group)" IN ('answer')) THEN FALSE ELSE TRUE END) AND ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '45-54'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GmJBdrLLk1SJr3f7TcnwN3", "lqctx-batch-query-id": "3" } } */;
SELECT "t2"."City (group)" AS "City (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."City (group)" AS "City (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."City (group)" AS "City (group)",
      "t0"."bdate" AS "bdate",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."$temp1_cse" AS "$temp1_cse",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        "Group_1"."City (group)" AS "City (group)"
      FROM "Extract"."Extract" "Extract"
        INNER JOIN "#Tableau_8_B3B634A6-5F61-41F4-BE1B-A611956ED875_1_Group" "Group_1" ON ("Extract"."city" = "Group_1"."city")
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '45-54')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B4InpWxnEm4LN8JWHEcpWY", "lqctx-batch-query-id": "0" } } */;
SELECT "t2"."sex" AS "sex",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."sex" AS "sex",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."sex" AS "sex",
      "t0"."bdate" AS "bdate",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."sex" AS "sex",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse"
      FROM "Extract"."Extract" "Extract"
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '18-24')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N/XjN5xC0AZLaru+G/o3W+", "lqctx-batch-query-id": "4" } } */;
SELECT "t2"."City (group)" AS "City (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."City (group)" AS "City (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."City (group)" AS "City (group)",
      "t0"."bdate" AS "bdate",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."$temp1_cse" AS "$temp1_cse",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        "Group_1"."City (group)" AS "City (group)"
      FROM "Extract"."Extract" "Extract"
        INNER JOIN "#Tableau_8_B3B634A6-5F61-41F4-BE1B-A611956ED875_1_Group" "Group_1" ON ("Extract"."city" = "Group_1"."city")
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '18-24')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D+oOu5dfEg8LYtcKvKsyYv", "lqctx-batch-query-id": "0" } } */;
SELECT "t2"."Country (group)" AS "Country (group)",
  '1'::double precision AS "avg:Calculation_5610825182816355:ok",
  SUM(1) AS "cnt:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Calculation_5610825182816355:ok",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."Country (group)" AS "Country (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."Country (group)" AS "Country (group)",
      "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."bdate" AS "bdate",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        (CASE WHEN ("Extract"."country" IN ('Германия', 'Germany')) THEN 'Germany' WHEN ("Extract"."country" IN ('Россия', 'Russia', 'RUSSIAN_FEDERATION')) THEN 'Russia' WHEN ("Extract"."country" IN ('Украина', 'UKRAINE')) THEN 'UKRAINE' ELSE "Extract"."country" END) AS "Country (group)"
      FROM "Extract"."Extract" "Extract"
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '18-24')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EVKqPCCdU06LHcMuivldFF", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_2_Group' AND r.relkind = 'x';
SELECT "t2"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
  SUM(1) AS "sum:Number of Records:ok"
FROM (
  SELECT "t1"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
    (CASE WHEN (LENGTH("t1"."bdate") >= 8) THEN 1 ELSE null::int END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."bdate" AS "bdate",
      "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)",
      "t0"."$temp1_cse" AS "$temp1_cse",
      CAST("t0"."$temp3_cse" AS TEXT OR NULL) COLLATE "ru" AS "$temp2_cse"
    FROM (
      SELECT "Extract"."bdate" AS "bdate",
        "Extract"."bdate" COLLATE "ru" AS "$temp1_cse",
        "Extract"."bdate" COLLATE "ru" AS "$temp3_cse",
        "Group_1"."mongo_profiles_raw_answer (group)" AS "mongo_profiles_raw_answer (group)"
      FROM "Extract"."Extract" "Extract"
        INNER JOIN "#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_2_Group" "Group_1" ON ("Extract"."answer" = "Group_1"."answer")
      WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
    ) "t0"
  ) "t1"
) "t2"
WHERE ((CASE WHEN ("t2"."mongo_profiles_raw_answer (group)" IN ('answer')) THEN FALSE ELSE TRUE END) AND ((CASE WHEN ("t2"."$temp0_cse" <= 17) THEN 'менее 18' WHEN (("t2"."$temp0_cse" >= 18) AND ("t2"."$temp0_cse" <= 24)) THEN '18-24' WHEN (("t2"."$temp0_cse" >= 25) AND ("t2"."$temp0_cse" <= 34)) THEN '25-34' WHEN (("t2"."$temp0_cse" >= 35) AND ("t2"."$temp0_cse" <= 44)) THEN '35-44' WHEN (("t2"."$temp0_cse" >= 45) AND ("t2"."$temp0_cse" <= 54)) THEN '45-54' WHEN (("t2"."$temp0_cse" >= 55) AND ("t2"."$temp0_cse" <= 90)) THEN '55 и выше' ELSE '' END) = '18-24'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LRa4Z0yuUJULwsetllwXWc", "lqctx-batch-query-id": "3" } } */;
