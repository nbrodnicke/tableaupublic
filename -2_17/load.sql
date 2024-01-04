COPY "Extract"."Extract" FROM '' (format csv, delimiter '|', null '');
CREATE  TABLE "#Tableau_3_924D8C21-3EDE-4068-97D3-056DBB6F7D80_1_Group" AS
SELECT "Extract"."answer" AS "mongo_profiles_raw_answer (group)",
  "Extract"."answer" AS "answer"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
LIMIT 0;
CREATE  TABLE "#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_1_Group" AS
SELECT "Extract"."city" AS "City (group)",
  "Extract"."city" AS "city"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
LIMIT 0;
CREATE  TABLE "#Tableau_1_12161D6D-2D81-47E0-9FF4-016A39BF5379_1_Group" AS
SELECT "Extract"."answer" AS "mongo_profiles_raw_answer (group)",
  "Extract"."answer" AS "answer"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
LIMIT 0;
CREATE  TABLE "#Tableau_8_B3B634A6-5F61-41F4-BE1B-A611956ED875_1_Group" AS
SELECT "Extract"."city" AS "City (group)",
  "Extract"."city" AS "city"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
LIMIT 0;
CREATE  TABLE "#Tableau_7_C2CAC516-813D-4D0C-8385-3BA138E3FF82_2_Group" AS
SELECT "Extract"."answer" AS "mongo_profiles_raw_answer (group)",
  "Extract"."answer" AS "answer"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN ("Extract"."sex" = 0) THEN FALSE ELSE TRUE END)
LIMIT 0;
