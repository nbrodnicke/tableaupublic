SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "LxAMmYbhUo4Iy/pvK8i5x7" } } */;
SELECT ('重新查詢'::text) AS "Calculation_9861110093203472",
  "Extract"."approach" AS "approach",
  "Extract"."bodypart" AS "bodypart",
  "Extract"."bodysystem" AS "bodysystem",
  "Extract"."device" AS "device",
  "Extract"."operation" AS "operation",
  "Extract"."qualifer" AS "qualifer",
  "Extract"."section" AS "section"
FROM "Extract"."Extract" "Extract"
GROUP BY 2,
  3,
  4,
  5,
  6,
  7,
  8
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JUzr4s3akHBLjnT96LZj83", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_3A545360-90A7-403A-8F4F-724CE25A2972_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_4_B786DB80-82C1-4DCC-85A9-06C8058669D0_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_7_E66AD210-B457-46A2-AA05-2182BA7A4BCF_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_90D2005C-7031-485C-A945-ADCA9D23629D_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_9_E33CA313-7E1B-40A8-A3E9-2DFD2C92C8D1_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_7904A0F1-F7D5-44F0-87A5-B23789038499_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_BB4DE907-7026-4F71-AC4F-0DEA23CE8FE2_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_8_C333782A-DAF8-41DF-BC40-138346AD656E_1_Filter' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter' AND r.relkind = 'x';
SELECT "Extract"."qualifer" AS "qualifer"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_1_90D2005C-7031-485C-A945-ADCA9D23629D_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LJKvFX7EkcLLRYitwtVpBs", "lqctx-batch-query-id": "6" } } */;
SELECT "Extract"."operation" AS "operation"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_6_BB4DE907-7026-4F71-AC4F-0DEA23CE8FE2_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "KbTqchgW03dKCRpwIMwGKS", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."section" AS "section"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_7_E66AD210-B457-46A2-AA05-2182BA7A4BCF_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "EELqcjD20ggLFMjGlap+fh", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."device" AS "device"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_2_3A545360-90A7-403A-8F4F-724CE25A2972_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "FRQR1pI1U5FIdBrmDXa/XJ", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."approach" AS "approach"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_4_B786DB80-82C1-4DCC-85A9-06C8058669D0_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IerCv1NFU/qI2QtVhCaIS0", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整中文" AS "完整中文"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_3_7904A0F1-F7D5-44F0-87A5-B23789038499_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EIylhM21UT3KHOxbo35USK", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整英文" AS "完整英文"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_9_E33CA313-7E1B-40A8-A3E9-2DFD2C92C8D1_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Cz4bgfsck07KdOsAqSJBz+", "lqctx-batch-query-id": "9" } } */;
SELECT "Extract"."bodypart" AS "bodypart"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_8_C333782A-DAF8-41DF-BC40-138346AD656E_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GA2W1+EokqiKqRGp3zuroR", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."bodysystem" AS "bodysystem"
FROM "Extract"."Extract" "Extract"
WHERE EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "H6H4T14kUGxJ5szZyzebpn", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."section" AS "section"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "section" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "Exqj+C850kHIrVvMj6IliI" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整中文" AS "完整中文"
FROM "Extract"."Extract" "Extract"
WHERE ("Extract"."section" = '4 Measurement and Monitoring 測量和監測')
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JA3N0BSFUYDLMDuVAuheeV", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整英文" AS "完整英文"
FROM "Extract"."Extract" "Extract"
WHERE ("Extract"."section" = '4 Measurement and Monitoring 測量和監測') AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M/qAohSqEuXJ6r9IZ9JW+B", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."bodysystem" AS "bodysystem"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "bodysystem" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "MpSxs1OFUGaI1VXPZ0/z3E" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整中文" AS "完整中文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測'))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DfM2sY6Dk2BJ5+NDsF+GOt", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整英文" AS "完整英文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測')) AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BHkK2/ErEf3JdsH+zeHTl7", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."approach" AS "approach"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "approach" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "LbxIWJUnUNwIv7LwzGfo7J" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整中文" AS "完整中文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."approach" = 'X External') AND ("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測'))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Mj6CRS+DEX5JVk/GJKzWyW", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整英文" AS "完整英文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."approach" = 'X External') AND ("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測')) AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "J8QAToI90HlJ/JfENzjR6G", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."operation" AS "operation"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "operation" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "PxGzcdZaUuqK/6f8bfIV67" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整中文" AS "完整中文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."approach" = 'X External') AND ("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."operation" = '0 Measurement 測量') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測'))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DX/QMStfkScKzbZLvZbzUf", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."ICD" AS "ICD",
  SUM(1) AS "sum:Number of Records:ok",
  "Extract"."完整英文" AS "完整英文"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."approach" = 'X External') AND ("Extract"."bodysystem" = 'B Physiological Devices') AND ("Extract"."operation" = '0 Measurement 測量') AND ("Extract"."section" = '4 Measurement and Monitoring 測量和監測')) AND EXISTS (
SELECT 1 AS "one"
FROM "#Tableau_10_567BC598-D372-4DD3-8EFB-0F7BD647AED3_1_Filter" "Filter_1"
WHERE (("Extract"."approach" = "Filter_1"."approach") AND ("Extract"."bodypart" = "Filter_1"."bodypart") AND ("Extract"."bodysystem" = "Filter_1"."bodysystem") AND ("Extract"."device" = "Filter_1"."device") AND ("Extract"."operation" = "Filter_1"."operation") AND ("Extract"."qualifer" = "Filter_1"."qualifer") AND ("Extract"."section" = "Filter_1"."section"))
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NckhUyP90muJeVoXDp2xwM", "lqctx-batch-query-id": "8" } } */;
