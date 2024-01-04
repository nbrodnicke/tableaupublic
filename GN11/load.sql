COPY "Extract"."Extract" FROM '' (format csv, delimiter '|', null '');
CREATE  TABLE "#Tableau_2_D3C1CAC8-AA41-4FBB-8A14-81BD81F903CC_1_Filter" AS
SELECT "Extract"."EngLA_new_code" AS "EngLA_new_code"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_1_Group" AS
SELECT 1 AS "TEMP($temp0_keep)(290714814)(0)",
  "Extract"."Schoolname" AS "Schoolname"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_2_Group" AS
SELECT 1 AS "TEMP($temp0_keep)(290714814)(1)",
  "Extract"."Schoolname" AS "Schoolname",
  "Extract"."new_code" AS "new_code"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_3_Group" AS
SELECT 32 AS "TEMP(Tableau_lkup(excel.41619.707655138889)(none:EngLA_new_code:nk))(290714814)(0)",
  "Extract"."Schoolname" AS "Schoolname",
  "Extract"."new_code" AS "new_code"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_4_Group" AS
SELECT 1 AS "TEMP($temp0_keep)(290714814)(2)",
  "Extract"."Schoolname" AS "Schoolname"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_5_Group" AS
SELECT 1 AS "TEMP($temp0_keep)(290714814)(3)",
  "Extract"."Schoolname" AS "Schoolname"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_124F9212-839B-454C-97F2-CEE05166A020_6_Group" AS
SELECT 1 AS "TEMP($temp0_keep)(290714814)(0)",
  "Extract"."Schoolname" AS "Schoolname",
  "Extract"."new_code" AS "new_code"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
