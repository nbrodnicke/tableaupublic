SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "J8QoO/fjkcDIzNEuGJNghJ" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "MEL9tTsD0/GJuoLAcUgLgG" } } */;
SELECT (CASE WHEN ((("Extract"."PlayerID=" = 5964) AND ("Extract"."PathOrder" = 2)) OR ("Extract"."BR ID" = 5964)) THEN 1 ELSE 0 END) AS "Calculation_5295107298947145732"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HOfmjxst0BeLxSK48WbN0T", "lqctx-batch-query-id": "3" } } */;
SELECT MIN("Extract"."realminute") AS "lower:none:realminute:qk",
  MAX("Extract"."realminute") AS "upper:none:realminute:qk"
FROM "Extract"."Extract" "Extract"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "CP48VdiIUAdIwa7KA328ZI" } } */;
SELECT MIN("Extract"."Date") AS "lower:none:Date:qk",
  MAX("Extract"."Date") AS "upper:none:Date:qk"
FROM "Extract"."Extract" "Extract"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LlVvS2HNkB0LBBrr1NtUUS" } } */;
SELECT "Extract"."PassOutcome" AS "PassOutcome"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "PassOutcome" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PBnGCFvW08PL0tgQw5NHN0", "lqctx-batch-query-id": "4" } } */;
SELECT (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Calculation_2284169459244019712" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HdAoMOsHEpoIdSAbHttej5", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ((("Extract"."PlayerID=" = 934) AND ("Extract"."PathOrder" = 1)) OR ("Extract"."PasserID" = 934)) THEN 1 ELSE 0 END) AS "Calculation_5295107298946961411"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MmRtNMtKULgLEffT28a1ib", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE WHEN (("Extract"."PlayerID=" = 274) OR ("Extract"."BR ID" = 274) OR ("Extract"."PasserID" = 274)) THEN 1 ELSE 0 END) AS "Calculation_5295107298946060289"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "G8i0TZ/vUTHJK0uww+rlff", "lqctx-batch-query-id": "1" } } */;
SELECT (CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Teams Clean (copy)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Teams Clean (copy)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "BSiXWsFAkZHJQOPiOu6cOc", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."PassOutcome" AS "PassOutcome",
  "Extract"."PathID" AS "PathID",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN((CASE WHEN ("Extract"."Is CP" = 1) THEN "Extract"."BR Jersey" WHEN ("Extract"."Is BR" = 1) THEN "Extract"."Jersey" ELSE null::text END)) AS "TEMP(attr:ToolTip Passer (copy):nk)(1590309253)(0)",
  MAX((CASE WHEN ("Extract"."Is CP" = 1) THEN "Extract"."BR Jersey" WHEN ("Extract"."Is BR" = 1) THEN "Extract"."Jersey" ELSE null::text END)) AS "TEMP(attr:ToolTip Passer (copy):nk)(2957253913)(0)",
  "Extract"."X=" AS "X=",
  "Extract"."Y=" AS "Y=",
  SUM("Extract"."PathOrder") AS "sum:PathOrder:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."PassOutcome" NOT IN ('0')) AND ("Extract"."PathID" >= 1) AND ("Extract"."PathID" <= 448168) AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Ahly') AND (CASE WHEN ((("Extract"."Is CP" = 1) AND ("Extract"."X=" > -70) AND ("Extract"."Y=" < 60) AND ("Extract"."Y=" > -60)) OR (("Extract"."Is BR" = 1) AND ("Extract"."BegXPass" > -70) AND ("Extract"."BegYPass" < 60) AND ("Extract"."BegYPass" > -60))) THEN TRUE ELSE FALSE END) AND (CASE WHEN ((("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 24) AND ("Extract"."EndYPass" > -24)) OR (("Extract"."Is BR" = 1) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 24) AND ("Extract"."Y=" > -24))) THEN TRUE ELSE FALSE END) AND ("Extract"."Date" >= (DATE '2015-10-20')) AND ("Extract"."Date" <= (DATE '2016-08-12')) AND ("Extract"."Team" IN ('Ahly', 'ASEC Mimosas', 'Wydad Casablanca', 'ZESCO United')) AND ("Extract"."realminute" >= '0'::double precision) AND ("Extract"."realminute" <= '133.18333333333305'::double precision))
GROUP BY 1,
  2,
  7,
  8
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NimQCmiLktYI/+Vf+FFWx2", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CASE WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) AS "usr:Calculation_2284169459433848840:nk"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HG9mseajE3yIBHrRa02Eo8", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  MIN("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  COUNT(DISTINCT "Extract"."Jersey") AS "ctd:Jersey:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (COUNT(DISTINCT "Extract"."Jersey") <= 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0i2RsyZKkDKJ10mR1nn+0L", "lqctx-batch-query-id": "1" } } */;
SELECT MIN("t0"."ctd:Jersey:qk") AS "lower:ctd:Jersey:qk",
  MAX("t0"."ctd:Jersey:qk") AS "upper:ctd:Jersey:qk"
FROM (
  SELECT COUNT(DISTINCT "Extract"."Jersey") AS "ctd:Jersey:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Ig/wvp0okOSKoCO57gqeGX" } } */;
SELECT COUNT(DISTINCT "Extract"."PlayerID=") AS "ctd:PlayerID=:ok"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KM4+9pp+0lLLZCARSIixKT", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Team" AS "Team"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Team" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LOKMhDa40PPJpTHnLwJ85k", "lqctx-batch-query-id": "0" } } */;
SELECT MIN("t0"."sum:Attempted Corners (copy 5):qk") AS "lower:sum:Attempted Corners (copy 5):qk",
  MAX("t0"."sum:Attempted Corners (copy 5):qk") AS "upper:sum:Attempted Corners (copy 5):qk",
  MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk",
  MIN("t0"."sum:Calculation_7111120184035334:qk") AS "lower:sum:Calculation_7111120184035334:qk",
  MAX("t0"."sum:Calculation_7111120184035334:qk") AS "upper:sum:Calculation_7111120184035334:qk",
  MIN("t0"."sum:Calculation_8791120172843281:qk") AS "lower:sum:Calculation_8791120172843281:qk",
  MAX("t0"."sum:Calculation_8791120172843281:qk") AS "upper:sum:Calculation_8791120172843281:qk"
FROM (
  SELECT SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 5):qk",
    SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) AS "sum:Calculation_7111120184035334:qk",
    SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) AS "sum:Calculation_8791120172843281:qk",
    (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "H6OEg05pUHlKWdI2jQCYUk" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_2351123204450177)(1012584082)(0)",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_2351123204450177)(319632437)(0)",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_3611121142349832)(838615445)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8231121143256118)(1705212118)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8231121143256118)(755927760)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8431121142304228)(2750939968)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211121135859122)(2585620191)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211121135859122)(2673657890)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9451121142820262)(3077615275)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("Extract"."Team") AS "TEMP(attr:Team:nk)(1505375586)(0)",
  MAX("Extract"."Team") AS "TEMP(attr:Team:nk)(3319339557)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 5):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy):ok",
  SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) AS "sum:Calculation_7111120184035334:ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) AS "sum:Calculation_8791120172843281:ok",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "sum:Calculation_9591121133741056:ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 5):ok",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) AS "sum:Complete Corners (copy 6):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:KeyPass Corner (copy 4):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) <= 41) AND (SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) >= 0) AND (SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) <= 105) AND (SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) <= 70) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KsvZlSEkELHLZWSYAxxN9+", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "sum:Calculation_9591121133741056:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) <= 41) AND (SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) >= 0) AND (SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) <= 105) AND (SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) <= 70) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "L8WmJoD104HKj/wXSFyyY/" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "OFd9GQDj0EQK7mtOem4b8c" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END)) AS "TEMP(Attempted Corners (copy 6))(2694967033)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "TEMP(Attempted FKPass (copy))(202950562)(0)",
  SUM(((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END))) AS "TEMP(Attempted SetPiece (copy))(4200008025)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0011121141705809)(755927760)(0)",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_0611121141748016)(319632437)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4611121140834129)(2673657890)(0)",
  SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4611121140957243)(838615445)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_6291121140907871)(2750939968)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9931121141633456)(3077615275)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  MIN("Extract"."Team") AS "TEMP(attr:Team:nk)(1505375586)(0)",
  MAX("Extract"."Team") AS "TEMP(attr:Team:nk)(3319339557)(0)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.07777777777777703'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JBxkLC0q03iKm6WSyE4c+i", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CAST(SUM(((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS DOUBLE PRECISION OR NULL) / NULLIF((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)),0)) AS "usr:Calculation_0611121141748016:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.07777777777777703'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "BSDxk1kG01OJ4pVYgL7wqX" } } */;
SELECT "Extract"."Vs" AS "Vs"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Vs" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "EPPV+l1LkNqIY+tNKFpwT8", "lqctx-batch-query-id": "1" } } */;
SELECT MIN("t0"."sum:Attempted Corners (copy 2):qk") AS "lower:sum:Attempted Corners (copy 2):qk",
  MAX("t0"."sum:Attempted Corners (copy 2):qk") AS "upper:sum:Attempted Corners (copy 2):qk",
  MIN("t0"."sum:Attempted Corners (copy 3):qk") AS "lower:sum:Attempted Corners (copy 3):qk",
  MAX("t0"."sum:Attempted Corners (copy 3):qk") AS "upper:sum:Attempted Corners (copy 3):qk",
  MIN("t0"."sum:Attempted Corners (copy 4):qk") AS "lower:sum:Attempted Corners (copy 4):qk",
  MAX("t0"."sum:Attempted Corners (copy 4):qk") AS "upper:sum:Attempted Corners (copy 4):qk",
  MIN("t0"."sum:Calculation_4091123205334722:qk") AS "lower:sum:Calculation_4091123205334722:qk",
  MAX("t0"."sum:Calculation_4091123205334722:qk") AS "upper:sum:Calculation_4091123205334722:qk",
  MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT SUM((CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 2):qk",
    SUM((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 3):qk",
    SUM((CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 4):qk",
    SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) AS "sum:Calculation_4091123205334722:qk",
    (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MNwEoiT+kvOIPK4drrevgd" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_3371121142008648)(1092462792)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_3371121142008648)(1612819171)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4631125234254365)(3256268903)(0)",
  SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4791128142500685)(1118767464)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4791128142500685)(759165460)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_5591128142635872)(3966437615)(0)",
  SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_5591128142635872)(4016917522)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5691121142326148)(1766434227)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5691121142326148)(877677302)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_6211125234645436)(4017403340)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_6211125234645436)(765597232)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7611125234520614)(1282447780)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 2):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 3):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) AS "sum:Attempted Corners (copy 4):ok",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) AS "sum:Calculation_7331123205444931:ok",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "sum:Calculation_7871123234319930:ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 3):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 4):ok",
  SUM((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END)) AS "sum:Corner Assist (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:KeyPass Corner (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:KeyPass Corner (copy 3):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:KeyPass Corner (copy):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) <= 707) AND (SUM((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END)) <= 154) AND (SUM((CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) <= 2267) AND (SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) >= 0) AND (SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) <= 2415) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '20.000000000000199'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D/jf1CXdUjIK+e/djkhdoy", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CAST(SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS DOUBLE PRECISION OR NULL) / NULLIF(SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))),0)) AS "usr:Calculation_5591128142635872:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) <= 707) AND (SUM((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END)) <= 154) AND (SUM((CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) <= 2267) AND (SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) >= 0) AND (SUM((((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END))) <= 2415) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '20.000000000000199'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "N9zjsroPECXLnsuZcg1cWb" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  SUM("t1"."$temp0_cse") AS "TEMP(Attempted Cross (copy))(4145323035)(0)",
  SUM("t1"."$temp1_cse") AS "TEMP(Attempted LongPass (copy))(2910873137)(0)",
  SUM("t1"."$temp2_cse") AS "TEMP(Attempted ShortPass (copy))(2744275140)(0)",
  SUM("t1"."$temp3_cse") AS "TEMP(Calculation_0631121141020867)(1282447780)(0)",
  SUM("t1"."$temp4_cse") AS "TEMP(Calculation_0671121141811958)(4017403340)(0)",
  SUM("t1"."$temp5_cse") AS "TEMP(Calculation_1171124004132719)(1118767464)(0)",
  SUM("t1"."$temp6_cse") AS "TEMP(Calculation_1251121141650256)(3256268903)(0)",
  SUM("t1"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN "t1"."$temp7_cse" THEN "t1"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM("t1"."$temp8_cse") AS "TEMP(Calculation_2651121141725828)(1929677230)(0)",
  SUM((((CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_6091225140118669)(631135046)(0)",
  SUM("t1"."$temp9_cse") AS "TEMP(Calculation_6431121140849407)(1092462792)(0)",
  SUM("t1"."$temp10_cse") AS "TEMP(Calculation_6911124004409459)(759165460)(0)",
  SUM((("t1"."$temp6_cse" + "t1"."$temp8_cse") + "t1"."$temp4_cse")) AS "TEMP(Calculation_8031124004515342)(3966437615)(0)",
  SUM("t1"."$temp11_cse") AS "TEMP(Calculation_8051121140926777)(877677302)(0)",
  AVG((CASE WHEN "t1"."$temp7_cse" THEN ABS("t1"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM(("t1"."$temp5_cse" - "t1"."$temp10_cse")) AS "TEMP(Open Play Key Pass % (copy))(2442640322)(0)",
  MAX("t1"."$temp12_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t1"."$temp12_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("t1"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("t1"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  MIN("t1"."Team") AS "TEMP(attr:Team:nk)(1505375586)(0)",
  MAX("t1"."Team") AS "TEMP(attr:Team:nk)(3319339557)(0)"
FROM (
  SELECT "t0"."$temp8_cse" AS "$temp8_cse",
    "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."$temp12_cse" AS "$temp12_cse",
    "t0"."$temp11_cse" AS "$temp11_cse",
    "t0"."Team" AS "Team",
    "t0"."EventID=" AS "EventID=",
    "t0"."$temp6_cse" AS "$temp6_cse",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."$temp7_cse" AS "$temp7_cse",
    "t0"."$temp9_cse" AS "$temp9_cse",
    "t0"."Jersey" AS "Jersey",
    "t0"."Minutes" AS "Minutes",
    "t0"."Is AssistNA" AS "Is AssistNA",
    "t0"."$temp0_cse" AS "$temp0_cse",
    "t0"."PlayerName" AS "PlayerName",
    "t0"."$temp3_cse" AS "$temp3_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."X=" AS "X=",
    "t0"."Y=" AS "Y=",
    (("t0"."$temp9_cse" + "t0"."$temp11_cse") + "t0"."$temp3_cse") AS "$temp10_cse",
    (("t0"."$temp0_cse" + "t0"."$temp1_cse") + "t0"."$temp2_cse") AS "$temp5_cse"
  FROM (
    SELECT "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."PlayerID=" AS "PlayerID=",
      "Extract"."PlayerName" AS "PlayerName",
      "Extract"."Is AssistNA" AS "Is AssistNA",
      "Extract"."Minutes" AS "Minutes",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EventID=" AS "EventID=",
      "Extract"."Team" AS "Team",
      (CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) AS "$temp0_cse",
      (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp11_cse",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp12_cse",
      (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END) AS "$temp1_cse",
      (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END) AS "$temp2_cse",
      (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp3_cse",
      (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp4_cse",
      (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp6_cse",
      ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp7_cse",
      (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp8_cse",
      (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp9_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
GROUP BY 1
HAVING (((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MVHyK+0GkC3I8gdGNqaJvT", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CAST(SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS DOUBLE PRECISION OR NULL) / NULLIF((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)),0)) AS "usr:Calculation_8031124004515342:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "EILUgrZpk9bIjW/swRmKOr" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  SUM("Extract"."xA") AS "sum:xA:ok",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Calculation_9851124000635091:ok",
  SUM((CASE ("Extract"."EventID=" = 17) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Corners xA (copy 2):ok",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Corners xA (copy):ok",
  SUM((CASE ("Extract"."EventID=" = 29) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Cross xA (copy):ok",
  SUM((CASE ("Extract"."EventID=" = 15) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:LongPass xA (copy):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0aVsjcTrESrIQichLzkjJO", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (SUM("Extract"."xA") - (SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) + SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)))) AS "usr:Calculation_0051124001723292:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "NcZc1BmwExTIucnh7MLtqj" } } */;
SELECT MIN("t2"."sum:Attempted Corners (copy 2):qk") AS "lower:sum:Attempted Corners (copy 2):qk",
  MAX("t2"."sum:Attempted Corners (copy 2):qk") AS "upper:sum:Attempted Corners (copy 2):qk",
  MIN("t2"."sum:Attempted Corners (copy 3):qk") AS "lower:sum:Attempted Corners (copy 3):qk",
  MAX("t2"."sum:Attempted Corners (copy 3):qk") AS "upper:sum:Attempted Corners (copy 3):qk",
  MIN("t2"."sum:Calculation_7111120184035334:qk") AS "lower:sum:Calculation_7111120184035334:qk",
  MAX("t2"."sum:Calculation_7111120184035334:qk") AS "upper:sum:Calculation_7111120184035334:qk",
  MIN("t2"."sum:Calculation_4091123205334722:qk") AS "lower:sum:Calculation_4091123205334722:qk",
  MAX("t2"."sum:Calculation_4091123205334722:qk") AS "upper:sum:Calculation_4091123205334722:qk",
  MIN("t2"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t2"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk",
  MIN("t2"."sum:Calculation_9391130162834534:qk") AS "lower:sum:Calculation_9391130162834534:qk",
  MAX("t2"."sum:Calculation_9391130162834534:qk") AS "upper:sum:Calculation_9391130162834534:qk"
FROM (
  SELECT SUM("t1"."$temp0_cse") AS "sum:Attempted Corners (copy 2):qk",
    SUM("t1"."$temp1_cse") AS "sum:Attempted Corners (copy 3):qk",
    SUM("t1"."$temp2_cse") AS "sum:Calculation_4091123205334722:qk",
    SUM("t1"."$temp3_cse") AS "sum:Calculation_7111120184035334:qk",
    SUM(("t1"."$temp3_cse" + "t1"."$temp2_cse")) AS "sum:Calculation_9391130162834534:qk",
    (CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM (
    SELECT "t0"."$temp3_cse" AS "$temp3_cse",
      "t0"."$temp0_cse" AS "$temp0_cse",
      "t0"."Minutes" AS "Minutes",
      "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."none:PlayerID=:ok" AS "none:PlayerID=:ok",
      (("t0"."$temp1_cse" + "t0"."$temp0_cse") + (CASE WHEN ("t0"."EventID=" = 15) THEN 1 ELSE 0 END)) AS "$temp2_cse"
    FROM (
      SELECT "Extract"."Minutes" AS "Minutes",
        "Extract"."EventID=" AS "EventID=",
        "Extract"."PlayerID=" AS "none:PlayerID=:ok",
        (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END) AS "$temp0_cse",
        (CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) AS "$temp1_cse",
        ((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "$temp3_cse"
      FROM "Extract"."Extract" "Extract"
      WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
    ) "t0"
  ) "t1"
  GROUP BY "t1"."none:PlayerID=:ok"
) "t2"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "NoSvOuXzEvmLttY2rh2TbY" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CASE WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) AS "usr:Calculation_2284169459433848840:nk"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Lax/1SIkEJgII1I+fhZ/yk", "lqctx-batch-query-id": "1" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  SUM("t1"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM("t1"."xA") AS "TEMP(Calculation_1471130210600423)(3417155546)(0)",
  SUM("t1"."$temp0_cse") AS "TEMP(Calculation_1471130210600423)(3774407575)(0)",
  SUM("t1"."$temp10_cse") AS "TEMP(Calculation_1471130210600423)(3997480072)(0)",
  SUM("t1"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM("t1"."$temp1_cse") AS "TEMP(Calculation_2291130214146351)(1009473167)(0)",
  SUM("t1"."$temp8_cse") AS "TEMP(Calculation_2291130214146351)(301043880)(0)",
  SUM("t1"."$temp7_cse") AS "TEMP(Calculation_3691130214824169)(3061494121)(0)",
  SUM("t1"."$temp9_cse") AS "TEMP(Calculation_5071130212015860)(1118767464)(0)",
  SUM("t1"."$temp5_cse") AS "TEMP(Calculation_6391130215614860)(765597232)(0)",
  SUM("t1"."$temp2_cse") AS "TEMP(Calculation_6611130215125100)(3843924142)(0)",
  SUM(("t1"."$temp10_cse" + "t1"."$temp9_cse")) AS "TEMP(Calculation_7011130163024354)(3435665530)(0)",
  SUM(("t1"."$temp0_cse" + "t1"."$temp3_cse")) AS "TEMP(Calculation_9011130163504501)(2937280196)(0)",
  SUM("t1"."$temp3_cse") AS "TEMP(Calculation_9331125234820136)(2800380664)(0)",
  SUM("t1"."$temp4_cse") AS "TEMP(Calculation_9591130215701255)(1514096540)(0)",
  SUM("t1"."$temp5_cse") AS "TEMP(Calculation_9591130215701255)(2910172922)(0)",
  SUM((CASE ("t1"."EventID=" = 27) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("t1"."EventID=" = 17) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy 2))(570114623)(0)",
  SUM((CASE ("t1"."EventID=" = 26) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  SUM((CASE ("t1"."EventID=" = 29) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Cross xA (copy))(622706038)(0)",
  SUM((CASE ("t1"."EventID=" = 15) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(LongPass xA (copy))(1177596751)(0)",
  SUM("t1"."$temp10_cse") AS "TEMP(SetPiece xA (copy))(1012584082)(0)",
  MAX("t1"."$temp6_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t1"."$temp6_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM (
  SELECT "t0"."$temp8_cse" AS "$temp8_cse",
    "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."$temp11_cse" AS "$temp11_cse",
    "t0"."Y=" AS "Y=",
    "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."X=" AS "X=",
    "t0"."$temp10_cse" AS "$temp10_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."xA" AS "xA",
    "t0"."$temp0_cse" AS "$temp0_cse",
    "t0"."$temp5_cse" AS "$temp5_cse",
    "t0"."Minutes" AS "Minutes",
    "t0"."Jersey" AS "Jersey",
    "t0"."$temp7_cse" AS "$temp7_cse",
    "t0"."$temp6_cse" AS "$temp6_cse",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."EventID=" AS "EventID=",
    (("t0"."$temp1_cse" + "t0"."$temp2_cse") + "t0"."$temp4_cse") AS "$temp3_cse",
    (("t0"."$temp8_cse" + "t0"."$temp7_cse") + "t0"."$temp5_cse") AS "$temp9_cse"
  FROM (
    SELECT "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."PlayerID=" AS "PlayerID=",
      "Extract"."xA" AS "xA",
      "Extract"."Minutes" AS "Minutes",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EventID=" AS "EventID=",
      ((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "$temp0_cse",
      ((CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END)) AS "$temp10_cse",
      ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp11_cse",
      (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp1_cse",
      (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp2_cse",
      (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp4_cse",
      (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END) AS "$temp5_cse",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp6_cse",
      (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END) AS "$temp7_cse",
      (CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) AS "$temp8_cse"
    FROM "Extract"."Extract" "Extract"
    WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
  ) "t0"
) "t1"
GROUP BY 1
HAVING (((CASE WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN "t1"."$temp11_cse" THEN ABS("t1"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN "t1"."$temp11_cse" THEN "t1"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) = 'Fullback') AND ((SUM("t1"."$temp7_cse") <= 707) AND (SUM("t1"."$temp8_cse") <= 154) AND (SUM("t1"."$temp9_cse") >= 0) AND (SUM("t1"."$temp9_cse") <= 2415) AND (SUM("t1"."$temp10_cse") >= 0) AND (SUM("t1"."$temp10_cse") <= 117) AND (SUM(("t1"."$temp10_cse" + "t1"."$temp9_cse")) >= 0) AND (SUM(("t1"."$temp10_cse" + "t1"."$temp9_cse")) <= 2418) AND ((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '14.999999999999851'::double precision) AND ((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision)))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K21mhRXVEPBL40SXxBVUhA", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."GS" AS "GS"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GXE8J276UDFIAaioM9vUkz", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((CASE WHEN (("Extract"."Is BR" = 1) OR ("Extract"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1040824120490037248)(3569980435)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5170109135305439)(2192657609)(0)",
  SUM((CASE WHEN (("Extract"."Is BR" = 1) OR ("Extract"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456916283400)(460446219)(0)",
  SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 13) AND ("Extract"."Y=" > -11)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8630109135910367)(290862897)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8991219151115444)(2318621208)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 13) AND ("Extract"."Y=" > -11)) THEN 1 ELSE 0 END)) AS "sum:BallsReceivedInBox (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "sum:BallsReceivedInBox (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '15.000000000000149'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GZ4q3WhykhmIxhigQYaYVD", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Backwards') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1711217153903952)(1606284653)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM("Extract"."Is CP") AS "TEMP(Calculation_2611217153944683)(1491616458)(0)",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Forward') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2611217153944683)(41354044)(0)",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" < 20) AND ("Extract"."EndXpass" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2850109134931479)(2893063479)(0)",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5065282970311991300)(2819513363)(0)",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Neutral') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5410109140135457)(3516019706)(0)",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5851217154549266)(1758715650)(0)",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 13) AND ("Extract"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8470109135730450)(1180233182)(0)",
  SUM("Extract"."Is FinalThirdPass") AS "TEMP(Calculation_9291217153222481)(2637409670)(0)",
  SUM(((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + ((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)))) AS "TEMP(KeyPass ShortPass/90 (copy))(2371140515)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  AVG(CAST("Extract"."PassDistance" AS DOUBLE PRECISION OR NULL)) AS "avg:PassDistance:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25) AND ("Extract"."Is KP" = 1)) THEN 1 ELSE 0 END)) AS "sum:Box Pass (copy):ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_1951217154349885:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND (SQRT((POWER(CAST(("Extract"."EndXpass" - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."EndYPass" AS DOUBLE PRECISION OR NULL), 2))) < 25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_201676849087516673:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970311516163:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 20) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970313658373:ok",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Forward') THEN 1 ELSE 0 END)) AS "sum:Calculation_8771217153645203:ok",
  SUM(((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + ((CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)))) AS "sum:Calculation_9230206143251735:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND (SQRT((POWER(CAST(("Extract"."EndXpass" - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."EndYPass" AS DOUBLE PRECISION OR NULL), 2))) < 15)) THEN 1 ELSE 0 END)) AS "sum:Deep Passes (copy):ok",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Neutral') THEN 1 ELSE 0 END)) AS "sum:Forward Pass (copy 2):ok",
  SUM((CASE WHEN ("Extract"."PassAngle" = 'Backwards') THEN 1 ELSE 0 END)) AS "sum:Forward Pass (copy):ok",
  SUM("Extract"."Is FinalThirdPass") AS "sum:Is FinalThirdPass:ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" < 20) AND ("Extract"."EndXpass" > 19)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 2):ok",
  SUM((CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 13) AND ("Extract"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 3):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.011111111111110988'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KtKPL0qWEftLpzfF4Z2rUF", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."Half=" AS "Half="
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GHnMxoHPEFeL19cr/NPgXx", "lqctx-batch-query-id": "1" } } */;
SELECT MIN("Extract"."Timestamp") AS "lower:none:Timestamp:qk",
  MAX("Extract"."Timestamp") AS "upper:none:Timestamp:qk"
FROM "Extract"."Extract" "Extract"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Pyh/lYVjUYKJG8u9e7o9l1" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JaCTyndqUzfIrIefIq7Aey" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."ResultID=" = 13)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220716687364)(1537862859)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1602697194)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1973260458)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "sum:Calculation_0791125235432165:ok",
  SUM((CASE WHEN ("Extract"."ResultID=" = 13) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220714024961:ok",
  SUM((CASE WHEN (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."ResultID=" = 13)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220715352067:ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal Goal (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 23) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal Goal (copy 3):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "sum:Normal SOT (copy 3):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal SOT (copy):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 25) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy 2):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 23) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy 3):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy 4):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.044444444444444002'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0PvLGG4okkvLX/uUVkHWii", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) AS "usr:Calculation_7111127133254471:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.044444444444444002'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '26.788888888889154'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Lwswu3MBUi1Lhvtqxa4UCi" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk",
  MIN("t0"."usr:Calculation_7111127133254471:qk") AS "lower:usr:Calculation_7111127133254471:qk",
  MAX("t0"."usr:Calculation_7111127133254471:qk") AS "upper:usr:Calculation_7111127133254471:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk",
    (SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) AS "usr:Calculation_7111127133254471:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Zamalek') AND ((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Ahly'))
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Dea/rFUW0nHLmu34gJCv0o" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CASE WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) AS "usr:Calculation_2284169459433848840:nk"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Zamalek') AND ((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Ahly'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PeLceYntEEqIb0QkrbKGVm", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved'))) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Zamalek') AND ((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Ahly'))
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.19999999999999801'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) >= 0) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) <= 83))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0lVs8FMVkE2I69KMhUpISx", "lqctx-batch-query-id": "4" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk",
  MIN("t0"."usr:Calculation_7111127133254471:qk") AS "lower:usr:Calculation_7111127133254471:qk",
  MAX("t0"."usr:Calculation_7111127133254471:qk") AS "upper:usr:Calculation_7111127133254471:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk",
    (SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) AS "usr:Calculation_7111127133254471:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0bD179ft0zNJA+k5XU8Jkg" } } */;
SELECT "t2"."PlayerID=" AS "PlayerID=",
  "t2"."TEMP(Calculation_2211120183238996)(2975152944)(0)" AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  "t2"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  "t2"."TEMP(Calculation_6031211200312248)(3917352840)(0)" AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  "t2"."TEMP(Calculation_7111127133254471)(1973260458)(0)" AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  "t2"."TEMP(Calculation_7111127133254471)(2670947356)(0)" AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  "t2"."TEMP(Calculation_9211127133504464)(2901309198)(0)" AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  "t2"."TEMP(Calculation_9211127133504464)(3388204385)(0)" AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  "t2"."TEMP(Median X for Position (copy))(4165715327)(0)" AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  "t2"."TEMP(Normal Shots xG (copy))(107794221)(0)" AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  "t2"."TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  "t2"."TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  "t2"."TEMP(attr:Jersey:nk)(2152732858)(0)" AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  "t2"."TEMP(attr:Jersey:nk)(585542566)(0)" AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM (
  SELECT "t1"."$temp7_cse" AS "$temp7_cse",
    "t1"."$temp6_cse" AS "$temp6_cse",
    "t1"."$temp5_cse" AS "$temp5_cse",
    "t1"."$temp4_cse" AS "$temp4_cse",
    "t1"."$temp2_cse" AS "$temp2_cse",
    "t1"."TEMP(Calculation_6031211200312248)(3917352840)(0)" AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
    "t1"."TEMP(Calculation_9211127133504464)(3388204385)(0)" AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
    "t1"."TEMP(attr:Jersey:nk)(585542566)(0)" AS "TEMP(attr:Jersey:nk)(585542566)(0)",
    "t1"."TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
    "t1"."TEMP(Normal Shots xG (copy))(107794221)(0)" AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
    "t1"."TEMP(Calculation_9211127133504464)(2901309198)(0)" AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
    "t1"."TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
    "t1"."$temp3_cse" AS "$temp3_cse",
    "t1"."TEMP(attr:Jersey:nk)(2152732858)(0)" AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
    "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."PlayerID=" AS "PlayerID=",
    "t1"."TEMP(Calculation_2211120183238996)(2975152944)(0)" AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
    "t1"."TEMP(Calculation_7111127133254471)(2670947356)(0)" AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
    "t1"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
    "t1"."TEMP(Calculation_7111127133254471)(1973260458)(0)" AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
    "t1"."TEMP(Median X for Position (copy))(4165715327)(0)" AS "TEMP(Median X for Position (copy))(4165715327)(0)",
    (CASE WHEN "t1"."$temp1_cse" THEN 'Centerback' WHEN "t1"."$temp2_cse" THEN 'Fullback' WHEN ("t1"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < -40) THEN 'Keeper' WHEN "t1"."$temp3_cse" THEN 'DefensiveMid' WHEN "t1"."$temp4_cse" THEN 'Centermid' WHEN "t1"."$temp5_cse" THEN 'Striker' WHEN "t1"."$temp6_cse" THEN 'AttackingMid' WHEN "t1"."$temp7_cse" THEN 'Winger' ELSE null::text END) AS "$temp0_cse"
  FROM (
    SELECT "t0"."TEMP(Median X for Position (copy))(4165715327)(0)" AS "TEMP(Median X for Position (copy))(4165715327)(0)",
      "t0"."TEMP(Calculation_7111127133254471)(2670947356)(0)" AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
      "t0"."TEMP(Calculation_7111127133254471)(1973260458)(0)" AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
      "t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
      "t0"."TEMP(Calculation_2211120183238996)(2975152944)(0)" AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
      "t0"."PlayerID=" AS "PlayerID=",
      "t0"."TEMP(attr:Jersey:nk)(2152732858)(0)" AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
      "t0"."TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
      "t0"."TEMP(Calculation_9211127133504464)(2901309198)(0)" AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
      "t0"."TEMP(Normal Shots xG (copy))(107794221)(0)" AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
      "t0"."TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)" AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
      "t0"."TEMP(Calculation_6031211200312248)(3917352840)(0)" AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
      "t0"."TEMP(Calculation_9211127133504464)(3388204385)(0)" AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
      "t0"."TEMP(attr:Jersey:nk)(585542566)(0)" AS "TEMP(attr:Jersey:nk)(585542566)(0)",
      (("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < -11) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" > -40) AND ("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" < 25)) AS "$temp1_cse",
      (("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" > 24) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < 7)) AS "$temp2_cse",
      (("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" > -12) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < 0) AND ("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" < 25)) AS "$temp3_cse",
      (("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" < 25) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" > -1) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < 6)) AS "$temp4_cse",
      (("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" > 14) AND ("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" < 23)) AS "$temp5_cse",
      (("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" >= 6) AND ("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" < 23)) AS "$temp6_cse",
      (("t0"."TEMP(Median X for Position (copy))(4165715327)(0)" > 22) AND ("t0"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" > 6)) AS "$temp7_cse"
    FROM (
      SELECT "Extract"."PlayerID=" AS "PlayerID=",
        SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
        SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
        SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
        SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
        MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
        MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
        MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
        MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
        SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
        AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
        SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
        SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
        AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)"
      FROM "Extract"."Extract" "Extract"
      GROUP BY 1
    ) "t0"
  ) "t1"
) "t2"
WHERE (((CAST("t2"."TEMP(Calculation_2211120183238996)(2975152944)(0)" AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST("t2"."TEMP(Calculation_2211120183238996)(2975152944)(0)" AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision) AND (("t2"."$temp0_cse" = 'AttackingMid') OR ("t2"."$temp0_cse" = 'Centerback') OR ("t2"."$temp0_cse" = 'Centermid') OR ("t2"."$temp0_cse" = 'DefensiveMid') OR ("t2"."$temp0_cse" = 'Fullback') OR ("t2"."$temp0_cse" = 'Keeper') OR ("t2"."$temp0_cse" = 'Striker') OR ("t2"."$temp0_cse" = 'Winger') OR (CASE WHEN "t2"."$temp1_cse" THEN FALSE WHEN "t2"."$temp2_cse" THEN FALSE WHEN ("t2"."TEMP(Calculation_2284169459392434182)(2847512811)(0)" < -40) THEN FALSE WHEN "t2"."$temp3_cse" THEN FALSE WHEN "t2"."$temp4_cse" THEN FALSE WHEN "t2"."$temp5_cse" THEN FALSE WHEN "t2"."$temp6_cse" THEN FALSE WHEN "t2"."$temp7_cse" THEN FALSE ELSE TRUE END)) AND (("t2"."TEMP(Calculation_7111127133254471)(2670947356)(0)" + "t2"."TEMP(Calculation_7111127133254471)(1973260458)(0)") >= 0) AND (("t2"."TEMP(Calculation_7111127133254471)(2670947356)(0)" + "t2"."TEMP(Calculation_7111127133254471)(1973260458)(0)") <= 83))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MbBHtdUT06nJSICAC7BdnN", "lqctx-batch-query-id": "3" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  "t1"."usr:Calculation_6671211201220084:ok" AS "usr:Calculation_6671211201220084:ok"
FROM (
  SELECT "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."$temp5_cse" AS "$temp5_cse",
    "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."$temp7_cse" AS "$temp7_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."usr:Calculation_6671211201220084:ok" AS "usr:Calculation_6671211201220084:ok",
    "t0"."__measure__3" AS "__measure__3",
    "t0"."$temp6_cse" AS "$temp6_cse",
    "t0"."$temp3_cse" AS "$temp3_cse",
    (CASE WHEN "t0"."$temp1_cse" THEN 'Centerback' WHEN "t0"."$temp2_cse" THEN 'Fullback' WHEN ("t0"."__measure__3" < -40) THEN 'Keeper' WHEN "t0"."$temp3_cse" THEN 'DefensiveMid' WHEN "t0"."$temp4_cse" THEN 'Centermid' WHEN "t0"."$temp5_cse" THEN 'Striker' WHEN "t0"."$temp6_cse" THEN 'AttackingMid' WHEN "t0"."$temp7_cse" THEN 'Winger' ELSE null::text END) AS "$temp0_cse"
  FROM (
    SELECT "Extract"."PlayerID=" AS "PlayerID=",
      AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "__measure__3",
      (SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) + SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END))) AS "usr:Calculation_6671211201220084:ok",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) AS "$temp1_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) AS "$temp2_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) AS "$temp3_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) AS "$temp4_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) AS "$temp5_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) AS "$temp6_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) AS "$temp7_cse"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
    HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) >= 0) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) <= 83))
  ) "t0"
) "t1"
WHERE (("t1"."$temp0_cse" = 'AttackingMid') OR ("t1"."$temp0_cse" = 'Centerback') OR ("t1"."$temp0_cse" = 'Centermid') OR ("t1"."$temp0_cse" = 'DefensiveMid') OR ("t1"."$temp0_cse" = 'Fullback') OR ("t1"."$temp0_cse" = 'Keeper') OR ("t1"."$temp0_cse" = 'Striker') OR ("t1"."$temp0_cse" = 'Winger') OR (CASE WHEN "t1"."$temp1_cse" THEN FALSE WHEN "t1"."$temp2_cse" THEN FALSE WHEN ("t1"."__measure__3" < -40) THEN FALSE WHEN "t1"."$temp3_cse" THEN FALSE WHEN "t1"."$temp4_cse" THEN FALSE WHEN "t1"."$temp5_cse" THEN FALSE WHEN "t1"."$temp6_cse" THEN FALSE WHEN "t1"."$temp7_cse" THEN FALSE ELSE TRUE END))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "EworPSVK0//LKgzjad5zDJ" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM((CASE WHEN ("t1"."ExtraEn=" = 'Header') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1231212214526872)(1363100818)(0)",
  SUM((CASE WHEN "t1"."$temp2_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584699764738)(1884367138)(0)",
  SUM((CASE WHEN ("t1"."$temp1_cse" AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584700837894)(2216378304)(0)",
  SUM((CASE WHEN ("t1"."$temp1_cse" AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584701284359)(444016734)(0)",
  SUM((CASE WHEN ("t1"."$temp1_cse" AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584703967243)(2840597149)(0)",
  SUM("t1"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN "t1"."$temp3_cse" THEN "t1"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN (("t1"."CategoryID=" = 4) AND ("t1"."EventID=" = 32) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4031212212458577)(537634534)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  AVG((CASE WHEN "t1"."$temp3_cse" THEN ABS("t1"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MAX("t1"."$temp4_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t1"."$temp4_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN "t1"."$temp2_cse" THEN 1 ELSE 0 END)) AS "sum:Calculation_2081718584699367425:ok",
  SUM((CASE WHEN ("t1"."ExtraEn=" = 'Header') THEN 1 ELSE 0 END)) AS "sum:Calculation_6991212213617197:ok"
FROM (
  SELECT "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."IsKPNA" AS "IsKPNA",
    "t0"."EventID=" AS "EventID=",
    "t0"."Jersey" AS "Jersey",
    "t0"."ResultEn=" AS "ResultEn=",
    "t0"."CategoryID=" AS "CategoryID=",
    "t0"."Minutes" AS "Minutes",
    "t0"."ExtraEn=" AS "ExtraEn=",
    "t0"."$temp0_cse" AS "$temp0_cse",
    "t0"."$temp3_cse" AS "$temp3_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."X=" AS "X=",
    "t0"."Y=" AS "Y=",
    (CASE WHEN "t0"."$temp2_cse" THEN TRUE ELSE FALSE END) AS "$temp1_cse"
  FROM (
    SELECT "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."PlayerID=" AS "PlayerID=",
      "Extract"."ExtraEn=" AS "ExtraEn=",
      "Extract"."Minutes" AS "Minutes",
      "Extract"."CategoryID=" AS "CategoryID=",
      "Extract"."ResultEn=" AS "ResultEn=",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EventID=" AS "EventID=",
      "Extract"."IsKPNA" AS "IsKPNA",
      ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved')) AS "$temp0_cse",
      (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25)) AS "$temp2_cse",
      ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp3_cse",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp4_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
GROUP BY 1
HAVING (((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.044444444444443953'::double precision) AND ((CAST(SUM("t1"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision) AND ((SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END))) >= 0) AND ((SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END))) <= 83))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K7aK1muskpBJeH2GIGlRyg", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CAST(((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) - SUM((CASE WHEN (("Extract"."CategoryID=" = 4) AND ("Extract"."EventID=" = 32) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS DOUBLE PRECISION OR NULL) / NULLIF((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))),0)) AS "usr:Calculation_1451212214704491:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.044444444444443953'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) >= 0) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) <= 83))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "PHe24zYmUFyLPJw6Pl9vNG" } } */;
SELECT "Extract"."Jersey" AS "Jersey"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "J8B0OQXW0N6K+P2xoB7nrd", "lqctx-batch-query-id": "4" } } */;
SELECT "t1"."Date" AS "Date",
  "t1"."PlayerID=" AS "PlayerID=",
  SUM("t1"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM("t1"."$temp11_cse") AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  SUM((((CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_2081718584710451213)(631135046)(0)",
  SUM("t1"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN "t1"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN (("t1"."CategoryID=" = 4) AND ("t1"."EventID=" = 32) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4031212212458577)(537634534)(0)",
  SUM((CASE WHEN "t1"."$temp2_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4050108175946683)(1376677892)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 33) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4050108175946683)(858612526)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 25) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220723064838)(196584428)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 23) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220723064838)(3500717404)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1602697194)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1973260458)(0)",
  SUM(("t1"."$temp11_cse" + ((CASE WHEN (("t1"."EventID=" = 27) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."EventID=" = 26) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)))) AS "TEMP(Calculation_5406923220863590413)(2371140515)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 1) AND ("t1"."ExtraEn=" = 'Committed')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220867543055)(4052290618)(0)",
  SUM("t1"."$temp3_cse") AS "TEMP(Calculation_5591128142635872)(4016917522)(0)",
  SUM((CASE WHEN (((CASE WHEN ("t1"."EventID=" = 34) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t1"."EventID=" = 37) THEN TRUE ELSE FALSE END)) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(1227218811)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t1"."EventID=" = 35) THEN TRUE ELSE FALSE END) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(3907758580)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t1"."EventID=" = 11) THEN TRUE ELSE FALSE END) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(703760767)(0)",
  SUM((CASE WHEN (((CASE WHEN "t1"."$temp2_cse" THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t1"."EventID=" = 36) THEN TRUE ELSE FALSE END)) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(905003555)(0)",
  SUM("t1"."$temp4_cse") AS "TEMP(Calculation_598345456914075653)(759165460)(0)",
  SUM((CASE WHEN (("t1"."Is BR" = 1) OR ("t1"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456916283400)(460446219)(0)",
  SUM((CASE ("t1"."EventID=" = 21) WHEN TRUE THEN "t1"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("t1"."EventID=" = 27) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("t1"."EventID=" = 26) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN ABS("t1"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM((CASE ("t1"."EventID=" = 22) WHEN TRUE THEN "t1"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  SUM(("t1"."$temp3_cse" - "t1"."$temp4_cse")) AS "TEMP(Open Play Key Pass % (copy))(2442640322)(0)",
  MAX("t1"."$temp6_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t1"."$temp6_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  "t1"."Date" AS "TEMP(attr:Date:ok)(2320508044)(0)",
  "t1"."Date" AS "TEMP(attr:Date:ok)(2376345529)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("t1"."$temp7_cse") AS "TEMP(attr:Teams Clean (copy):nk)(2100085202)(0)",
  MAX("t1"."$temp7_cse") AS "TEMP(attr:Teams Clean (copy):nk)(247543309)(0)",
  SUM("t1"."$temp8_cse") AS "sum:Calculation_1245386050672406528:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."EndXpass" > 41) AND ("t1"."EndYPass" < 25) AND ("t1"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_1951217154349885:ok",
  SUM((CASE WHEN "t1"."$temp9_cse" THEN 1 ELSE 0 END)) AS "sum:Calculation_2081718584699367425:ok",
  SUM("t1"."$temp10_cse") AS "sum:Calculation_2971127140033970:ok",
  SUM(("t1"."$temp10_cse" + "t1"."$temp8_cse")) AS "sum:Calculation_5406923220866215950:ok",
  SUM("t1"."$temp11_cse") AS "sum:Calculation_7871123234319930:ok",
  SUM((CASE WHEN (("t1"."EventID=" = 9) AND ("t1"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Calculation_822681002736799744:ok",
  SUM((((CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "sum:Calculation_8831225140009827:ok",
  SUM(("t1"."$temp11_cse" + ((CASE WHEN (("t1"."EventID=" = 27) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."EventID=" = 26) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)))) AS "sum:Calculation_9230206143251735:ok",
  SUM((CASE WHEN ("t1"."EventID=" = 34) THEN 1 ELSE 0 END)) AS "sum:Calculation_9530108180152342:ok",
  SUM("t1"."$temp5_cse") AS "sum:Complete Corners (copy 3):ok",
  SUM((CASE WHEN (("t1"."EventID=" IN (7, 9, 10)) AND ("t1"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 7):ok",
  SUM((CASE WHEN (("t1"."EventID=" = 19) AND ("t1"."ResultEn=" = 'Success') AND ("t1"."X=" > 20)) THEN 1 ELSE 0 END)) AS "sum:Dribbles (copy):ok",
  SUM((CASE WHEN (("t1"."EventID=" = 19) AND ("t1"."ResultEn=" = 'Success') AND ("t1"."X=" > 41) AND ("t1"."Y=" > -25) AND ("t1"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "sum:Final Third Successful Dribble (copy 2):ok",
  SUM((CASE WHEN (("t1"."EventID=" = 19) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "sum:Final Third Successful Dribble (copy):ok",
  SUM("t1"."Is CP") AS "sum:Is CP:ok",
  SUM("t1"."Is FinalThirdPass") AS "sum:Is FinalThirdPass:ok",
  SUM("t1"."Minutes") AS "sum:Minutes:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."EndXpass" > 41) AND ("t1"."EndYPass" < 13) AND ("t1"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 3):ok",
  SUM((CASE WHEN (("t1"."EventID=" = 32) AND ("t1"."X=" > 41) AND ("t1"."Y=" < 25) AND ("t1"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):ok",
  SUM((CASE WHEN ((CASE WHEN "t1"."$temp9_cse" THEN TRUE ELSE FALSE END) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:SOT Inside Box  (copy):ok"
FROM (
  SELECT "t0"."$temp8_cse" AS "$temp8_cse",
    "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."$temp11_cse" AS "$temp11_cse",
    "t0"."IsKPNA" AS "IsKPNA",
    "t0"."Is CP" AS "Is CP",
    "t0"."EventID=" AS "EventID=",
    "t0"."$temp6_cse" AS "$temp6_cse",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."Date" AS "Date",
    "t0"."$temp7_cse" AS "$temp7_cse",
    "t0"."EndXpass" AS "EndXpass",
    "t0"."$temp9_cse" AS "$temp9_cse",
    "t0"."Jersey" AS "Jersey",
    "t0"."EndYPass" AS "EndYPass",
    "t0"."ResultEn=" AS "ResultEn=",
    "t0"."EventEn=" AS "EventEn=",
    "t0"."CategoryID=" AS "CategoryID=",
    "t0"."Minutes" AS "Minutes",
    "t0"."Is AssistNA" AS "Is AssistNA",
    "t0"."$temp5_cse" AS "$temp5_cse",
    "t0"."Is FinalThirdPass" AS "Is FinalThirdPass",
    "t0"."Is BR" AS "Is BR",
    "t0"."ExtraEn=" AS "ExtraEn=",
    "t0"."$temp0_cse" AS "$temp0_cse",
    "t0"."xA" AS "xA",
    "t0"."$temp3_cse" AS "$temp3_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."$temp10_cse" AS "$temp10_cse",
    "t0"."ResultID=" AS "ResultID=",
    "t0"."X=" AS "X=",
    "t0"."Y=" AS "Y=",
    "t0"."xG" AS "xG",
    (("t0"."$temp5_cse" + (CASE WHEN (("t0"."EventID=" = 29) AND ("t0"."ResultID=" = 10)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t0"."EventID=" = 15) AND ("t0"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "$temp4_cse"
  FROM (
    SELECT "Extract"."xG" AS "xG",
      "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."ResultID=" AS "ResultID=",
      "Extract"."PlayerID=" AS "PlayerID=",
      "Extract"."xA" AS "xA",
      "Extract"."ExtraEn=" AS "ExtraEn=",
      "Extract"."Is BR" AS "Is BR",
      "Extract"."Is FinalThirdPass" AS "Is FinalThirdPass",
      "Extract"."Is AssistNA" AS "Is AssistNA",
      "Extract"."Minutes" AS "Minutes",
      "Extract"."CategoryID=" AS "CategoryID=",
      "Extract"."EventEn=" AS "EventEn=",
      "Extract"."ResultEn=" AS "ResultEn=",
      "Extract"."EndYPass" AS "EndYPass",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EndXpass" AS "EndXpass",
      "Extract"."Date" AS "Date",
      "Extract"."EventID=" AS "EventID=",
      "Extract"."Is CP" AS "Is CP",
      "Extract"."IsKPNA" AS "IsKPNA",
      ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved')) AS "$temp0_cse",
      (CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END) AS "$temp10_cse",
      (((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "$temp11_cse",
      ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp1_cse",
      (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) AS "$temp2_cse",
      (((CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) + (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END)) + (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END)) AS "$temp3_cse",
      (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp5_cse",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp6_cse",
      (CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp7_cse",
      (CASE WHEN (("Extract"."EventID=" = 1) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END) AS "$temp8_cse",
      (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25)) AS "$temp9_cse"
    FROM "Extract"."Extract" "Extract"
    WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
  ) "t0"
) "t1"
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0JQu8D5MUg0IyPDv16IlV+", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."GS" AS "GS",
  "Extract"."Half=" AS "Half=",
  "Extract"."Jersey" AS "Jersey",
  (CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Teams Clean (copy)",
  "Extract"."Timestamp" AS "Timestamp"
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  2,
  3,
  4,
  5
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "LHJA5826E2BL1W+rhRsZMK" } } */;
SELECT MIN("t0"."sum:Successful Dribbles (copy):qk") AS "lower:sum:Successful Dribbles (copy):qk",
  MAX("t0"."sum:Successful Dribbles (copy):qk") AS "upper:sum:Successful Dribbles (copy):qk",
  MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT SUM((CASE WHEN ("Extract"."EventID=" = 19) THEN 1 ELSE 0 END)) AS "sum:Successful Dribbles (copy):qk",
    (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "OvfpIJLPUZ2KDMZO/Dl3Bh" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN ("Extract"."EventID=" = 19) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0131219165516181)(3754507940)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0131219165516181)(4188895986)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 1) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1245386050672832513)(2195911687)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" > 20)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2211127143839750)(2101137744)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 18) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4879579854335959041)(1885304425)(0)",
  SUM((CASE WHEN (("Extract"."Is BR" = 1) OR ("Extract"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4879579854336270338)(460446219)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" > 41) AND ("Extract"."Y=" > -25) AND ("Extract"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5065282970252763136)(1244521805)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9031219170447202)(637682202)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" < 20) AND ("Extract"."X=" > -20)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9151127150125473)(3699429832)(0)",
  SUM(((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 1) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END))) AS "TEMP(Dribbling + Fouls (copy))(431833602)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 4) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END)) AS "sum:Calculation_1040824120535175178:ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END)) AS "sum:Calculation_2971127140033970:ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 18) THEN 1 ELSE 0 END)) AS "sum:Calculation_4879579854335737856:ok",
  SUM(((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 1) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END))) AS "sum:Calculation_5406923220866215950:ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 18) AND ("Extract"."X=" < -20)) THEN 1 ELSE 0 END)) AS "sum:Dispossessed (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" > 20)) THEN 1 ELSE 0 END)) AS "sum:Dribbles (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" < 20) AND ("Extract"."X=" > -20)) THEN 1 ELSE 0 END)) AS "sum:Final Third Dribble (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" > 41) AND ("Extract"."Y=" > -25) AND ("Extract"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "sum:Final Third Successful Dribble (copy 2):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" > -25) AND ("Extract"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "sum:InBox Successful Dribble (copy):ok",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" < -20)) THEN '1'::double precision ELSE '0'::double precision END)) AS "sum:Middle Third Dribble (copy):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 19) THEN 1 ELSE 0 END)) <= 152) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LlKfTMUQU8dJDR2l7zHZzi", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CAST(SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success') AND ("Extract"."X=" > 20)) THEN 1 ELSE 0 END)) AS DOUBLE PRECISION OR NULL) / NULLIF((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)),0)) AS "usr:Calculation_2211127143839750:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING ((SUM((CASE WHEN ("Extract"."EventID=" = 19) THEN 1 ELSE 0 END)) <= 152) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "D8QAz8rf0lpKjgxzIT5fyq" } } */;
SELECT "t1"."Calculation_2284169459244019712" AS "Calculation_2284169459244019712",
  "t1"."Date" AS "Date",
  "t1"."MatchID" AS "MatchID",
  SUM("t1"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND "t1"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM((((CASE WHEN (("t1"."EventID=" = 17) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."EventID=" = 29) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."EventID=" = 15) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN "t1"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN "t1"."$temp2_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4050108175946683)(1376677892)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 33) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4050108175946683)(858612526)(0)",
  SUM((((CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."Is AssistNA" = 1) AND ("t1"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4131225140217278)(631135046)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1602697194)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1973260458)(0)",
  SUM((CASE WHEN (((CASE WHEN ("t1"."EventID=" = 34) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t1"."EventID=" = 37) THEN TRUE ELSE FALSE END)) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(1227218811)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t1"."EventID=" = 35) THEN TRUE ELSE FALSE END) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(3907758580)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t1"."EventID=" = 11) THEN TRUE ELSE FALSE END) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(703760767)(0)",
  SUM((CASE WHEN (((CASE WHEN "t1"."$temp2_cse" THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t1"."EventID=" = 36) THEN TRUE ELSE FALSE END)) AND ("t1"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(905003555)(0)",
  SUM((CASE ("t1"."EventID=" = 21) WHEN TRUE THEN "t1"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 21) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 22) AND ("t1"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("t1"."EventID=" = 27) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("t1"."EventID=" = 26) WHEN TRUE THEN "t1"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN ABS("t1"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM((CASE ("t1"."EventID=" = 22) WHEN TRUE THEN "t1"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  MAX("t1"."AwayT") AS "TEMP(attr:AwayT:nk)(2673897731)(0)",
  MIN("t1"."AwayT") AS "TEMP(attr:AwayT:nk)(572039864)(0)",
  "t1"."Calculation_2284169459244019712" AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  "t1"."Calculation_2284169459244019712" AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  "t1"."Date" AS "TEMP(attr:Date:ok)(2320508044)(0)",
  "t1"."Date" AS "TEMP(attr:Date:ok)(2376345529)(0)",
  MAX("t1"."HomeT") AS "TEMP(attr:HomeT:nk)(3856079624)(0)",
  MIN("t1"."HomeT") AS "TEMP(attr:HomeT:nk)(786738601)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN("t1"."$temp3_cse") AS "TEMP(attr:Teams Clean (copy):nk)(2100085202)(0)",
  MAX("t1"."$temp3_cse") AS "TEMP(attr:Teams Clean (copy):nk)(247543309)(0)",
  SUM((CASE WHEN (("t1"."EventID=" = 1) AND ("t1"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END)) AS "sum:Calculation_1245386050672406528:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."EndXpass" > 41) AND ("t1"."EndYPass" < 25) AND ("t1"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_1951217154349885:ok",
  SUM((CASE WHEN (("t1"."EventID=" = 19) AND ("t1"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END)) AS "sum:Calculation_2971127140033970:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."X=" > 41) AND ("t1"."Y=" < 25) AND ("t1"."Y=" > -25) AND ("t1"."EndXpass" > 41) AND ("t1"."EndYPass" < 25) AND ("t1"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970311516163:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."EndXpass" > 20) AND ("t1"."EndYPass" < 25) AND ("t1"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970313658373:ok",
  SUM((CASE WHEN ("t1"."ResultID=" = 13) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220714024961:ok",
  SUM((((CASE WHEN (("t1"."EventID=" = 17) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("t1"."EventID=" = 29) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("t1"."EventID=" = 15) AND ("t1"."ResultID=" = 10) AND ("t1"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "sum:Calculation_7871123234319930:ok",
  SUM((CASE WHEN (("t1"."EventID=" = 9) AND ("t1"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Calculation_822681002736799744:ok",
  SUM((CASE WHEN ("t1"."EventID=" = 34) THEN 1 ELSE 0 END)) AS "sum:Calculation_9530108180152342:ok",
  SUM((CASE WHEN (("t1"."EventID=" = 17) AND ("t1"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 3):ok",
  SUM((CASE WHEN (("t1"."EventID=" IN (7, 9, 10)) AND ("t1"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 7):ok",
  SUM("t1"."Is CP") AS "sum:Is CP:ok",
  SUM((CASE WHEN (("t1"."Is CP" = 1) AND ("t1"."EndXpass" > 41) AND ("t1"."EndYPass" < 13) AND ("t1"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 3):ok",
  SUM((CASE WHEN (("t1"."EventID=" = 32) AND ("t1"."X=" > 41) AND ("t1"."Y=" < 25) AND ("t1"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):ok"
FROM (
  SELECT "t0"."Calculation_2284169459244019712" AS "Calculation_2284169459244019712",
    "t0"."IsKPNA" AS "IsKPNA",
    "t0"."Is CP" AS "Is CP",
    "t0"."EventID=" AS "EventID=",
    "t0"."Date" AS "Date",
    "t0"."AwayT" AS "AwayT",
    "t0"."EndXpass" AS "EndXpass",
    "t0"."HomeT" AS "HomeT",
    "t0"."Jersey" AS "Jersey",
    "t0"."EndYPass" AS "EndYPass",
    "t0"."ResultEn=" AS "ResultEn=",
    "t0"."Is AssistNA" AS "Is AssistNA",
    "t0"."ExtraEn=" AS "ExtraEn=",
    "t0"."MatchID" AS "MatchID",
    "t0"."xA" AS "xA",
    "t0"."ResultID=" AS "ResultID=",
    "t0"."X=" AS "X=",
    "t0"."Y=" AS "Y=",
    "t0"."xG" AS "xG",
    ("t0"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved')) AS "$temp0_cse",
    ("t0"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp1_cse",
    (("t0"."EventID=" = 33) AND ("t0"."ResultID=" = 10)) AS "$temp2_cse",
    (CASE WHEN ("t0"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("t0"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("t0"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("t0"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("t0"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("t0"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("t0"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("t0"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("t0"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("t0"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("t0"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("t0"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("t0"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("t0"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("t0"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("t0"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("t0"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("t0"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp3_cse"
  FROM (
    SELECT "Extract"."xG" AS "xG",
      "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."Vs" AS "Vs",
      "Extract"."ResultID=" AS "ResultID=",
      "Extract"."xA" AS "xA",
      "Extract"."MatchID" AS "MatchID",
      "Extract"."ExtraEn=" AS "ExtraEn=",
      "Extract"."Is AssistNA" AS "Is AssistNA",
      "Extract"."ResultEn=" AS "ResultEn=",
      "Extract"."EndYPass" AS "EndYPass",
      "Extract"."HomeT" AS "HomeT",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EndXpass" AS "EndXpass",
      "Extract"."AwayT" AS "AwayT",
      "Extract"."Date" AS "Date",
      "Extract"."EventID=" AS "EventID=",
      "Extract"."Is CP" AS "Is CP",
      "Extract"."IsKPNA" AS "IsKPNA",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712"
    FROM "Extract"."Extract" "Extract"
    WHERE (("Extract"."Timestamp" >= '1899-12-30 00:00:00.000'::timestamp) AND ("Extract"."Timestamp" <= '1899-12-30 01:27:02.000'::timestamp))
  ) "t0"
) "t1"
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KJOqhdRnU0WJYY45gVkdJP", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4131225140217278)(631135046)(0)",
  SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.033333333333332965'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LMkOce92kNRI5beb201NMd", "lqctx-batch-query-id": "3" } } */;
SELECT "t2"."PlayerID=" AS "PlayerID=",
  SUM("t2"."$temp6_cse") AS "TEMP(Attempted Corners (copy 6))(2694967033)(0)",
  SUM("t2"."$temp9_cse") AS "TEMP(Attempted Cross (copy))(4145323035)(0)",
  SUM("t2"."$temp7_cse") AS "TEMP(Attempted FKPass (copy))(202950562)(0)",
  SUM("t2"."$temp16_cse") AS "TEMP(Attempted LongPass (copy))(2910873137)(0)",
  SUM("t2"."$temp5_cse") AS "TEMP(Attempted SetPiece (copy))(4200008025)(0)",
  SUM("t2"."$temp17_cse") AS "TEMP(Attempted ShortPass (copy))(2744275140)(0)",
  SUM("t2"."$temp41_cse") AS "TEMP(Calculation_0011121141705809)(755927760)(0)",
  SUM("t2"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 19) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0131219165516181)(3754507940)(0)",
  SUM("t2"."$temp31_cse") AS "TEMP(Calculation_0131219165516181)(4188895986)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 22) AND "t2"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(1037288496)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 21) AND "t2"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0191127133412467)(3709183897)(0)",
  SUM("t2"."$temp39_cse") AS "TEMP(Calculation_0611121141748016)(319632437)(0)",
  SUM("t2"."$temp22_cse") AS "TEMP(Calculation_0631121141020867)(1282447780)(0)",
  SUM("t2"."$temp35_cse") AS "TEMP(Calculation_0671121141811958)(4017403340)(0)",
  SUM((CASE WHEN "t2"."$temp23_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0910206183133655)(1509674077)(0)",
  SUM((CASE WHEN ("t2"."$temp23_cse" AND ("t2"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0910206183133655)(3142875895)(0)",
  SUM((CASE WHEN (("t2"."Is BR" = 1) OR ("t2"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1040824120490037248)(3569980435)(0)",
  SUM(("t2"."$temp26_cse" + "t2"."$temp27_cse")) AS "TEMP(Calculation_1040824120518721544)(142790776)(0)",
  SUM("t2"."$temp15_cse") AS "TEMP(Calculation_1171124004132719)(1118767464)(0)",
  SUM((CASE WHEN ("t2"."ExtraEn=" = 'Header') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1231212214526872)(1363100818)(0)",
  SUM("t2"."$temp1_cse") AS "TEMP(Calculation_1245386050672832513)(2195911687)(0)",
  SUM("t2"."$temp32_cse") AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  SUM("t2"."$temp33_cse") AS "TEMP(Calculation_1251121141650256)(3256268903)(0)",
  SUM("t2"."xA") AS "TEMP(Calculation_1471130210600423)(3417155546)(0)",
  SUM("t2"."$temp10_cse") AS "TEMP(Calculation_1471130210600423)(3774407575)(0)",
  SUM("t2"."$temp5_cse") AS "TEMP(Calculation_1471130210600423)(3997480072)(0)",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Backwards') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_1711217153903952)(1606284653)(0)",
  SUM((CASE WHEN "t2"."$temp3_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584699764738)(1884367138)(0)",
  SUM((CASE WHEN ("t2"."$temp2_cse" AND "t2"."$temp0_cse") THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584700837894)(2216378304)(0)",
  SUM((CASE WHEN ("t2"."$temp2_cse" AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584701284359)(444016734)(0)",
  SUM((CASE WHEN ("t2"."$temp2_cse" AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2081718584703967243)(2840597149)(0)",
  SUM((("t2"."$temp36_cse" + "t2"."$temp37_cse") + "t2"."$temp38_cse")) AS "TEMP(Calculation_2081718584710451213)(631135046)(0)",
  SUM("t2"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" > 20)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2211127143839750)(2101137744)(0)",
  AVG((CASE WHEN "t2"."$temp42_cse" THEN "t2"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM("t2"."$temp8_cse") AS "TEMP(Calculation_2291130214146351)(1009473167)(0)",
  SUM("t2"."$temp9_cse") AS "TEMP(Calculation_2291130214146351)(301043880)(0)",
  SUM("t2"."$temp5_cse") AS "TEMP(Calculation_2351123204450177)(1012584082)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 25) AND ("t2"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2516878898867253248)(2318621208)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 13) AND ("t2"."Y=" > -11)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2516878898870226945)(2266202699)(0)",
  SUM((CASE WHEN ("t2"."$temp4_cse" AND ("t2"."X=" > 41) AND ("t2"."Y=" < 13) AND ("t2"."Y=" > -13)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2516878898870226945)(338656829)(0)",
  SUM("t2"."Is CP") AS "TEMP(Calculation_2611217153944683)(1491616458)(0)",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Forward') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2611217153944683)(41354044)(0)",
  SUM("t2"."$temp34_cse") AS "TEMP(Calculation_2651121141725828)(1929677230)(0)",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."X=" < 20) AND ("t2"."EndXpass" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2850109134931479)(2893063479)(0)",
  SUM((CASE WHEN ("t2"."Is CP" = 1) THEN ("t2"."EndXpass" - "t2"."X=") ELSE 0 END)) AS "TEMP(Calculation_2976949761601880067)(2356765313)(0)",
  SUM("t2"."Is CP") AS "TEMP(Calculation_2976949761601880067)(4130032858)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 16) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2976949761672871941)(1710504830)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 16) AND ("t2"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2976949761672871941)(4140778677)(0)",
  SUM("t2"."$temp8_cse") AS "TEMP(Calculation_3371121142008648)(1092462792)(0)",
  SUM("t2"."$temp9_cse") AS "TEMP(Calculation_3371121142008648)(1612819171)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 33) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_3455105362690236416)(858612526)(0)",
  SUM("t2"."$temp10_cse") AS "TEMP(Calculation_3611121142349832)(838615445)(0)",
  SUM("t2"."$temp16_cse") AS "TEMP(Calculation_3691130214824169)(3061494121)(0)",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" = 32) AND ("t2"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4031212212458577)(537634534)(0)",
  SUM((CASE WHEN "t2"."$temp18_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4050108175946683)(1376677892)(0)",
  SUM("t2"."$temp11_cse") AS "TEMP(Calculation_4611121140834129)(2673657890)(0)",
  SUM("t2"."$temp21_cse") AS "TEMP(Calculation_4791128142500685)(759165460)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 18) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4879579854335959041)(1885304425)(0)",
  SUM((CASE WHEN (("t2"."Is BR" = 1) OR ("t2"."EventEn=" = 'Recover')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_4879579854336270338)(460446219)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" > 41) AND ("t2"."Y=" > -25) AND ("t2"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5065282970252763136)(1244521805)(0)",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 25) AND ("t2"."Y=" > -25) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5065282970311991300)(2819513363)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5170109135305439)(2192657609)(0)",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" <> 15)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5311121135514353)(3000156720)(0)",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" <> 15) AND ("t2"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5311121135514353)(811684568)(0)",
  SUM((CASE WHEN ("t2"."$temp4_cse" AND ("t2"."ResultID=" = 13)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220716687364)(1537862859)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 25) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220723064838)(196584428)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 23) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220723064838)(3500717404)(0)",
  SUM((CASE WHEN ("t2"."$temp13_cse" = 'Right') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220729716745)(301770501)(0)",
  SUM((CASE WHEN ("t2"."$temp13_cse" = 'Left') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220729716745)(3777348608)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 22) AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1602697194)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220745027596)(1973260458)(0)",
  SUM(("t2"."$temp32_cse" + "t2"."$temp39_cse")) AS "TEMP(Calculation_5406923220863590413)(2371140515)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 1) AND ("t2"."ExtraEn=" = 'Committed')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220867543055)(4052290618)(0)",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Neutral') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5410109140135457)(3516019706)(0)",
  SUM("t2"."$temp15_cse") AS "TEMP(Calculation_5591128142635872)(4016917522)(0)",
  SUM("t2"."$temp16_cse") AS "TEMP(Calculation_5691121142326148)(1766434227)(0)",
  SUM("t2"."$temp20_cse") AS "TEMP(Calculation_5691121142326148)(877677302)(0)",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5851217154549266)(1758715650)(0)",
  SUM((CASE WHEN (((CASE WHEN ("t2"."EventID=" = 34) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t2"."EventID=" = 37) THEN TRUE ELSE FALSE END)) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(1227218811)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t2"."EventID=" = 35) THEN TRUE ELSE FALSE END) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(3907758580)(0)",
  SUM((CASE WHEN ((CASE WHEN ("t2"."EventID=" = 11) THEN TRUE ELSE FALSE END) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(703760767)(0)",
  SUM((CASE WHEN (((CASE WHEN "t2"."$temp18_cse" THEN TRUE ELSE FALSE END) OR (CASE WHEN ("t2"."EventID=" = 36) THEN TRUE ELSE FALSE END)) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(905003555)(0)",
  SUM((CASE ("t2"."EventID=" = 21) WHEN TRUE THEN "t2"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM("t2"."$temp17_cse") AS "TEMP(Calculation_6211125234645436)(765597232)(0)",
  SUM("t2"."$temp19_cse") AS "TEMP(Calculation_6213067557142474752)(3969541207)(0)",
  SUM("t2"."$temp24_cse") AS "TEMP(Calculation_6213067557142474752)(4184309157)(0)",
  SUM("t2"."$temp12_cse") AS "TEMP(Calculation_6291121140907871)(2750939968)(0)",
  SUM("t2"."$temp20_cse") AS "TEMP(Calculation_6611130215125100)(3843924142)(0)",
  SUM(("t2"."$temp5_cse" + "t2"."$temp15_cse")) AS "TEMP(Calculation_7011130163024354)(3435665530)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 33) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_76631579325247488)(2496898547)(0)",
  SUM((CASE WHEN "t2"."$temp18_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_76631579325247488)(4178641898)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 35) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7691226160510074)(1520309202)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 9) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_822681002737319937)(1468941145)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 9) AND ("t2"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_822681002737319937)(2683554554)(0)",
  SUM("t2"."$temp7_cse") AS "TEMP(Calculation_8231121143256118)(1705212118)(0)",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 13) AND ("t2"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8470109135730450)(1180233182)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 13) AND ("t2"."Y=" > -11)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_8630109135910367)(290862897)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 6) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_867787367994675201)(2302765240)(0)",
  SUM(("t2"."$temp10_cse" + "t2"."$temp21_cse")) AS "TEMP(Calculation_9011130163504501)(2937280196)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9031219170447202)(637682202)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" < 20) AND ("t2"."X=" > -20)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9151127150125473)(3699429832)(0)",
  SUM("t2"."$temp6_cse") AS "TEMP(Calculation_9211121135859122)(2585620191)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 21) AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 22) AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 34) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_925349021691973633)(2382111955)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 37) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_925349021691973633)(3850936560)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 36) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_925349021692444674)(2579130075)(0)",
  SUM("t2"."Is FinalThirdPass") AS "TEMP(Calculation_9291217153222481)(2637409670)(0)",
  SUM("t2"."$temp21_cse") AS "TEMP(Calculation_9331125234820136)(2800380664)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 34) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9410108180937541)(2802060644)(0)",
  SUM("t2"."$temp40_cse") AS "TEMP(Calculation_9451121142820262)(3077615275)(0)",
  SUM("t2"."$temp22_cse") AS "TEMP(Calculation_9591130215701255)(1514096540)(0)",
  SUM("t2"."$temp17_cse") AS "TEMP(Calculation_9591130215701255)(2910172922)(0)",
  SUM((CASE WHEN "t2"."$temp23_cse" THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9750206182605043)(596420)(0)",
  SUM((CASE ("t2"."EventID=" = 27) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("t2"."EventID=" = 17) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy 2))(570114623)(0)",
  SUM((CASE ("t2"."EventID=" = 26) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  SUM((CASE ("t2"."EventID=" = 29) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Cross xA (copy))(622706038)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 36) THEN 1 ELSE 0 END)) AS "TEMP(Defensive Clearances (copy))(1260737670)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 38) THEN 1 ELSE 0 END)) AS "TEMP(Defensive Clearances (copy))(1906309374)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 11) THEN 1 ELSE 0 END)) AS "TEMP(Defensive Clearances (copy))(2432651813)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 37) THEN 1 ELSE 0 END)) AS "TEMP(Defensive Clearances (copy))(3410847055)(0)",
  SUM(("t2"."$temp31_cse" + "t2"."$temp1_cse")) AS "TEMP(Dribbling + Fouls (copy))(431833602)(0)",
  SUM((CASE WHEN (("t2"."EventID=" = 1) AND ("t2"."ExtraEn=" = 'Committed')) THEN 1 ELSE 0 END)) AS "TEMP(Fouls Suffered/90 (copy))(1665431003)(0)",
  SUM((CASE ("t2"."EventID=" = 15) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(LongPass xA (copy))(1177596751)(0)",
  AVG((CASE WHEN "t2"."$temp42_cse" THEN ABS("t2"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM((CASE ("t2"."EventID=" = 22) WHEN TRUE THEN "t2"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  SUM(("t2"."$temp15_cse" - "t2"."$temp21_cse")) AS "TEMP(Open Play Key Pass % (copy))(2442640322)(0)",
  SUM("t2"."$temp6_cse") AS "TEMP(TC_)(1440145446)(0)",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" <> 15)) THEN 1 ELSE 0 END)) AS "TEMP(Total Attempted Passes (copy 2))(1525006541)(0)",
  SUM("t2"."$temp24_cse") AS "TEMP(Total Goal Contribution (copy))(2114493058)(0)",
  SUM("t2"."$temp27_cse") AS "TEMP(Total Goal Contribution (copy))(363368814)(0)",
  MAX("t2"."$temp25_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t2"."$temp25_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("t2"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t2"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN ("t2"."EventID=" = 9) THEN 1 ELSE 0 END)) AS "sum:1-1 Saved (copy):ok",
  SUM("t2"."1.32") AS "sum:1.32:ok",
  SUM("t2"."2ndangle") AS "sum:2ndangle:ok",
  SUM("t2"."AdjDist") AS "sum:AdjDist:ok",
  SUM("t2"."Adjacent") AS "sum:Adjacent:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 16) AND ("t2"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Aerial Ball Involved (copy):ok",
  SUM("t2"."$temp7_cse") AS "sum:Attempted Corners (copy 5):ok",
  SUM("t2"."$temp11_cse") AS "sum:Attempted Corners (copy):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "sum:BallsReceivedInBox (copy):ok",
  SUM("t2"."BegXPass") AS "sum:BegXPass:ok",
  SUM("t2"."BegYPass") AS "sum:BegYPass:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 25) AND ("t2"."Y=" > -25) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25) AND ("t2"."Is KP" = 1)) THEN 1 ELSE 0 END)) AS "sum:Box Pass (copy):ok",
  SUM((CASE WHEN ("t2"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "sum:Calculation_0791125235432165:ok",
  SUM("t2"."$temp26_cse") AS "sum:Calculation_1040824120518455302:ok",
  SUM(("t2"."$temp26_cse" + "t2"."$temp27_cse")) AS "sum:Calculation_1040824120518623239:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 4) AND ("t2"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END)) AS "sum:Calculation_1040824120535175178:ok",
  SUM("t2"."$temp27_cse") AS "sum:Calculation_1311225135740432:ok",
  SUM(("t2"."$temp10_cse" + "t2"."$temp21_cse")) AS "sum:Calculation_1911130163438068:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_1951217154349885:ok",
  SUM("t2"."$temp30_cse") AS "sum:Calculation_201676849087270912:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."$temp30_cse" < 25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_201676849087516673:ok",
  SUM((CASE WHEN "t2"."$temp3_cse" THEN 1 ELSE 0 END)) AS "sum:Calculation_2081718584699367425:ok",
  SUM("t2"."$temp28_cse") AS "sum:Calculation_2311225135106381:ok",
  SUM("t2"."$temp31_cse") AS "sum:Calculation_2971127140033970:ok",
  SUM((CASE WHEN ("t2"."Is CP" = 1) THEN ("t2"."EndXpass" - "t2"."X=") ELSE 0 END)) AS "sum:Calculation_2976949761598636034:ok",
  SUM(ABS("t2"."Y=")) AS "sum:Calculation_4291120182805309:ok",
  SUM((CASE WHEN ("t2"."EventID=" = 18) THEN 1 ELSE 0 END)) AS "sum:Calculation_4879579854335737856:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 25) AND ("t2"."Y=" > -25) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970311516163:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 20) AND ("t2"."EndYPass" < 25) AND ("t2"."EndYPass" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5065282970313658373:ok",
  SUM((CASE WHEN ((("t2"."Is CP" = 1) AND ("t2"."X=" > -70) AND ("t2"."Y=" < 60) AND ("t2"."Y=" > -60)) OR (("t2"."Is BR" = 1) AND ("t2"."BegXPass" > -70) AND ("t2"."BegYPass" < 60) AND ("t2"."BegYPass" > -60))) THEN 1 ELSE 0 END)) AS "sum:Calculation_5295107298945445888:ok",
  SUM((CASE WHEN (("t2"."PlayerID=" = 274) OR ("t2"."BR ID" = 274) OR ("t2"."PasserID" = 274)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5295107298946060289:ok",
  SUM((CASE WHEN ((("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 24) AND ("t2"."EndYPass" > -24)) OR (("t2"."Is BR" = 1) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 24) AND ("t2"."Y=" > -24))) THEN 1 ELSE 0 END)) AS "sum:Calculation_5295107298946326530:ok",
  SUM((CASE WHEN ((("t2"."PlayerID=" = 934) AND ("t2"."PathOrder" = 1)) OR ("t2"."PasserID" = 934)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5295107298946961411:ok",
  SUM((CASE WHEN ((("t2"."PlayerID=" = 5964) AND ("t2"."PathOrder" = 2)) OR ("t2"."BR ID" = 5964)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5295107298947145732:ok",
  SUM((CASE WHEN ("t2"."ResultID=" = 13) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220714024961:ok",
  SUM((CASE WHEN ("t2"."$temp4_cse" AND ("t2"."ResultID=" = 13)) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220715352067:ok",
  SUM(("t2"."$temp31_cse" + "t2"."$temp1_cse")) AS "sum:Calculation_5406923220866215950:ok",
  SUM(ABS("t2"."X=")) AS "sum:Calculation_5551120182751708:ok",
  SUM((CASE WHEN ("t2"."ExtraEn=" = 'Header') THEN 1 ELSE 0 END)) AS "sum:Calculation_6991212213617197:ok",
  SUM("t2"."$temp32_cse") AS "sum:Calculation_7871123234319930:ok",
  SUM((CASE WHEN ("t2"."EventID=" = 35) THEN 1 ELSE 0 END)) AS "sum:Calculation_8131226160422524:ok",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" <> 15)) THEN 1 ELSE 0 END)) AS "sum:Calculation_8191120171822951:ok",
  SUM((CASE WHEN ("t2"."EventID=" = 6) THEN 1 ELSE 0 END)) AS "sum:Calculation_867787367994540032:ok",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Forward') THEN 1 ELSE 0 END)) AS "sum:Calculation_8771217153645203:ok",
  SUM((("t2"."$temp36_cse" + "t2"."$temp37_cse") + "t2"."$temp38_cse")) AS "sum:Calculation_8831225140009827:ok",
  SUM(("t2"."$temp32_cse" + "t2"."$temp39_cse")) AS "sum:Calculation_9230206143251735:ok",
  SUM(SQRT((POWER(CAST(((-"t2"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("t2"."Y=" AS DOUBLE PRECISION OR NULL), 2)))) AS "sum:Calculation_925349021690986496:ok",
  SUM(("t2"."$temp5_cse" + "t2"."$temp15_cse")) AS "sum:Calculation_9391130162834534:ok",
  SUM("t2"."$temp39_cse") AS "sum:Calculation_9591121133741056:ok",
  SUM("t2"."$temp12_cse") AS "sum:Complete Corners (copy 5):ok",
  SUM((CASE WHEN ("t2"."$temp23_cse" AND ("t2"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 7):ok",
  SUM("t2"."$temp40_cse") AS "sum:Complete Corners (copy):ok",
  SUM("t2"."$temp36_cse") AS "sum:Corner Assist (copy 2):ok",
  SUM("t2"."$temp29_cse") AS "sum:Corner Assist (copy):ok",
  SUM("t2"."$temp38_cse") AS "sum:Cross Assist (copy 2):ok",
  SUM("t2"."$temp37_cse") AS "sum:Cross Assist (copy):ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."$temp30_cse" < 15)) THEN 1 ELSE 0 END)) AS "sum:Deep Passes (copy):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 18) AND ("t2"."X=" < -20)) THEN 1 ELSE 0 END)) AS "sum:Dispossessed (copy):ok",
  SUM(SQRT((POWER(CAST(("t2"."X=" - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("t2"."Y=" AS DOUBLE PRECISION OR NULL), 2)))) AS "sum:Distance to Own Goal (copy):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" > 20)) THEN 1 ELSE 0 END)) AS "sum:Dribbles (copy):ok",
  SUM("t2"."EndX") AS "sum:EndX:ok",
  SUM("t2"."EndXpass") AS "sum:EndXpass:ok",
  SUM("t2"."EndY") AS "sum:EndY:ok",
  SUM("t2"."EndYPass") AS "sum:EndYPass:ok",
  SUM("t2"."EventAfterBR") AS "sum:EventAfterBR:ok",
  SUM("t2"."ExtraID=") AS "sum:ExtraID=:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" < 20) AND ("t2"."X=" > -20)) THEN 1 ELSE 0 END)) AS "sum:Final Third Dribble (copy):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" > 41) AND ("t2"."Y=" > -25) AND ("t2"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "sum:Final Third Successful Dribble (copy 2):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."X=" > 19)) THEN 1 ELSE 0 END)) AS "sum:Final Third Successful Dribble (copy):ok",
  SUM("t2"."Firstangle") AS "sum:Firstangle:ok",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Neutral') THEN 1 ELSE 0 END)) AS "sum:Forward Pass (copy 2):ok",
  SUM((CASE WHEN ("t2"."PassAngle" = 'Backwards') THEN 1 ELSE 0 END)) AS "sum:Forward Pass (copy):ok",
  SUM("t2"."GF Away") AS "sum:GF Away:ok",
  SUM("t2"."GF Home") AS "sum:GF Home:ok",
  SUM("t2"."Half=") AS "sum:Half=:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."X=" > 41) AND ("t2"."Y=" > -25) AND ("t2"."Y=" < 25)) THEN 1 ELSE 0 END)) AS "sum:InBox Successful Dribble (copy):ok",
  SUM("t2"."Is 1-1") AS "sum:Is 1-1:ok",
  SUM("t2"."Is Assist") AS "sum:Is Assist:ok",
  SUM("t2"."Is AssistNA") AS "sum:Is AssistNA:ok",
  SUM("t2"."Is BR") AS "sum:Is BR:ok",
  SUM("t2"."Is DFK") AS "sum:Is DFK:ok",
  SUM("t2"."Is FinalThirdPass") AS "sum:Is FinalThirdPass:ok",
  SUM("t2"."Is KP") AS "sum:Is KP:ok",
  SUM("t2"."Is Unique") AS "sum:Is Unique:ok",
  SUM("t2"."IsKPNA") AS "sum:IsKPNA:ok",
  SUM("t2"."KP BR") AS "sum:KP BR:ok",
  SUM("t2"."$temp33_cse") AS "sum:KeyPass Corner (copy 2):ok",
  SUM("t2"."$temp35_cse") AS "sum:KeyPass Corner (copy 3):ok",
  SUM("t2"."$temp41_cse") AS "sum:KeyPass Corner (copy 4):ok",
  SUM("t2"."$temp34_cse") AS "sum:KeyPass Corner (copy):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 19) AND ("t2"."ResultEn=" = 'Success') AND ("t2"."X=" < -20)) THEN '1'::double precision ELSE '0'::double precision END)) AS "sum:Middle Third Dribble (copy):ok",
  SUM("t2"."Minutes") AS "sum:Minutes:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 25) AND "t2"."$temp0_cse") THEN 1 ELSE 0 END)) AS "sum:Normal SOT (copy 3):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 21) AND ("t2"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal SOT (copy):ok",
  SUM((CASE WHEN ("t2"."EventID=" = 25) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy 2):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 21) AND "t2"."$temp0_cse") THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy 4):ok",
  SUM((CASE WHEN ("t2"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "sum:Normal Shots (copy):ok",
  SUM(1) AS "sum:Number of Records:ok",
  SUM("t2"."Opposite") AS "sum:Opposite:ok",
  SUM("t2"."PassDistance") AS "sum:PassDistance:ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."X=" < 20) AND ("t2"."EndXpass" > 19)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 2):ok",
  SUM((CASE WHEN (("t2"."Is CP" = 1) AND ("t2"."EndXpass" > 41) AND ("t2"."EndYPass" < 13) AND ("t2"."EndYPass" > -13)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy 3):ok",
  SUM((CASE WHEN (("t2"."EventID=" = 32) AND ("t2"."X=" > 41) AND ("t2"."Y=" < 25) AND ("t2"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):ok",
  SUM("t2"."PathOrder") AS "sum:PathOrder:ok",
  SUM((CASE WHEN (("t2"."EventID=" = 4) AND ("t2"."ExtraEn=" = 'Committed')) THEN 1 ELSE 0 END)) AS "sum:Penalties Awarded (copy):ok",
  SUM("t2"."Position") AS "sum:Position:ok",
  SUM("t2"."PossType") AS "sum:PossType:ok",
  SUM("t2"."ReceiveEvent") AS "sum:ReceiveEvent:ok",
  SUM("t2"."ResultID=") AS "sum:ResultID=:ok",
  SUM((CASE WHEN ("t2"."$temp4_cse" AND ("t2"."X=" > 41) AND ("t2"."Y=" < 13) AND ("t2"."Y=" > -13)) THEN 1 ELSE 0 END)) AS "sum:Shots Inside Box (copy):ok",
  SUM((CASE WHEN ("t2"."EventID=" = 19) THEN 1 ELSE 0 END)) AS "sum:Successful Dribbles (copy):ok",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" <> 15) AND ("t2"."ResultID=" = 10)) THEN 1 ELSE 0 END)) AS "sum:Total Attempted Passes (copy):ok",
  SUM((CASE WHEN (("t2"."CategoryID=" = 4) AND ("t2"."EventID=" = 32) AND ("t2"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) AS "sum:Total Key Passes  (copy):ok",
  SUM("t2"."X=") AS "sum:X=:ok",
  SUM("t2"."Y=") AS "sum:Y=:ok",
  SUM("t2"."YardsR") AS "sum:YardsR:ok",
  SUM("t2"."realminute") AS "sum:realminute:ok",
  SUM("t2"."relative") AS "sum:relative:ok",
  SUM("t2"."xG") AS "sum:xG:ok",
  AVG((CASE WHEN "t2"."$temp42_cse" THEN "t2"."X=" ELSE null::int END)) AS "usr:Calculation_2284169459392434182:ok",
  COUNT(DISTINCT "t2"."Date") AS "usr:Calculation_2976949761040850945:ok",
  SUM((CASE ("t2"."EventID=" = 21) WHEN TRUE THEN "t2"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Calculation_6031211200312248:ok",
  SUM((CASE ("t2"."EventID=" = 27) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Calculation_9851124000635091:ok",
  SUM((CASE ("t2"."EventID=" = 17) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Corners xA (copy 2):ok",
  SUM((CASE ("t2"."EventID=" = 26) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Corners xA (copy):ok",
  SUM((CASE ("t2"."EventID=" = 29) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Cross xA (copy):ok",
  SUM((CASE ("t2"."EventID=" = 15) WHEN TRUE THEN "t2"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:LongPass xA (copy):ok",
  AVG((CASE WHEN "t2"."$temp42_cse" THEN ABS("t2"."Y=") ELSE null::int END)) AS "usr:Median X for Position (copy):ok",
  SUM((CASE ("t2"."EventID=" = 22) WHEN TRUE THEN "t2"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "usr:Normal Shots xG (copy):ok"
FROM (
  SELECT "t1"."$temp3_cse" AS "$temp3_cse",
    "t1"."$temp39_cse" AS "$temp39_cse",
    "t1"."$temp26_cse" AS "$temp26_cse",
    "t1"."$temp15_cse" AS "$temp15_cse",
    "t1"."$temp13_cse" AS "$temp13_cse",
    "t1"."$temp10_cse" AS "$temp10_cse",
    "t1"."xG" AS "xG",
    "t1"."relative" AS "relative",
    "t1"."realminute" AS "realminute",
    "t1"."YardsR" AS "YardsR",
    "t1"."Y=" AS "Y=",
    "t1"."$temp23_cse" AS "$temp23_cse",
    "t1"."$temp8_cse" AS "$temp8_cse",
    "t1"."$temp36_cse" AS "$temp36_cse",
    "t1"."X=" AS "X=",
    "t1"."$temp16_cse" AS "$temp16_cse",
    "t1"."$temp18_cse" AS "$temp18_cse",
    "t1"."$temp30_cse" AS "$temp30_cse",
    "t1"."PossType" AS "PossType",
    "t1"."$temp21_cse" AS "$temp21_cse",
    "t1"."Position" AS "Position",
    "t1"."PlayerID=" AS "PlayerID=",
    "t1"."ResultID=" AS "ResultID=",
    "t1"."PasserID" AS "PasserID",
    "t1"."PassAngle" AS "PassAngle",
    "t1"."$temp27_cse" AS "$temp27_cse",
    "t1"."Opposite" AS "Opposite",
    "t1"."$temp24_cse" AS "$temp24_cse",
    "t1"."$temp7_cse" AS "$temp7_cse",
    "t1"."Is Unique" AS "Is Unique",
    "t1"."Is KP" AS "Is KP",
    "t1"."Is DFK" AS "Is DFK",
    "t1"."ExtraEn=" AS "ExtraEn=",
    "t1"."Is BR" AS "Is BR",
    "t1"."Is 1-1" AS "Is 1-1",
    "t1"."Is FinalThirdPass" AS "Is FinalThirdPass",
    "t1"."$temp40_cse" AS "$temp40_cse",
    "t1"."Half=" AS "Half=",
    "t1"."$temp20_cse" AS "$temp20_cse",
    "t1"."$temp32_cse" AS "$temp32_cse",
    "t1"."xA" AS "xA",
    "t1"."GF Away" AS "GF Away",
    "t1"."2ndangle" AS "2ndangle",
    "t1"."ExtraID=" AS "ExtraID=",
    "t1"."$temp35_cse" AS "$temp35_cse",
    "t1"."Minutes" AS "Minutes",
    "t1"."$temp25_cse" AS "$temp25_cse",
    "t1"."EventEn=" AS "EventEn=",
    "t1"."EndY" AS "EndY",
    "t1"."ResultEn=" AS "ResultEn=",
    "t1"."Firstangle" AS "Firstangle",
    "t1"."EndX" AS "EndX",
    "t1"."EndYPass" AS "EndYPass",
    "t1"."$temp19_cse" AS "$temp19_cse",
    "t1"."Jersey" AS "Jersey",
    "t1"."GF Home" AS "GF Home",
    "t1"."$temp28_cse" AS "$temp28_cse",
    "t1"."EventAfterBR" AS "EventAfterBR",
    "t1"."PathOrder" AS "PathOrder",
    "t1"."KP BR" AS "KP BR",
    "t1"."EndXpass" AS "EndXpass",
    "t1"."BegXPass" AS "BegXPass",
    "t1"."$temp29_cse" AS "$temp29_cse",
    "t1"."Date" AS "Date",
    "t1"."ReceiveEvent" AS "ReceiveEvent",
    "t1"."$temp1_cse" AS "$temp1_cse",
    "t1"."BR ID" AS "BR ID",
    "t1"."$temp5_cse" AS "$temp5_cse",
    "t1"."Is Assist" AS "Is Assist",
    "t1"."Adjacent" AS "Adjacent",
    "t1"."1.32" AS "1.32",
    "t1"."AdjDist" AS "AdjDist",
    "t1"."EventID=" AS "EventID=",
    "t1"."$temp0_cse" AS "$temp0_cse",
    "t1"."Is CP" AS "Is CP",
    "t1"."BegYPass" AS "BegYPass",
    "t1"."Is AssistNA" AS "Is AssistNA",
    "t1"."CategoryID=" AS "CategoryID=",
    "t1"."IsKPNA" AS "IsKPNA",
    "t1"."$temp11_cse" AS "$temp11_cse",
    "t1"."$temp12_cse" AS "$temp12_cse",
    "t1"."$temp17_cse" AS "$temp17_cse",
    "t1"."$temp22_cse" AS "$temp22_cse",
    "t1"."$temp31_cse" AS "$temp31_cse",
    "t1"."PassDistance" AS "PassDistance",
    "t1"."$temp33_cse" AS "$temp33_cse",
    "t1"."$temp34_cse" AS "$temp34_cse",
    "t1"."$temp37_cse" AS "$temp37_cse",
    "t1"."$temp38_cse" AS "$temp38_cse",
    "t1"."$temp41_cse" AS "$temp41_cse",
    "t1"."$temp42_cse" AS "$temp42_cse",
    "t1"."$temp4_cse" AS "$temp4_cse",
    "t1"."$temp6_cse" AS "$temp6_cse",
    "t1"."$temp9_cse" AS "$temp9_cse",
    (CASE WHEN "t1"."$temp3_cse" THEN TRUE ELSE FALSE END) AS "$temp2_cse"
  FROM (
    SELECT "t0"."$temp9_cse" AS "$temp9_cse",
      "t0"."$temp6_cse" AS "$temp6_cse",
      "t0"."$temp4_cse" AS "$temp4_cse",
      "t0"."$temp42_cse" AS "$temp42_cse",
      "t0"."$temp41_cse" AS "$temp41_cse",
      "t0"."$temp38_cse" AS "$temp38_cse",
      "t0"."$temp37_cse" AS "$temp37_cse",
      "t0"."$temp34_cse" AS "$temp34_cse",
      "t0"."PassDistance" AS "PassDistance",
      "t0"."$temp33_cse" AS "$temp33_cse",
      "t0"."$temp31_cse" AS "$temp31_cse",
      "t0"."$temp22_cse" AS "$temp22_cse",
      "t0"."$temp17_cse" AS "$temp17_cse",
      "t0"."$temp12_cse" AS "$temp12_cse",
      "t0"."$temp11_cse" AS "$temp11_cse",
      "t0"."Is AssistNA" AS "Is AssistNA",
      "t0"."CategoryID=" AS "CategoryID=",
      "t0"."IsKPNA" AS "IsKPNA",
      "t0"."BegYPass" AS "BegYPass",
      "t0"."Is CP" AS "Is CP",
      "t0"."$temp0_cse" AS "$temp0_cse",
      "t0"."EventID=" AS "EventID=",
      "t0"."1.32" AS "1.32",
      "t0"."AdjDist" AS "AdjDist",
      "t0"."Adjacent" AS "Adjacent",
      "t0"."Is Assist" AS "Is Assist",
      "t0"."BR ID" AS "BR ID",
      "t0"."$temp1_cse" AS "$temp1_cse",
      "t0"."ReceiveEvent" AS "ReceiveEvent",
      "t0"."Date" AS "Date",
      "t0"."$temp29_cse" AS "$temp29_cse",
      "t0"."BegXPass" AS "BegXPass",
      "t0"."EndXpass" AS "EndXpass",
      "t0"."KP BR" AS "KP BR",
      "t0"."PathOrder" AS "PathOrder",
      "t0"."EventAfterBR" AS "EventAfterBR",
      "t0"."$temp28_cse" AS "$temp28_cse",
      "t0"."GF Home" AS "GF Home",
      "t0"."Jersey" AS "Jersey",
      "t0"."$temp19_cse" AS "$temp19_cse",
      "t0"."EndYPass" AS "EndYPass",
      "t0"."EndX" AS "EndX",
      "t0"."Firstangle" AS "Firstangle",
      "t0"."ResultEn=" AS "ResultEn=",
      "t0"."EndY" AS "EndY",
      "t0"."EventEn=" AS "EventEn=",
      "t0"."$temp25_cse" AS "$temp25_cse",
      "t0"."Minutes" AS "Minutes",
      "t0"."$temp35_cse" AS "$temp35_cse",
      "t0"."ExtraID=" AS "ExtraID=",
      "t0"."2ndangle" AS "2ndangle",
      "t0"."xA" AS "xA",
      "t0"."GF Away" AS "GF Away",
      "t0"."$temp20_cse" AS "$temp20_cse",
      "t0"."$temp40_cse" AS "$temp40_cse",
      "t0"."Half=" AS "Half=",
      "t0"."Is FinalThirdPass" AS "Is FinalThirdPass",
      "t0"."Is 1-1" AS "Is 1-1",
      "t0"."Is BR" AS "Is BR",
      "t0"."ExtraEn=" AS "ExtraEn=",
      "t0"."Is DFK" AS "Is DFK",
      "t0"."Is KP" AS "Is KP",
      "t0"."$temp7_cse" AS "$temp7_cse",
      "t0"."Is Unique" AS "Is Unique",
      "t0"."$temp24_cse" AS "$temp24_cse",
      "t0"."Opposite" AS "Opposite",
      "t0"."PassAngle" AS "PassAngle",
      "t0"."ResultID=" AS "ResultID=",
      "t0"."PasserID" AS "PasserID",
      "t0"."PlayerID=" AS "PlayerID=",
      "t0"."Position" AS "Position",
      "t0"."PossType" AS "PossType",
      "t0"."$temp30_cse" AS "$temp30_cse",
      "t0"."$temp18_cse" AS "$temp18_cse",
      "t0"."$temp16_cse" AS "$temp16_cse",
      "t0"."X=" AS "X=",
      "t0"."$temp8_cse" AS "$temp8_cse",
      "t0"."$temp36_cse" AS "$temp36_cse",
      "t0"."$temp23_cse" AS "$temp23_cse",
      "t0"."Y=" AS "Y=",
      "t0"."YardsR" AS "YardsR",
      "t0"."realminute" AS "realminute",
      "t0"."relative" AS "relative",
      "t0"."xG" AS "xG",
      ("t0"."$temp11_cse" + "t0"."$temp12_cse") AS "$temp10_cse",
      (CASE WHEN ("t0"."$temp14_cse" AND ("t0"."ExtraID=" = 4)) THEN 'Right' WHEN ("t0"."$temp14_cse" AND ("t0"."ExtraID=" = 5)) THEN 'Left' WHEN ("t0"."$temp14_cse" AND ("t0"."ExtraID=" = 6)) THEN 'Head' ELSE null::text END) AS "$temp13_cse",
      (("t0"."$temp9_cse" + "t0"."$temp16_cse") + "t0"."$temp17_cse") AS "$temp15_cse",
      (("t0"."$temp8_cse" + "t0"."$temp20_cse") + "t0"."$temp22_cse") AS "$temp21_cse",
      ("t0"."$temp24_cse" + "t0"."$temp19_cse") AS "$temp26_cse",
      ("t0"."$temp28_cse" + "t0"."$temp29_cse") AS "$temp27_cse",
      (("t0"."$temp33_cse" + "t0"."$temp34_cse") + "t0"."$temp35_cse") AS "$temp32_cse",
      ("t0"."$temp40_cse" + "t0"."$temp41_cse") AS "$temp39_cse",
      ("t0"."$temp4_cse" AND ("t0"."X=" > 41) AND ("t0"."Y=" < 25) AND ("t0"."Y=" > -25)) AS "$temp3_cse",
      ("t0"."$temp6_cse" + "t0"."$temp7_cse") AS "$temp5_cse"
    FROM (
      SELECT "Extract"."xG" AS "xG",
        "Extract"."relative" AS "relative",
        "Extract"."realminute" AS "realminute",
        "Extract"."YardsR" AS "YardsR",
        "Extract"."Y=" AS "Y=",
        "Extract"."X=" AS "X=",
        "Extract"."ResultID=" AS "ResultID=",
        "Extract"."PossType" AS "PossType",
        "Extract"."Position" AS "Position",
        "Extract"."PlayerID=" AS "PlayerID=",
        "Extract"."xA" AS "xA",
        "Extract"."PathOrder" AS "PathOrder",
        "Extract"."PasserID" AS "PasserID",
        "Extract"."PassAngle" AS "PassAngle",
        "Extract"."Opposite" AS "Opposite",
        "Extract"."Is Unique" AS "Is Unique",
        "Extract"."Is KP" AS "Is KP",
        "Extract"."ExtraEn=" AS "ExtraEn=",
        "Extract"."Is DFK" AS "Is DFK",
        "Extract"."Is BR" AS "Is BR",
        "Extract"."Is 1-1" AS "Is 1-1",
        "Extract"."Is FinalThirdPass" AS "Is FinalThirdPass",
        "Extract"."Half=" AS "Half=",
        "Extract"."GF Home" AS "GF Home",
        "Extract"."2ndangle" AS "2ndangle",
        "Extract"."GF Away" AS "GF Away",
        "Extract"."Is AssistNA" AS "Is AssistNA",
        "Extract"."ExtraID=" AS "ExtraID=",
        "Extract"."Minutes" AS "Minutes",
        "Extract"."CategoryID=" AS "CategoryID=",
        "Extract"."EventEn=" AS "EventEn=",
        "Extract"."ResultEn=" AS "ResultEn=",
        "Extract"."EndY" AS "EndY",
        "Extract"."Firstangle" AS "Firstangle",
        "Extract"."EndX" AS "EndX",
        "Extract"."EndYPass" AS "EndYPass",
        "Extract"."Jersey" AS "Jersey",
        "Extract"."EventAfterBR" AS "EventAfterBR",
        "Extract"."KP BR" AS "KP BR",
        "Extract"."BegXPass" AS "BegXPass",
        "Extract"."EndXpass" AS "EndXpass",
        "Extract"."PassDistance" AS "PassDistance",
        "Extract"."ReceiveEvent" AS "ReceiveEvent",
        "Extract"."Date" AS "Date",
        "Extract"."1.32" AS "1.32",
        "Extract"."BR ID" AS "BR ID",
        "Extract"."AdjDist" AS "AdjDist",
        "Extract"."Adjacent" AS "Adjacent",
        "Extract"."Is Assist" AS "Is Assist",
        "Extract"."EventID=" AS "EventID=",
        "Extract"."Is CP" AS "Is CP",
        "Extract"."BegYPass" AS "BegYPass",
        "Extract"."IsKPNA" AS "IsKPNA",
        ("Extract"."ResultEn=" IN ('CornerKick', 'Goal', 'Saved')) AS "$temp0_cse",
        (CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp11_cse",
        (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp12_cse",
        ("Extract"."EventID=" IN (21, 22, 23, 25)) AS "$temp14_cse",
        (CASE WHEN ("Extract"."EventID=" = 29) THEN 1 ELSE 0 END) AS "$temp16_cse",
        (CASE WHEN ("Extract"."EventID=" = 15) THEN 1 ELSE 0 END) AS "$temp17_cse",
        (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) AS "$temp18_cse",
        (CASE WHEN (("Extract"."EventID=" = 23) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END) AS "$temp19_cse",
        (CASE WHEN (("Extract"."EventID=" = 1) AND ("Extract"."ExtraEn=" = 'Awarded')) THEN 1 ELSE 0 END) AS "$temp1_cse",
        (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp20_cse",
        (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp22_cse",
        ("Extract"."EventID=" IN (7, 9, 10)) AS "$temp23_cse",
        (CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END) AS "$temp24_cse",
        (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp25_cse",
        (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" IN (27, 31))) THEN 1 ELSE 0 END) AS "$temp28_cse",
        (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 26)) THEN 1 ELSE 0 END) AS "$temp29_cse",
        SQRT((POWER(CAST(("Extract"."EndXpass" - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."EndYPass" AS DOUBLE PRECISION OR NULL), 2))) AS "$temp30_cse",
        (CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END) AS "$temp31_cse",
        (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp33_cse",
        (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp34_cse",
        (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp35_cse",
        (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END) AS "$temp36_cse",
        (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 29)) THEN 1 ELSE 0 END) AS "$temp37_cse",
        (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 15)) THEN 1 ELSE 0 END) AS "$temp38_cse",
        (CASE WHEN (("Extract"."EventID=" = 27) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp40_cse",
        (CASE WHEN (("Extract"."EventID=" = 26) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) AS "$temp41_cse",
        ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp42_cse",
        ("Extract"."EventID=" IN (21, 22)) AS "$temp4_cse",
        (CASE WHEN ("Extract"."EventID=" = 27) THEN 1 ELSE 0 END) AS "$temp6_cse",
        (CASE WHEN ("Extract"."EventID=" = 26) THEN 1 ELSE 0 END) AS "$temp7_cse",
        (CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END) AS "$temp8_cse",
        (CASE WHEN ("Extract"."EventID=" = 17) THEN 1 ELSE 0 END) AS "$temp9_cse"
      FROM "Extract"."Extract" "Extract"
    ) "t0"
  ) "t1"
) "t2"
GROUP BY 1
HAVING (((CAST(SUM("t2"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '2.9999999999999698'::double precision) AND ((CAST(SUM("t2"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "I4RbBhHKEDMIKdk5YFx6//", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal Goal (copy 2):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "N1Ip/nbFkNeK/f2XBuVu7L" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "sum:Normal Goal (copy 2):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '2.9999999999999698'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Ll63sJFpE4UJnFh/lcstlj" } } */;
SELECT MIN(SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2)))) AS "lower:none:Calculation_925349021690986496:qk",
  MAX(SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2)))) AS "upper:none:Calculation_925349021690986496:qk"
FROM "Extract"."Extract" "Extract"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "D8Tj6kndEa+J/orvuTcycY" } } */;
SELECT MIN("t0"."sum:Calculation_2976949761672400900:qk") AS "lower:sum:Calculation_2976949761672400900:qk",
  MAX("t0"."sum:Calculation_2976949761672400900:qk") AS "upper:sum:Calculation_2976949761672400900:qk",
  MIN("t0"."sum:Calculation_6030106000658346:qk") AS "lower:sum:Calculation_6030106000658346:qk",
  MAX("t0"."sum:Calculation_6030106000658346:qk") AS "upper:sum:Calculation_6030106000658346:qk",
  MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT SUM((CASE WHEN ("Extract"."EventID=" = 16) THEN 1 ELSE 0 END)) AS "sum:Calculation_2976949761672400900:qk",
    SUM((CASE WHEN ("Extract"."EventID=" = 33) THEN 1 ELSE 0 END)) AS "sum:Calculation_6030106000658346:qk",
    (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE ((SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) >= '0'::double precision) AND (SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) <= '126.81088281373961'::double precision))
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JEcWtvnHkndJjfixZCAoBa" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM "Extract"."Extract" "Extract"
WHERE ((SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) >= '0'::double precision) AND (SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) <= '126.81088281373961'::double precision))
GROUP BY 1
HAVING (((SUM((CASE WHEN ("Extract"."EventID=" = 16) THEN 1 ELSE 0 END)) <= 214) AND (SUM((CASE WHEN ("Extract"."EventID=" = 33) THEN 1 ELSE 0 END)) <= 99)) AND (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.011111111111110988'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision)))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G92KFe3dk6MIVR2jlHzDHq", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  (CASE WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) AS "usr:Calculation_2284169459433848840:nk"
FROM "Extract"."Extract" "Extract"
WHERE ((SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) >= '0'::double precision) AND (SQRT((POWER(CAST(((-"Extract"."X=") - 60) AS DOUBLE PRECISION OR NULL), 2) + POWER(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL), 2))) <= '126.81088281373961'::double precision))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "DbCMSHtl0sRKUqoEX6JY7p", "lqctx-batch-query-id": "3" } } */;
SELECT CAST(FLOOR(CAST("Extract"."X=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "X= (bin)",
  CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Y= (bin)",
  COUNT("Extract"."X=") AS "cnt:X=:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."EventID=" = 32) AND ((CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) >= -8) AND (CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) <= 8)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GUx4r/75E0FKKrSjq0Tz9p", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(FLOOR(CAST("Extract"."X=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "X= (bin)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "NhHMEnfI0gcLtrsYEP4tqQ" } } */;
SELECT CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) AS "Y= (bin)"
FROM "Extract"."Extract" "Extract"
WHERE ((CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) >= -8) AND (CAST(FLOOR(CAST("Extract"."Y=" AS DOUBLE PRECISION OR NULL) / CAST(3 AS DOUBLE PRECISION OR NULL)) AS BIGINT OR NULL) <= 8))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "FkVvTFUUkDkIrP3sLPaif7" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "COh9AN72EE9LXGrSsF544b" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN ("Extract"."EventID=" IN (7, 9, 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0910206183133655)(1509674077)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" IN (7, 9, 10)) AND ("Extract"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_0910206183133655)(3142875895)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 9) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_822681002737319937)(1468941145)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 9) AND ("Extract"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_822681002737319937)(2683554554)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 6) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_867787367994675201)(2302765240)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" IN (7, 9, 10)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9750206182605043)(596420)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 9) THEN 1 ELSE 0 END)) AS "sum:1-1 Saved (copy):ok",
  SUM((CASE WHEN ("Extract"."EventID=" = 6) THEN 1 ELSE 0 END)) AS "sum:Calculation_867787367994540032:ok",
  SUM((CASE WHEN (("Extract"."EventID=" IN (7, 9, 10)) AND ("Extract"."ResultEn=" = 'Save')) THEN 1 ELSE 0 END)) AS "sum:Complete Corners (copy 7):ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '14.999999999999851'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0aU5myJKEn4Lq9S/LeQI94", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."EventEn=" AS "EventEn="
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "EventEn=" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0sIkMz0jUwVKtcQk1oP8H5", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."EventID=" AS "EventID="
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."EventEn=" IN ('BadBehavior', 'Corner Crossed', 'Corner Passed', 'Foul', 'FreeKick', 'Offside', 'OneONOne', 'Shoot', 'Substitution')) OR ("Extract"."EventEn=" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Jp5jGu4IErpI9pROpUiSVO", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MIN("Extract"."IsGK=") AS "TEMP(attr:IsGK=:qk)(3356792649)(0)",
  MAX("Extract"."IsGK=") AS "TEMP(attr:IsGK=:qk)(677279218)(0)",
  MIN("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(1770644245)(0)",
  MAX("Extract"."PlayerName") AS "TEMP(attr:PlayerName:nk)(2018006382)(0)",
  AVG(ABS("Extract"."Y=")) AS "med:Calculation_4291120182805309:ok",
  AVG("Extract"."X=") AS "med:X=:ok",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "usr:Calculation_2284169459392434182:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."EventEn=" IN ('BadBehavior', 'Corner Crossed', 'Corner Passed', 'Foul', 'FreeKick', 'Offside', 'OneONOne', 'Shoot', 'Substitution')) OR ("Extract"."EventEn=" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IBxWr6gRUuwIVvAqvTal4D", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."EventEn=" AS "EventEn=",
  "Extract"."EventID=" AS "EventID=",
  "Extract"."PlayerID=" AS "PlayerID="
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "Dsv8+OeZkrXLJgano301jo" } } */;
SELECT MIN("t0"."usr:Calculation_5406923220723064838:qk") AS "lower:usr:Calculation_5406923220723064838:qk",
  MAX("t0"."usr:Calculation_5406923220723064838:qk") AS "upper:usr:Calculation_5406923220723064838:qk"
FROM (
  SELECT (((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 25) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 23) THEN 1 ELSE 0 END))) AS "usr:Calculation_5406923220723064838:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "FmDBw9C00aOKYXTmRf5JR1" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  SUM("t1"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN "t1"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((CASE WHEN ("t1"."$temp2_cse" = 'Right') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220729716745)(301770501)(0)",
  SUM((CASE WHEN ("t1"."$temp2_cse" = 'Left') THEN 1 ELSE 0 END)) AS "TEMP(Calculation_5406923220729716745)(3777348608)(0)",
  AVG((CASE WHEN "t1"."$temp1_cse" THEN ABS("t1"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  MAX("t1"."$temp4_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN("t1"."$temp4_cse") AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("t1"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM (
  SELECT "t0"."EventID=" AS "EventID=",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."Jersey" AS "Jersey",
    "t0"."Minutes" AS "Minutes",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."X=" AS "X=",
    "t0"."Y=" AS "Y=",
    (CASE WHEN ("t0"."$temp3_cse" AND ("t0"."ExtraID=" = 4)) THEN 'Right' WHEN ("t0"."$temp3_cse" AND ("t0"."ExtraID=" = 5)) THEN 'Left' WHEN ("t0"."$temp3_cse" AND ("t0"."ExtraID=" = 6)) THEN 'Head' ELSE null::text END) AS "$temp2_cse"
  FROM (
    SELECT "Extract"."Y=" AS "Y=",
      "Extract"."X=" AS "X=",
      "Extract"."PlayerID=" AS "PlayerID=",
      "Extract"."ExtraID=" AS "ExtraID=",
      "Extract"."Minutes" AS "Minutes",
      "Extract"."Jersey" AS "Jersey",
      "Extract"."EventID=" AS "EventID=",
      ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) AS "$temp1_cse",
      ("Extract"."EventID=" IN (21, 22, 23, 25)) AS "$temp3_cse",
      (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "$temp4_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
GROUP BY 1
HAVING (((((SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("t1"."EventID=" = 25) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("t1"."EventID=" = 23) THEN 1 ELSE 0 END))) >= 20) AND ((((SUM((CASE WHEN ("t1"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("t1"."EventID=" = 22) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("t1"."EventID=" = 25) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("t1"."EventID=" = 23) THEN 1 ELSE 0 END))) <= 90))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MbmTShlAUzLJ9Kp1M0E4Fu", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712",
  "Extract"."PlayerID=" AS "PlayerID=",
  SUM((CASE WHEN (((CASE WHEN ("Extract"."EventID=" = 34) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("Extract"."EventID=" = 37) THEN TRUE ELSE FALSE END)) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(1227218811)(0)",
  SUM((CASE WHEN ((CASE WHEN ("Extract"."EventID=" = 35) THEN TRUE ELSE FALSE END) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(3907758580)(0)",
  SUM((CASE WHEN ((CASE WHEN ("Extract"."EventID=" = 11) THEN TRUE ELSE FALSE END) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(703760767)(0)",
  SUM((CASE WHEN (((CASE WHEN (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("Extract"."EventID=" = 36) THEN TRUE ELSE FALSE END)) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_598345456908619779)(905003555)(0)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HF/HYaDPEuyKZxH5QdTyGC", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712",
  (((SUM((CASE WHEN ((CASE WHEN ("Extract"."EventID=" = 35) THEN TRUE ELSE FALSE END) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END)) + SUM((CASE WHEN (((CASE WHEN (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("Extract"."EventID=" = 36) THEN TRUE ELSE FALSE END)) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END))) + SUM((CASE WHEN (((CASE WHEN ("Extract"."EventID=" = 34) THEN TRUE ELSE FALSE END) OR (CASE WHEN ("Extract"."EventID=" = 37) THEN TRUE ELSE FALSE END)) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ((CASE WHEN ("Extract"."EventID=" = 11) THEN TRUE ELSE FALSE END) AND ("Extract"."X=" > 19)) THEN 1 ELSE 0 END))) AS "usr:Calculation_598345456908619779:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "HBcYeDtQk2NLZsR+x9O3Rx" } } */;
SELECT (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END) AS "Calculation_1951217154349885"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "DqoOIfuwUjXKsbp7HxM031", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Is FinalThirdPass" AS "Is FinalThirdPass"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MT7eaAKlkbJJPTDqu2I4Mk", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."Is KP" AS "Is KP"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MULZYI+rkqvJbHf7gtwF6U", "lqctx-batch-query-id": "4" } } */;
SELECT (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 13) AND ("Extract"."EndYPass" > -13)) THEN 1 ELSE 0 END) AS "PassesIntoBox (copy 3)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "G+KUFSnAU/pJ0k9gL7uUpa", "lqctx-batch-query-id": "6" } } */;
SELECT (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" < 20) AND ("Extract"."EndXpass" > 19)) THEN 1 ELSE 0 END) AS "PassesIntoBox (copy 2)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Ov9yqdGykQWKPIvWS9UWpB", "lqctx-batch-query-id": "5" } } */;
SELECT "Extract"."Is Assist" AS "Is Assist"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Hmb+a/rIER3J4807SuO2mb", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."BR ID" AS "BR ID"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."From-To" IN ('0')) OR ("Extract"."From-To" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "D48UxUfqkAPI5smtrsCj+o", "lqctx-batch-query-id": "8" } } */;
SELECT "Extract"."EventEn=" AS "EventEn="
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."From-To" IN ('0')) OR ("Extract"."From-To" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "I8eLI88XUmPJFWiKp8+j3P", "lqctx-batch-query-id": "9" } } */;
SELECT "Extract"."From-To" AS "From-To",
  "Extract"."PlayerID=" AS "PlayerID=",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  COUNT("Extract"."X=") AS "cnt:X=:ok"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."From-To" IN ('0')) OR ("Extract"."From-To" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GBhK0ePUUqmJcuKV+zxGth", "lqctx-batch-query-id": "10" } } */;
SELECT "Extract"."From-To" AS "From-To",
  "Extract"."PlayerID=" AS "PlayerID=",
  (CASE WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'Centerback' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) THEN 'Fullback' WHEN (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -40) THEN 'Keeper' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) THEN 'DefensiveMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) THEN 'Centermid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'Striker' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) THEN 'AttackingMid' WHEN ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) THEN 'Winger' ELSE null::text END) AS "usr:Calculation_2284169459433848840:nk"
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LFPB4ABAkCXJtNt3oF+rY+", "lqctx-batch-query-id": "7" } } */;
SELECT "Extract"."BR ID" AS "BR ID",
  (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 25) AND ("Extract"."EndYPass" > -25)) THEN 1 ELSE 0 END) AS "Calculation_1951217154349885",
  (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712",
  "Extract"."EventEn=" AS "EventEn=",
  "Extract"."Is Assist" AS "Is Assist",
  "Extract"."Is FinalThirdPass" AS "Is FinalThirdPass",
  "Extract"."Is KP" AS "Is KP",
  (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."X=" < 20) AND ("Extract"."EndXpass" > 19)) THEN 1 ELSE 0 END) AS "PassesIntoBox (copy 2)",
  (CASE WHEN (("Extract"."Is CP" = 1) AND ("Extract"."EndXpass" > 41) AND ("Extract"."EndYPass" < 13) AND ("Extract"."EndYPass" > -13)) THEN 1 ELSE 0 END) AS "PassesIntoBox (copy 3)"
FROM "Extract"."Extract" "Extract"
WHERE (CASE WHEN (("Extract"."From-To" IN ('0')) OR ("Extract"."From-To" IS NULL)) THEN FALSE ELSE TRUE END)
GROUP BY 1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "NLOos2lekcjJR/rXAoZZsc" } } */;
SELECT MIN("t0"."sum:PassesIntoBox (copy):qk") AS "lower:sum:PassesIntoBox (copy):qk",
  MAX("t0"."sum:PassesIntoBox (copy):qk") AS "upper:sum:PassesIntoBox (copy):qk"
FROM (
  SELECT SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HQzg2EuZ0LJKVw8+21ZZmk" } } */;
SELECT "t1"."PlayerID=" AS "PlayerID=",
  "t1"."TEMP(Calculation_2516878898867253248)(1884367138)(0)" AS "TEMP(Calculation_2516878898867253248)(1884367138)(0)",
  "t1"."TEMP(Calculation_2516878898867253248)(2318621208)(0)" AS "TEMP(Calculation_2516878898867253248)(2318621208)(0)",
  "t1"."TEMP(attr:Jersey:nk)(2152732858)(0)" AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  "t1"."TEMP(attr:Jersey:nk)(585542566)(0)" AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  "t1"."sum:BallsReceivedInBox (copy 2):ok" AS "sum:BallsReceivedInBox (copy 2):ok",
  "t1"."sum:Calculation_2081718584699367425:ok" AS "sum:Calculation_2081718584699367425:ok",
  "t1"."sum:PassesIntoBox (copy):ok" AS "sum:PassesIntoBox (copy):ok",
  "t1"."sum:Shots Inside Box (copy):ok" AS "sum:Shots Inside Box (copy):ok"
FROM (
  SELECT "t0"."TEMP(Calculation_2516878898867253248)(2318621208)(0)" AS "TEMP(Calculation_2516878898867253248)(2318621208)(0)",
    "t0"."$temp4_cse" AS "$temp4_cse",
    "t0"."TEMP(Calculation_2516878898867253248)(1884367138)(0)" AS "TEMP(Calculation_2516878898867253248)(1884367138)(0)",
    "t0"."$temp5_cse" AS "$temp5_cse",
    "t0"."$temp2_cse" AS "$temp2_cse",
    "t0"."$temp7_cse" AS "$temp7_cse",
    "t0"."sum:Calculation_2081718584699367425:ok" AS "sum:Calculation_2081718584699367425:ok",
    "t0"."$temp1_cse" AS "$temp1_cse",
    "t0"."PlayerID=" AS "PlayerID=",
    "t0"."sum:Shots Inside Box (copy):ok" AS "sum:Shots Inside Box (copy):ok",
    "t0"."$temp6_cse" AS "$temp6_cse",
    "t0"."$temp3_cse" AS "$temp3_cse",
    "t0"."sum:BallsReceivedInBox (copy 2):ok" AS "sum:BallsReceivedInBox (copy 2):ok",
    "t0"."TEMP(attr:Jersey:nk)(2152732858)(0)" AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
    "t0"."__measure__0" AS "__measure__0",
    "t0"."TEMP(attr:Jersey:nk)(585542566)(0)" AS "TEMP(attr:Jersey:nk)(585542566)(0)",
    "t0"."sum:PassesIntoBox (copy):ok" AS "sum:PassesIntoBox (copy):ok",
    (CASE WHEN "t0"."$temp1_cse" THEN 'Centerback' WHEN "t0"."$temp2_cse" THEN 'Fullback' WHEN ("t0"."__measure__0" < -40) THEN 'Keeper' WHEN "t0"."$temp3_cse" THEN 'DefensiveMid' WHEN "t0"."$temp4_cse" THEN 'Centermid' WHEN "t0"."$temp5_cse" THEN 'Striker' WHEN "t0"."$temp6_cse" THEN 'AttackingMid' WHEN "t0"."$temp7_cse" THEN 'Winger' ELSE null::text END) AS "$temp0_cse"
  FROM (
    SELECT "Extract"."PlayerID=" AS "PlayerID=",
      MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
      MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
      AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "__measure__0",
      SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 13) AND ("Extract"."Y=" > -11)) THEN 1 ELSE 0 END)) AS "sum:BallsReceivedInBox (copy 2):ok",
      SUM((CASE WHEN (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25)) THEN 1 ELSE 0 END)) AS "sum:Calculation_2081718584699367425:ok",
      SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "sum:PassesIntoBox (copy):ok",
      SUM((CASE WHEN (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 13) AND ("Extract"."Y=" > -13)) THEN 1 ELSE 0 END)) AS "sum:Shots Inside Box (copy):ok",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < -11) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -40) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) AS "$temp1_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 24) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 7)) AS "$temp2_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -12) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 0) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25)) AS "$temp3_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 25) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > -1) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) < 6)) AS "$temp4_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 14) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) AS "$temp5_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) >= 6) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) < 23)) AS "$temp6_cse",
      ((AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) > 22) AND (AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) > 6)) AS "$temp7_cse",
      SUM((CASE WHEN (("Extract"."EventID=" IN (21, 22)) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -25)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2516878898867253248)(1884367138)(0)",
      SUM((CASE WHEN (("Extract"."EventID=" = 32) AND ("Extract"."X=" > 41) AND ("Extract"."Y=" < 25) AND ("Extract"."Y=" > -23)) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_2516878898867253248)(2318621208)(0)"
    FROM "Extract"."Extract" "Extract"
    GROUP BY 1
  ) "t0"
) "t1"
WHERE (("t1"."TEMP(Calculation_2516878898867253248)(2318621208)(0)" >= 20) AND ("t1"."TEMP(Calculation_2516878898867253248)(2318621208)(0)" <= 124) AND (("t1"."$temp0_cse" = 'AttackingMid') OR ("t1"."$temp0_cse" = 'Centerback') OR ("t1"."$temp0_cse" = 'Centermid') OR ("t1"."$temp0_cse" = 'DefensiveMid') OR ("t1"."$temp0_cse" = 'Fullback') OR ("t1"."$temp0_cse" = 'Keeper') OR ("t1"."$temp0_cse" = 'Striker') OR ("t1"."$temp0_cse" = 'Winger') OR (CASE WHEN "t1"."$temp1_cse" THEN FALSE WHEN "t1"."$temp2_cse" THEN FALSE WHEN ("t1"."__measure__0" < -40) THEN FALSE WHEN "t1"."$temp3_cse" THEN FALSE WHEN "t1"."$temp4_cse" THEN FALSE WHEN "t1"."$temp5_cse" THEN FALSE WHEN "t1"."$temp6_cse" THEN FALSE WHEN "t1"."$temp7_cse" THEN FALSE ELSE TRUE END)))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ieo7UEUdk9IJAbtJ23yFyP", "lqctx-batch-query-id": "2" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  GROUP BY "Extract"."PlayerID=",
    DATE_TRUNC('DAY', "Extract"."Date")
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "OnUxBRLz085IX/p4fslR5d" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 23) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) + ((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" IN (27, 31))) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 26)) THEN 1 ELSE 0 END)))) AS "TEMP(Calculation_1040824120518721544)(142790776)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4131225140217278)(631135046)(0)",
  SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  MIN((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Teams Clean (copy):nk)(2100085202)(0)",
  MAX((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Teams Clean (copy):nk)(247543309)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "sum:Calculation_7871123234319930:ok",
  DATE_TRUNC('DAY', "Extract"."Date") AS "tdy:Date:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  18
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0.099999999999999006'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '18.144444444444627'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JzltM7qiUl8InsP69OsZ3B", "lqctx-batch-query-id": "2" } } */;
SELECT MIN("t0"."usr:Calculation_2211120183238996:qk") AS "lower:usr:Calculation_2211120183238996:qk",
  MAX("t0"."usr:Calculation_2211120183238996:qk") AS "upper:usr:Calculation_2211120183238996:qk"
FROM (
  SELECT (CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) AS "usr:Calculation_2211120183238996:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
  GROUP BY "Extract"."PlayerID=",
    DATE_TRUNC('DAY', "Extract"."Date")
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "EzkRvRYDEFrKz6uOB+dJp2" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 25) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 23) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) + ((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" IN (27, 31))) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 26)) THEN 1 ELSE 0 END)))) AS "TEMP(Calculation_1040824120518721544)(142790776)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_1245386050673266690)(3966437615)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  SUM((((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4131225140217278)(631135046)(0)",
  SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(1973260458)(0)",
  SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_7111127133254471)(2670947356)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  SUM((((CASE WHEN (("Extract"."EventID=" = 17) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."EventID=" = 29) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."EventID=" = 15) AND ("Extract"."ResultID=" = 10) AND ("Extract"."IsKPNA" = 1)) THEN 1 ELSE 0 END))) AS "TEMP(TC_)(3621949278)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 19) AND ("Extract"."ResultEn=" = 'Success')) THEN 1 ELSE 0 END)) AS "TEMP(TC_)(3905064915)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MIN((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Teams Clean (copy):nk)(2100085202)(0)",
  MAX((CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Teams Clean (copy):nk)(247543309)(0)",
  DATE_TRUNC('DAY', "Extract"."Date") AS "tdy:Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) >= 'Ahly') AND ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) <= 'Zamalek'))
GROUP BY 1,
  21
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '0'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '18.144444444444627'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "In15SkHI0psJxDib7jBMdq", "lqctx-batch-query-id": "3" } } */;
SELECT "Extract"."Jersey" AS "Jersey"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Smouha')
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "NN7rMypwkjCIrvkOT26Bfk", "lqctx-batch-query-id": "1" } } */;
SELECT (CASE WHEN ("Extract"."ResultEn=" IN ('Bars', 'BlockByDefense', 'GoalKick')) THEN 'Bars' WHEN ("Extract"."ResultEn=" IN ('CornerKick', 'Saved')) THEN 'CornerKick' ELSE "Extract"."ResultEn=" END) AS "ResultEn= (group)"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Smouha') AND ("Extract"."Jersey" IN ('Ahmad Temsah', 'Paulo')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IUNtk0i1UHdLnRo5i/1P8K", "lqctx-batch-query-id": "2" } } */;
SELECT MIN("t0"."usr:Calculation_7111127133254471:qk") AS "lower:usr:Calculation_7111127133254471:qk",
  MAX("t0"."usr:Calculation_7111127133254471:qk") AS "upper:usr:Calculation_7111127133254471:qk"
FROM (
  SELECT (SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) AS "usr:Calculation_7111127133254471:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Smouha') AND ("Extract"."Jersey" IN ('Ahmad Temsah', 'Paulo')))
  GROUP BY "Extract"."EventEn=",
    (CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END),
    "Extract"."X=",
    "Extract"."Y=",
    DATE_TRUNC('DAY', "Extract"."Date")
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PujKljzxkX4K4BBNP37FAv" } } */;
SELECT "Extract"."EventEn=" AS "EventEn=",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  MAX("Extract"."PlayerID=") AS "TEMP(attr:PlayerID=:qk)(272174327)(0)",
  MIN("Extract"."PlayerID=") AS "TEMP(attr:PlayerID=:qk)(3119118765)(0)",
  (CASE WHEN ("Extract"."Vs" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Vs" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Vs" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Vs" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Vs" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Vs" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Vs" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Vs" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Vs" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Vs" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Vs" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Vs" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Vs" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Vs" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Vs" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Vs" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Vs" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Vs" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Teams Clean (copy)",
  "Extract"."X=" AS "X=",
  "Extract"."Y=" AS "Y=",
  SUM("Extract"."xG") AS "sum:xG:ok",
  DATE_TRUNC('DAY', "Extract"."Date") AS "tdy:Date:ok"
FROM "Extract"."Extract" "Extract"
WHERE (((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) = 'Smouha') AND ("Extract"."Jersey" IN ('Ahmad Temsah', 'Paulo')))
GROUP BY 1,
  6,
  7,
  8,
  10
HAVING ((((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) >= 0) AND ((SUM((CASE WHEN ("Extract"."EventID=" = 21) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 22) THEN 1 ELSE 0 END))) <= 2)) AND ((((((((SUM((CASE WHEN ("Extract"."EventID=" = 35) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 37) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 34) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 38) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 36) THEN 1 ELSE 0 END))) + SUM((CASE WHEN (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 11) THEN 1 ELSE 0 END))) >= 1) AND (((((((SUM((CASE WHEN ("Extract"."EventID=" = 35) THEN 1 ELSE 0 END)) + SUM((CASE WHEN ("Extract"."EventID=" = 37) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 34) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 38) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 36) THEN 1 ELSE 0 END))) + SUM((CASE WHEN (("Extract"."EventID=" = 33) AND ("Extract"."ResultID=" = 10)) THEN 1 ELSE 0 END))) + SUM((CASE WHEN ("Extract"."EventID=" = 11) THEN 1 ELSE 0 END))) <= 2)))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MhK99xEYEFjJNX3c8fGI8B", "lqctx-batch-query-id": "4" } } */;
SELECT (CASE WHEN ("Extract"."ResultEn=" IN ('Bars', 'BlockByDefense', 'GoalKick')) THEN 'Bars' WHEN ("Extract"."ResultEn=" IN ('CornerKick', 'Saved')) THEN 'CornerKick' ELSE "Extract"."ResultEn=" END) AS "ResultEn= (group)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "KqNr6njO0L6Lsa6TXTCXfW" } } */;
SELECT (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712",
  "Extract"."Jersey" AS "Jersey",
  (CASE WHEN ("Extract"."ResultEn=" IN ('Bars', 'BlockByDefense', 'GoalKick')) THEN 'Bars' WHEN ("Extract"."ResultEn=" IN ('CornerKick', 'Saved')) THEN 'CornerKick' ELSE "Extract"."ResultEn=" END) AS "ResultEn= (group)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "ImW4NPyj0khKPMiW2mjKcp" } } */;
SELECT "Extract"."Jersey" AS "Jersey"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Jersey" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "FcI4b7iqE1KIJYJ+t4hDdn", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."BR ID" AS "BR ID"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LVyos3xFkJZKLnwucbQ10V", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."BR ID" AS "BR ID",
  "Extract"."PlayerID=" AS "PlayerID=",
  MAX("Extract"."BR Jersey") AS "TEMP(attr:BR Jersey:nk)(348055886)(0)",
  MIN("Extract"."BR Jersey") AS "TEMP(attr:BR Jersey:nk)(460464477)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  COUNT("Extract"."X=") AS "cnt:X=:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."BR ID" >= 0) AND ("Extract"."BR ID" <= 8944) AND ("Extract"."Is CP" >= 1) AND ("Extract"."Is CP" <= 1) AND ("Extract"."PassOutcome" NOT IN ('0')))
GROUP BY 1,
  2
HAVING ((COUNT("Extract"."X=") >= 1) AND (COUNT("Extract"."X=") <= 19))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GUt6voeCEj8JRFbvnf1eO2", "lqctx-batch-query-id": "3" } } */;
SELECT MIN("t0"."cnt:X=:qk") AS "lower:cnt:X=:qk",
  MAX("t0"."cnt:X=:qk") AS "upper:cnt:X=:qk"
FROM (
  SELECT COUNT("Extract"."X=") AS "cnt:X=:qk"
  FROM "Extract"."Extract" "Extract"
  WHERE (("Extract"."Is CP" = 1) AND ("Extract"."PassOutcome" NOT IN ('0')))
  GROUP BY "Extract"."BR ID",
    "Extract"."PlayerID="
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "DvoWVh79UqLKb76U31n3f2" } } */;
SELECT "Extract"."BR ID" AS "BR ID",
  COUNT("Extract"."X=") AS "cnt:X=:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Is CP" = 1) AND ("Extract"."PassOutcome" NOT IN ('0'))) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Extract"."BR ID" AS "BR ID",
    "Extract"."PlayerID=" AS "PlayerID="
  FROM "Extract"."Extract" "Extract"
  WHERE (("Extract"."BR ID" >= 0) AND ("Extract"."BR ID" <= 8944) AND ("Extract"."PlayerID=" = 5) AND ("Extract"."Is CP" >= 1) AND ("Extract"."Is CP" <= 1) AND ("Extract"."PassOutcome" NOT IN ('0')))
  GROUP BY 1,
    2
  HAVING ((COUNT("Extract"."X=") >= 1) AND (COUNT("Extract"."X=") <= 19))
) "t0"
WHERE (("Extract"."BR ID" = "t0"."BR ID") AND ("Extract"."PlayerID=" = "t0"."PlayerID="))
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "D3G31ZB7Uj4LvuwTN0mLkC" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  COUNT("Extract"."X=") AS "cnt:X=:ok",
  COUNT(DISTINCT "Extract"."BR Jersey") AS "ctd:BR Jersey:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."BR ID" >= 0) AND ("Extract"."BR ID" <= 8944) AND ("Extract"."Is CP" = 1))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D9kHdLAd0LCJU+0ric9U1j", "lqctx-batch-query-id": "3" } } */;
SELECT MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)",
  COUNT("Extract"."X=") AS "cnt:X=:ok",
  COUNT(DISTINCT "Extract"."BR Jersey") AS "ctd:BR Jersey:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."BR ID" >= 0) AND ("Extract"."BR ID" <= 8944) AND ("Extract"."Is CP" = 1))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "ExThjF96U24JKao81+n2lF" } } */;
SELECT "Extract"."PlayerID=" AS "PlayerID=",
  SUM("Extract"."xA") AS "TEMP(Calculation_0051124001723292)(2114824828)(0)",
  SUM("Extract"."Minutes") AS "TEMP(Calculation_2211120183238996)(2975152944)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN "Extract"."X=" ELSE null::int END)) AS "TEMP(Calculation_2284169459392434182)(2847512811)(0)",
  SUM((((CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 17)) THEN 1 ELSE 0 END) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 29)) THEN 1 ELSE 0 END)) + (CASE WHEN (("Extract"."Is AssistNA" = 1) AND ("Extract"."EventID=" = 15)) THEN 1 ELSE 0 END))) AS "TEMP(Calculation_4131225140217278)(631135046)(0)",
  SUM((CASE ("Extract"."EventID=" = 21) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_6031211200312248)(3917352840)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 21) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(2901309198)(0)",
  SUM((CASE WHEN (("Extract"."EventID=" = 22) AND ("Extract"."ResultEn=" = 'Goal')) THEN 1 ELSE 0 END)) AS "TEMP(Calculation_9211127133504464)(3388204385)(0)",
  SUM((CASE ("Extract"."EventID=" = 27) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Calculation_9851124000635091)(1801517227)(0)",
  SUM((CASE ("Extract"."EventID=" = 26) WHEN TRUE THEN "Extract"."xA" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Corners xA (copy))(2964885437)(0)",
  AVG((CASE WHEN ("Extract"."EventID=" IN (3, 6, 11, 12, 13, 15, 16, 17, 18, 19, 29, 32, 33, 34, 35, 36, 37, 38)) THEN ABS("Extract"."Y=") ELSE null::int END)) AS "TEMP(Median X for Position (copy))(4165715327)(0)",
  SUM((CASE ("Extract"."EventID=" = 22) WHEN TRUE THEN "Extract"."xG" WHEN FALSE THEN 0 ELSE NULL END)) AS "TEMP(Normal Shots xG (copy))(107794221)(0)",
  MAX((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(3242309746)(0)",
  MIN((CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END)) AS "TEMP(attr:Calculation_2284169459244019712:nk)(958606693)(0)",
  MAX("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(2152732858)(0)",
  MIN("Extract"."Jersey") AS "TEMP(attr:Jersey:nk)(585542566)(0)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
HAVING (((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) >= '9.9999999999999005'::double precision) AND ((CAST(SUM("Extract"."Minutes") AS DOUBLE PRECISION OR NULL) / NULLIF(90,0)) <= '30.000000000000298'::double precision))
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DT3aAdjyk8ALYUzecoiGa/", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE WHEN ("Extract"."Team" IN ('AHL', 'Ahly')) THEN 'Ahly' WHEN ("Extract"."Team" IN ('ASW', 'Aswan')) THEN 'Aswan' WHEN ("Extract"."Team" IN ('DAK', 'Dakhlia')) THEN 'Dakhleya' WHEN ("Extract"."Team" IN ('DEG', 'Wadi Degla')) THEN 'Degla' WHEN ("Extract"."Team" IN ('ENP', 'Enppi')) THEN 'Enpi' WHEN ("Extract"."Team" IN ('GEI', 'Geish')) THEN 'Geish' WHEN ("Extract"."Team" IN ('HAR', 'Haras')) THEN 'Haras' WHEN ("Extract"."Team" IN ('INT', 'Intag')) THEN 'Intag' WHEN ("Extract"."Team" IN ('ISM', 'Ismaili')) THEN 'Ismaily' WHEN ("Extract"."Team" IN ('ITI', 'Ittihad')) THEN 'Itihad Skandary' WHEN ("Extract"."Team" IN ('Ghazl Al Mahla', 'MAH')) THEN 'Mahala' WHEN ("Extract"."Team" IN ('MAK', 'Makasa')) THEN 'Makasa' WHEN ("Extract"."Team" IN ('MAS', 'Masry')) THEN 'Masry' WHEN ("Extract"."Team" IN ('MOK', 'Moqaouloun')) THEN 'Mokawloon' WHEN ("Extract"."Team" IN ('PET', 'Petrojet')) THEN 'Petrojet' WHEN ("Extract"."Team" = 'Shorta') THEN 'Shorta' WHEN ("Extract"."Team" = 'Smouha') THEN 'Smouha' WHEN ("Extract"."Team" IN ('ZAM', 'Zamalek')) THEN 'Zamalek' ELSE null::text END) AS "Calculation_2284169459244019712",
  SUM((CASE WHEN ("Extract"."ResultID=" = 13) THEN 1 ELSE 0 END)) AS "sum:Calculation_5406923220714024961:ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "00nD4GCqkJHIzaflnO7IK0", "lqctx-batch-query-id": "0" } } */;
