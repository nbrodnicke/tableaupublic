SELECT (''::text) AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "0MMXt0owk1dKvuJKIlbwT2" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "IjuRfNJG0aEIHmJDbf8J57" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data da Distribuicao (BNDPJ) (Years)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "OHuP9mkc0tHLlonof4fbYp" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Ato Impugnado" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "OHuP9mkc0tHLlonof4fbYp" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group' AND r.relkind = 'x';
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OHuP9mkc0tHLlonof4fbYp", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) AS "Classe (group)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DLrxiNaV07EIM90Bkxh7sn", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_3_Group' AND r.relkind = 'x';
SELECT "Group_1"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '4.1', '5.1', '6.1', '6.3', '7', '9')))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DlFoRt/IkU5Kxe7vW5i6iT", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_4_Group' AND r.relkind = 'x';
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Ato Impugnado" WHEN FALSE THEN "t0"."Ato Impugnado (separando os atos estaduais)" ELSE NULL END) AS "Ato Impugnado (separando os atos estaduais)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado" AS "Ato Impugnado",
    "Group_2"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_4_Group" "Group_2"
) "t0" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "t0"."Ato Impugnado")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '4.1', '5.1', '6.1', '6.3', '7', '9')))
GROUP BY 1,
  3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P7Ylb5vAUwBIGbQhZuwthl", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Julgamento do merito (completo)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "OfW1zX5+UNqLTTtLKC6kJr" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group' AND r.relkind = 'x';
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OfW1zX5+UNqLTTtLKC6kJr", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1989) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ((NOT (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NULL)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" IN ('aguardando julgamento', 'Concluso para acórdão')) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M7qoEbV3kwGJpe9jZNwY8T", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data do Julgamento do mérito (Years)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "OIopjA5xkiwLiTje4v/ibk" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_6_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group' AND r.relkind = 'x';
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_6_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data do Julgamento do mérito (Years)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Julgamento do merito (completo) (group) 1" IN ('aguardando julgamento (com liminar deferida em parte)', 'Improcedente (Plenário)', 'Procedente (Plenário)'))) AND (CASE WHEN ("Group_2"."Data do Julgamento do mérito (Years) (grupo)" = (DATE '2013-01-01')) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OIopjA5xkiwLiTje4v/ibk", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_6_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data do Julgamento do mérito (Years)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Julgamento do merito (completo) (group) 1" IN ('aguardando julgamento (com liminar deferida em parte)', 'Improcedente (Plenário)', 'Procedente (Plenário)'))) AND (CASE WHEN ("Group_4"."Data do Julgamento do mérito (Years) (grupo)" = (DATE '2013-01-01')) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IJLlAxHe0zyKTIpDcMPsaL", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data do Julgamento do mérito (Years) (grupo)" AS "Data do Julgamento do mérito (Years) (grupo)",
  "Group_2"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t0"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_6_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN ("Group_1"."Data do Julgamento do mérito (Years) (grupo)" = (DATE '2013-01-01')) THEN FALSE ELSE TRUE END) AND ("Group_2"."Julgamento do merito (completo) (group) 1" IN ('aguardando julgamento (com liminar deferida em parte)', 'Improcedente (Plenário)', 'Procedente (Plenário)'))))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ci4ZgIfDkldLE8MLG1JUC9", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LjJRIMOLELXJK9OWiv4Qfl", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Requerente" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "Gw8AT4BIE12LAUvVKp0uWT" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_8_Group' AND r.relkind = 'x';
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes (individuais divididos por grupos) (copy)" AS "Requerentes (individuais divididos por grupos) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_8_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Código Requerente" = '9') AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gw8AT4BIE12LAUvVKp0uWT", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_9_Group' AND r.relkind = 'x';
SELECT "Group_1"."Entidades Corporativas - Condensado (copy)" AS "Entidades Corporativas - Condensado (copy)",
  "Group_2"."Requerentes (individuais divididos por grupos) (copy)" AS "Requerentes (individuais divididos por grupos) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Classe:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_8_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Código Requerente" = '9') AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JUOL9CwrEv9LqkcSnfKqnc", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Entidades Corporativas - Condensado (copy)" AS "Entidades Corporativas - Condensado (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Código Requerente" = '9') AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "FOcmK+QJkhWI4S3Kk2UmVx" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group' AND r.relkind = 'x';
SELECT "Group_1"."Requerente (group)" AS "TEMP(Domain)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
GROUP BY 1
LIMIT 32
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "BdfZmB/Xk1OKP9PmtAjU+a" } } */;
SELECT "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_3"."Entidades Corporativas - Condensado (copy)" AS "Entidades Corporativas - Condensado (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp8_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_9_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp8_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_4"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (("Group_1"."Requerente (group)" IN ('10', 'ADALBERTO DE MORAES FILHO E OUTRO (A/S)', 'ASSEMBLÉIA LEGISLATIVA DO ESTADO DE ALAGOAS', 'CONSELHO FEDERAL DA ORDEM DOS ADVOGADOS DO BRASIL (CF 103, VII)', 'DEMOCRATAS - DEM (CF 103, VIII)', 'GOVERNADOR DE ESTADO DO ESPIRITO SANTO', 'MESA DO SENADO FEDERAL', 'PREFEITO DO MUNICÍPIO DE PRAIA GRANDE', 'PRESIDENTA DA REPÚBLICA (CF 103, 00I)', 'PROCURADOR-GERAL DA REPÚBLICA (CF 103, 0VI)')) OR ("Group_1"."Requerente (group)" IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BdfZmB/Xk1OKP9PmtAjU+a", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_3"."Requerentes (individuais divididos por grupos) (copy)" AS "Requerentes (individuais divididos por grupos) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp8_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_8_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp8_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_4"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (("Group_1"."Requerente (group)" IN ('10', 'ADALBERTO DE MORAES FILHO E OUTRO (A/S)', 'ASSEMBLÉIA LEGISLATIVA DO ESTADO DE ALAGOAS', 'CONSELHO FEDERAL DA ORDEM DOS ADVOGADOS DO BRASIL (CF 103, VII)', 'DEMOCRATAS - DEM (CF 103, VIII)', 'GOVERNADOR DE ESTADO DO ESPIRITO SANTO', 'MESA DO SENADO FEDERAL', 'PREFEITO DO MUNICÍPIO DE PRAIA GRANDE', 'PRESIDENTA DA REPÚBLICA (CF 103, 00I)', 'PROCURADOR-GERAL DA REPÚBLICA (CF 103, 0VI)')) OR ("Group_1"."Requerente (group)" IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CvmaOjZCka8ITsHGAcb5lu", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Estadual contra estadual" AS "Estadual contra estadual",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
WHERE ((CASE WHEN ("Extract"."Estadual contra estadual" = 'município') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5'))
GROUP BY 1,
  2,
  3,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HAjFIAw2kWzKp1hP/9FHLJ", "lqctx-batch-query-id": "0" } } */;
SELECT MIN("t0"."cnt:Requerente:qk") AS "lower:cnt:Requerente:qk",
  MAX("t0"."cnt:Requerente:qk") AS "upper:cnt:Requerente:qk"
FROM (
  SELECT COUNT("Extract"."Requerente") AS "cnt:Requerente:qk"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE (((((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5') AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'mesmo')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
  GROUP BY "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)",
    "Extract"."Origem do ato impugnado"
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LPx1A5ZpEl6KDdz5Lt3gyh" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group' AND r.relkind = 'x';
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  COUNT("Extract"."Origem do ato impugnado") AS "cnt:Origem do ato impugnado:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'mesmo') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5')) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MXZpYqmzEFbKNtzkmiuy9Z", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  "Extract"."Origem do requerente" AS "Origem do requerente",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Origem do ato impugnado") AS "cnt:Origem do ato impugnado:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (((NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'outros') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5')) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OBTxSb44k3+L6+o0q3bdSK", "lqctx-batch-query-id": "1" } } */;
SELECT MIN("t0"."cnt:Requerente:qk") AS "lower:cnt:Requerente:qk",
  MAX("t0"."cnt:Requerente:qk") AS "upper:cnt:Requerente:qk"
FROM (
  SELECT COUNT("Extract"."Requerente") AS "cnt:Requerente:qk"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  WHERE (((((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5') AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'outros')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
  GROUP BY "Extract"."Origem do ato impugnado",
    "Extract"."Origem do requerente"
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MT4JYuNZ0DCLFqTTpUagwO" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Origem do requerente" AS "Origem do requerente",
  SUM(1) AS "cnt:Origem do ato impugnado:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'outros') AND (NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5')) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OdJxUMmm0vAKDNEAFAdxS+", "lqctx-batch-query-id": "1" } } */;
SELECT MIN("t0"."cnt:Requerente:qk") AS "lower:cnt:Requerente:qk",
  MAX("t0"."cnt:Requerente:qk") AS "upper:cnt:Requerente:qk"
FROM (
  SELECT COUNT("Extract"."Requerente") AS "cnt:Requerente:qk"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ((((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5') AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Estadual contra estadual" = 'outros') AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
  GROUP BY "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)",
    "Extract"."Origem do requerente"
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PLgpJaGaEBQIbzEr00Urt+" } } */;
SELECT ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) * 100) + CAST(TRUNC(EXTRACT(MONTH FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL)) AS "Data da Distribuicao (BNDPJ) (Month / Year)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data da Distribuicao (BNDPJ) (Month / Year)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "INJjejOP0naLFe6UJIrZML" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_3_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_4_Group' AND r.relkind = 'x';
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_3_Group" "Group_2" ON (((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) * 100) + CAST(TRUNC(EXTRACT(MONTH FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL)) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "INJjejOP0naLFe6UJIrZML", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group' AND r.relkind = 'x';
SELECT "Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" AS "Requerentes (individuais divididos por grupos) (copy 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Mu9nW/zT00rL1ApGchrApV", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group' AND r.relkind = 'x';
SELECT "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_3"."Partidos (copy)" AS "Partidos (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN ("Group_3"."Partidos (copy)" IN ('PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA - PSDB - DIRETÓRIO MUNICIPAL DE ITU (CF 103, VIII)', 'PARTIDO HUMANISTA DA SOLIDARIEADE - PHS (CF 103, VIII)')) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MGm838uI0e6KteemGQNv7U", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_4"."Partidos (copy)" AS "Partidos (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp10_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_3" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp10_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_5"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EQDsU04Y0IEJvX57ZIw0aL", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Partidos (copy)" AS "Partidos (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Ng4+wbG6Uj0IAd0NApTGSB" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group' AND r.relkind = 'x';
SELECT "Group_4"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  (CASE ("t0"."$temp5_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp10_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  LEFT JOIN (
  SELECT "Group_3"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp5_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" "Group_3"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp10_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_5"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CLAWC6NKE2WJiJxT+PbRTn", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Resultado da Liminar" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "FAtfe4GUkNmKQfz9DVBNrG" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group' AND r.relkind = 'x';
SELECT "Group_3"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_4"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp10_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_3" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group" "Group_4" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_4"."Resultado da Liminar")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp10_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_5"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FAtfe4GUkNmKQfz9DVBNrG", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_4"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_5"."Partidos (copy)" AS "Partidos (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp11_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  LEFT JOIN (
  SELECT "Group_3"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp5_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" "Group_3"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" "Group_5" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_5"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_7"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp11_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_7" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_7"."Ato Impugnado")
  WHERE ("Group_7"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_6"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END))) AND ((CASE ("t0"."$temp5_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Kz+in5xbk+KIV99mQTE880", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_4"."Partidos (copy)" AS "Partidos (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  LEFT JOIN (
  SELECT "Group_3"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp4_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" "Group_3"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_1"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_2"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END))) AND ((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) = 'Procedente (Plenário)'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Oa3siqWi0//KYPoOQANqpS" } } */;
SELECT "Group_4"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_5"."Requerentes (individuais divididos por grupos) (copy 2)" AS "Requerentes (individuais divididos por grupos) (copy 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp11_output" IS NULL)) AS "io:Federal/Estadual:nk",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp5_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" "Group_3"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_5" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_5"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_7"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp11_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_7" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_7"."Ato Impugnado")
  WHERE ("Group_7"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_6"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_2"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END))) AND ((CASE ("t0"."$temp5_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) = 'Prejudicada (Decisão Monocrática)'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M+lFVKiiEirL43Jh/8GId+", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_4"."Requerentes (individuais divididos por grupos) (copy 2)" AS "Requerentes (individuais divididos por grupos) (copy 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp4_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" "Group_3"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IN ('ADALBERTO DE MORAES FILHO E OUTRO (A/S)')) OR ("Group_1"."Requerentes (individuais divididos por grupos) (copy 2)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_2"."Ato Impugnado (group) 1" IN ('9')) OR ("Group_2"."Ato Impugnado (group) 1" IS NULL)) THEN FALSE ELSE TRUE END))) AND ((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) = 'Prejudicada (Decisão Monocrática)'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "HmMOER3UkjfJCrJsGCajK6" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  COUNT("Extract"."Ato Impugnado") AS "cnt:Ato Impugnado:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((CASE WHEN (("Extract"."Ato Impugnado" IN ('0', '0.1', '0.1.1.2', '0.1.2', '0.2', '0.2.1', '0.2.1.1', '0.2.1.2', '0.4', '0.4.1.1', '0.5', '0.6', '0.8')) OR ("Extract"."Ato Impugnado" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "I3flSI1w0JyKwwYhccVZ/s", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IEu0OepcEItK76ZlQ5cUvw", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Ato Impugnado") AS "cnt:Ato Impugnado:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" "Group_2" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
WHERE ((CASE WHEN (("Extract"."Ato Impugnado" IN ('0', '0.1', '0.1.1.2', '0.1.2', '0.2', '0.2.1', '0.2.1.1', '0.2.1.2', '0.4', '0.4.1.1', '0.5', '0.6', '0.8')) OR ("Extract"."Ato Impugnado" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HDQe0j0FUgCJ4tmtV0sQZS", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  COUNT("Extract"."Origem do ato impugnado") AS "cnt:Origem do ato impugnado:ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (((NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N9QEtbsgkTNJS860SaVj00", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IOIdjzTvU0QIpDmJSWTUwd", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group' AND r.relkind = 'x';
SELECT MIN("t0"."cnt:Requerente:qk") AS "lower:cnt:Requerente:qk",
  MAX("t0"."cnt:Requerente:qk") AS "upper:cnt:Requerente:qk"
FROM (
  SELECT COUNT("Extract"."Requerente") AS "cnt:Requerente:qk"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
  GROUP BY "Extract"."Origem do ato impugnado"
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "G4V7cMo30+EJbuxOSMx1Rq" } } */;
SELECT "Country"."ID" AS "Country_ID", "Country"."ParentID" AS "Country_ParentID", "CountrySynonyms"."Name" AS "Country_Name", "Country"."ISO3166_3" AS "Country_ISO3166_3", "Country"."ISO3166_2" AS "Country_ISO3166_2", "Country"."FIPS" AS "Country_FIPS"
FROM "public"."Country" "Country"
  INNER JOIN "public"."CountrySynonyms" "CountrySynonyms" ON "Country"."ID" = "CountrySynonyms"."ParentID" AND "Country"."MapCode" = "CountrySynonyms"."MapCode"
WHERE "Country"."MapCode" IN (0, 1);
SELECT "State"."ID" AS "State_ID", "State"."ParentID" AS "State_ParentID", "StateSynonyms"."Name" AS "State_Name"
FROM "public"."State" "State"
  INNER JOIN "public"."StateSynonyms" "StateSynonyms" ON "State"."ID" = "StateSynonyms"."ParentID" AND "State"."MapCode" = "StateSynonyms"."MapCode"
WHERE "State"."MapCode" IN (0, 1) AND "State"."ParentID" = 1242143;
SELECT "State"."ID" AS "State_ID", "LocalData"."Geometry" AS "Geometry (generated)", "LocalData"."Latitude" AS "Latitude (generated)", "LocalData"."Longitude" AS "Longitude (generated)"
FROM "public"."State" "State"
  LEFT JOIN "public"."LocalDataState" "LocalData" ON "State"."ID" = "LocalData"."ParentID" AND "State"."MapCode" = "LocalData"."MapCode"
WHERE "State"."MapCode" IN (0, 1) AND "State"."ParentID" = 1242143;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GlXalmsa075JD/igsXERKI", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  COUNT("Extract"."Origem do ato impugnado") AS "cnt:Origem do ato impugnado:ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (((NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '5')) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FjpsJRVFk9kKwFHnIUOJ+8", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_3_Group' AND r.relkind = 'x';
SELECT "Group_1"."Fases dos processos" AS "Fases dos processos",
  "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_3_Group" "Group_1" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OvkZkdYbUO3JTjtgMsdNIh", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Julgamento do merito (completo) (group)" IN ('aguardando julgamento', 'extinto o process (decisão monocrática)')) OR ("Group_1"."Julgamento do merito (completo) (group)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) >= 1989) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0Bd1wTxFUh+LN9GeRq2EAF", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CASE WHEN (("Group_1"."Julgamento do merito (completo) (group)" IN ('aguardando julgamento', 'extinto o process (decisão monocrática)')) OR ("Group_1"."Julgamento do merito (completo) (group)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "01OF9vZX0/KK4I3c1W5zxp", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "TEMP(Calculation_0370514171644139)(1414019937)(0)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "TEMP(Calculation_0370514171644139)(2348628076)(0)",
  COUNT("Extract"."Julgamento do merito (julgados)") AS "TEMP(Calculation_8720514171124667)(2557822323)(0)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LUwPC/tOkg8Kn8NEjXYGoI", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Classe" AS "Classe"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HPC+zXMcE1/InpMiSSRN51", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GDlyFEN/k3uI+GCnP+CN2M", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Er/gLgw6k2rLYtZrpHKunK" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_5_DF9D8F30-31F0-4D0E-AB8C-4697E1FA367E_1_Group' AND r.relkind = 'x';
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_5_DF9D8F30-31F0-4D0E-AB8C-4697E1FA367E_1_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O4GJcRl+UmtKdUOnyM2i4t", "lqctx-batch-query-id": "4" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_5_DF9D8F30-31F0-4D0E-AB8C-4697E1FA367E_1_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "E+auzQM30HBIBJW3m+kQ2D" } } */;
SELECT "Extract"."Classe" AS "Classe",
  "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_5_DF9D8F30-31F0-4D0E-AB8C-4697E1FA367E_1_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
GROUP BY 1,
  2,
  3,
  4
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "KQoFjNdHEoKLOSB/uzvYXz" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "none:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
LIMIT 32
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "HO+PQbOX0s3JVudjo6UWIY" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group' AND r.relkind = 'x';
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  (NOT ("t0"."$temp2_output" IS NULL)) AS "io:Distribuição séc. xx/xxi:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "none:Data da Distribuicao (BNDPJ) (Years):ok",
    1 AS "$temp2_output"
  FROM "Extract"."Extract" "Extract"
  WHERE (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IN ((DATE '1988-01-01'), (DATE '1989-01-01'), (DATE '1990-01-01'), (DATE '1991-01-01'), (DATE '1992-01-01'), (DATE '1993-01-01'), (DATE '1994-01-01'), (DATE '1995-01-01'), (DATE '1996-01-01'), (DATE '1997-01-01'), (DATE '1998-01-01'), (DATE '1999-01-01'), (DATE '2000-01-01')))
  GROUP BY 1
) "t0" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) = "t0"."none:Data da Distribuicao (BNDPJ) (Years):ok")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Aguardando Julgamento')) AND (NOT ("Group_1"."Resultado da Liminar (group)" IS NULL)))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HO+PQbOX0s3JVudjo6UWIY", "lqctx-batch-query-id": "4" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE (NOT ("Group_1"."Resultado da Liminar (group)" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "CategoricalDomainFilter", "lqctx-root-activity-id": "P8I4M0KuUNSIgFVzcdc5/v" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Resultado da Liminar (group)" = '') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N7PxiaJN0jNJUopCnW4yoR", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_2"."Resultado da Liminar (group)" = 'Prejudicada'))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HKyIshIKkoJKZd9k3MinmK", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group' AND r.relkind = 'x';
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)'))) AND (CASE WHEN ("Group_1"."Resultado da Liminar (group)" = '') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IiNEVGrLEvGKblCv8Si/WS", "lqctx-batch-query-id": "2" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group' AND r.relkind = 'x';
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_2"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "N3kop7hkUghKNApc64NQhy", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MbtNfN0kUYHL6leMPa5bsa", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "HTRupP9rEBfLUDAcAURCYE" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ifp6ee9EUWyKQpKINoRoPI", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GDpobO4Q0e3JvQ0sP6JaFi", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_10_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_12_Group' AND r.relkind = 'x';
SELECT "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
    1 AS "$temp3_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_12_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IN ('aguardando julgamento')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KjTK1RkU0vlIDWIbmkEwee", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
    1 AS "$temp3_import1"
  FROM "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_10_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)', 'Prejudicada (Plenário)')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DDjh5G5LkFvJzJp+fAHAHx", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_2"."Resultado da Liminar (group)" = 'Indeferida'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LJtUGlQdUcTI/fUkfFK6sb", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (NOT ("Group_1"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LmbYd37uUcfLKW3YzM45zl" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_11_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group' AND r.relkind = 'x';
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_11_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "DqUhy22sUoHLzNQEoUI1Kj", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GZDhFXv4kG/LMJL/vYlKFA", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (NOT ("Group_1"."Julgamento do merito (completo) (group) 1" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "CategoricalDomainFilter", "lqctx-root-activity-id": "P5srTW78E+PKZlS6WXsFB7" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "MX8yMwgQkwzInrAAy+CO1v" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "K9n4+VeREnAIvAoGfVOEyz" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_11_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "H388z1KEkVsIXcqsUSvGn6", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Group_1"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HCWiegYKku6KQ1p4xtg8B+", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MI1b5xKwEYfI6QzxrV2AnQ", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) <= (DATE '2012-12-31'))))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Bo5/EuxckqnKToM4py7gOy", "lqctx-batch-query-id": "2" } } */;
SELECT SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL))) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Improcedente (Plenário)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OJois2b2kYfJewjtfu7cAz", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END)) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) <= (DATE '2012-12-31'))))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HSXa56jG0FFKfTE3lj9hSq", "lqctx-batch-query-id": "3" } } */;
SELECT SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL))) AS BIGINT OR NULL) AS "yr:Data da Liminar (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) <= (DATE '2012-12-31'))))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FWIkqtzZkDwJ7gr446HVZS", "lqctx-batch-query-id": "4" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) AS "Data da Liminar (Years)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PmyJOp0i0j7JxfZ9y9BKCj" } } */;
SELECT COUNT(DISTINCT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL)) AS "ctd:Data da Liminar (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "BwsS3LfbUY4K+ZLXt25gJf" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Liminar")), "Extract"."Data da Liminar") AS DATE OR NULL) AS "Data da Liminar (Years)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "C5F9upRIUCqIKqGDmusBHv" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group' AND r.relkind = 'x';
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B2UbQMdM0SvKw26f6j9B5M", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)')) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LpP/ep8P06NKrVn2MFeyyQ", "lqctx-batch-query-id": "0" } } */;
SELECT AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)')) THEN FALSE ELSE TRUE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "FzWpJ1Kc0+YLpIxmUzOXTg" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)', 'Concluso para acórdão', 'extinto o process (decisão monocrática)', 'Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D4oOe6ZE0PVJPy27lCgZzR", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)', 'Concluso para acórdão', 'extinto o process (decisão monocrática)', 'Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C3FJXUrJU8MKF7vKdAPQT4", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MjNp2An5kBEIYydlq9h7Y/", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Negado Seguimento (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G+B9reeoEbbI0aUSWaLoWm", "lqctx-batch-query-id": "1" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Indeferida a inicial (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DJNm6pzvUSjI3dTFxoONYC", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Indeferida a inicial (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Lgm8FEvjEBRJpykaysrmNI" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Jg1lzNWz0aDJjgxrOlQnEV", "lqctx-batch-query-id": "1" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gwm/Lyc5U6FL4FSYICVJVE", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "JTa+EyB8kVgJnFgzFhLfQC" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)', 'Prejudicada (Decisão Monocrática)', 'Prejudicada (Plenário)', 'Processo findo')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OhWng+C90zxIe7MjHF4MsT", "lqctx-batch-query-id": "2" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_2_Group' AND r.relkind = 'x';
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Julgamento mérito:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_2_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" = "Group_1"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_2_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  WHERE ("Group_2"."Julgamento do merito (completo) (group) 1" IN ('Improcedente (Plenário)', 'Procedente (Plenário)'))
  GROUP BY 1
) "t0" ON ("Group_1"."Julgamento do merito (completo) (group) 1" = "t0"."Julgamento do merito (completo) (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)', 'Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EMmqqz/pkuTLHF7YoWdz4F", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (julgados)" IN ('Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Não Conhecida (Plenário)', 'Prejudicada (Plenário)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Monocrática/Colegiada:nk"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "E89ym8CaEmfJrHhV3HDo5P", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (julgados)") AS "cnt:Julgamento do merito (julgados):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Improcedente (Plenário)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K2RfcpO8E8QI9JxzZINatT", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JAdahozxEymLiTn6gc88Ra", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0RowmdfrERDK/4l+FSqKWX", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group' AND r.relkind = 'x';
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MjYEj/XtkWbIsU5qjjPcue", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "LfYBBq1UEyBIysELu5NAFQ" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "H3AKugCgkgpJ3TWgces+Vt" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D3SGHH5vU1RJRa9XExJCA8", "lqctx-batch-query-id": "2" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_13_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_4_Group' AND r.relkind = 'x';
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GfD5UcJgEPRKi/++wTwFcZ", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_4_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (completo) (group)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GqjnrBERkNZKuGu7QnTn+O", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_5_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_6_Group' AND r.relkind = 'x';
SELECT "Group_3"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF (cópia)" ELSE NULL END) AS "Ressaltar DF (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF (cópia)" AS "Ressaltar DF (cópia)",
    1 AS "$temp2_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_6_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_5_Group" "Group_3" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FLFpdDMO0lVLLCgsUQ7ENs", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Set 1:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Julgamento do merito (completo) (group)" IN ('Procedente (Plenário)', 'extinto o process (decisão monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)')))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PZ+6enfdEy9K4m94lC9zgr", "lqctx-batch-query-id": "1" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Set 1:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_4_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ("Group_1"."Julgamento do merito (completo) (group)" IN ('Procedente (Plenário)', 'extinto o process (decisão monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)'))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7')))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "L4hAXX4AkoDIae2Tpcl5S8", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DCYypStYUnOLMXM8uAEebP", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_7_Group' AND r.relkind = 'x';
SELECT "Group_1"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_7_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_4_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_2"."Julgamento do merito (completo) (group)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DaqYPiCgEjrKhl9P4Xk+TX", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL))) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CCN/xL1IkSJJ7eXKMeIA+6", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Fundamento (Código)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "IwOM7b1Mk33Ixqjf2xsDTJ" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group' AND r.relkind = 'x';
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ((CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_1"."Ato Impugnado (group) 1" = '4.1') AND ("Group_2"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IwOM7b1Mk33Ixqjf2xsDTJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Julgamento do merito (julgados)" AS "Julgamento do merito (julgados)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "CjzrDHUR0H3LeH4VdSoLS0", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Classe" AS "Classe"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "KwGEyv2v0IXIj35CxsTm2x", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group' AND r.relkind = 'x';
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DaOeDzR1UY0Kbez2AIlxVq", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Classe" AS "Classe",
  "Extract"."Julgamento do merito (julgados)" AS "Julgamento do merito (julgados)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "H5i5gFSjUjaLsU4JQ62Cyi" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group' AND r.relkind = 'x';
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KC8zO6p6E9sKEElfGIf8hF", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DIyWd9LN0TnLiy50IhF7J8", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Group_2"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_3"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gn8wjytL0OdIAPT4zYbNGC", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LL/rGJnDkkII6hrToliY2F", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group' AND r.relkind = 'x';
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BQKow1RgEEpIAuKKFzpjRe", "lqctx-batch-query-id": "1" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "E7y8cIg5EKfK/tVoEANumz", "lqctx-batch-query-id": "1" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P76MP1FpEG2LtXG+5MyOaD", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  SUM(1) AS "cnt:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '1.1'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GvFOz7eskkZLlaBlHcyInZ", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FvlFRtwgkn1KwWI3gpc0jR", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group' AND r.relkind = 'x';
SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp2_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GwRsjiEPUhxI0ydmK3DMxR", "lqctx-batch-query-id": "2" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group' AND r.relkind = 'x';
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BC+L97irUKLIoWBr+jIc0f", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "JozvQiOXUF5LF5VdlyQ8KI" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '2'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "CKRsG+hmUbeIotEQL0OZAn" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '2')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LST1IrWpkYYIlna7d+5+BP", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '2')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BpF6fQ05EjfJ1R+JXk+KIr", "lqctx-batch-query-id": "1" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FoMY3nIBU3kKk5c3ZczVaP", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp2_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LKkfG/mbkVdKW0orVPfrkT", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EWQDe6jukY2Iml0QOq1g19", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '3'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "G1U0+RFp0OSKFqlHGjWKFx" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Gffz3goTEC0JbndiyX/FBr" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '3')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IJShgexTUIXLCnVIXSIIUr", "lqctx-batch-query-id": "0" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '3')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FCdEus7REQEK02yZO1L0y3", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_16_Group' AND r.relkind = 'x';
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_16_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IKOUd6DnkVsK81AUzGd6KO", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_17_Group' AND r.relkind = 'x';
SELECT "Group_1"."Ressaltar DF" AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_17_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "ElVK93C9UhkJREqXv1ZuBU" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HBiC+eaEEbYKCRu3hUo6y7", "lqctx-batch-query-id": "1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_18_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_11_Group' AND r.relkind = 'x';
SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Group_1"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_18_Group" "Group_1"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "C79phswr0qcKi7zXBuqVQ8", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_12_Group' AND r.relkind = 'x';
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  (CASE ("t1"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t2"."$temp8_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp3_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_12_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp4_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_11_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp8_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t2" ON ("Group_4"."Ato Impugnado (group) 1" = "t2"."Ato Impugnado (group) 1")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LKaD3GpkkZMLFXvHT445Iq", "lqctx-batch-query-id": "2" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_13_Group' AND r.relkind = 'x';
SELECT "Group_3"."Ressaltar DF" AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp3_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_12_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_13_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "0+/G7tU/06iJzYtYPzz9uP" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01'))))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "MGTtdMxqUVtIy79foPxdZg" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01'))))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "ITUfo+jwUA2K0LoRgWrTub" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01'))))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "BUqn72ZxkhQJN90vaikQqZ" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_19_Group' AND r.relkind = 'x';
SELECT "Group_4"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  (CASE ("t1"."$temp5_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t2"."$temp10_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp4_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_18_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp5_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_16_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_19_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp10_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t2" ON ("Group_5"."Ato Impugnado (group) 1" = "t2"."Ato Impugnado (group) 1")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NLacqNJCk67JjAEGFAjXbl", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Group_1"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_18_Group" "Group_1"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'extinto o process (decisão monocrática)', 'Improcedente (Plenário)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "GrVRXI9ZUKRImMCxfH57eA", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_9_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_10_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_11_Group' AND r.relkind = 'x';
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_12_Group' AND r.relkind = 'x';
SELECT "Group_4"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "Group_5"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t3"."$temp11_output" IS NULL)) AS "io:Direitos Fundamentais2:nk",
  (NOT ("t4"."$temp15_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp4_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_12_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp5_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_11_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_10_Group" "Group_4" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_4"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" "Group_5" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_5"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_7"."Ressaltar DF" AS "$temp9_output",
    1 AS "$temp11_output"
  FROM (
    SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
    FROM "Extract"."Extract" "Extract"
      INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_9_Group" "Group_6" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_6"."Fundamento (Código)")
    WHERE ("Group_6"."Ressaltar DF" = '4.1')
    LIMIT 1
  ) "t2"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_9_Group" "Group_7" ON ("t2"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_7"."Fundamento (Código)")
) "t3" ON ((CASE ("t1"."$temp5_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) IS NOT DISTINCT FROM "t3"."$temp9_output")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_8" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_8"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_9"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp15_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_9" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_9"."Ato Impugnado")
  WHERE ("Group_9"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t4" ON ("Group_8"."Ato Impugnado (group) 1" = "t4"."Ato Impugnado (group) 1")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) >= (DATE '1988-01-01')) AND (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) <= (DATE '2013-01-01')))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'extinto o process (decisão monocrática)', 'Improcedente (Plenário)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp4_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P8at6joeELNKZJQuNI5p9I", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EZ6lCcdpkNBJ/2/6tQYZmL", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PmA38SJcE06KUFTCYCpSDm", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ep72ieCMkWZIiT7v2aBiU0", "lqctx-batch-query-id": "1" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "06u+Vchc0uDLnDHm6UtdtT" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '4')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "IHAWNxRVEZUL7TZLpwT++x" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "LdiaWb0iEP9KJuVS5aJnPU" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_13_Group' AND r.relkind = 'x';
SELECT "Group_3"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_13_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GDWdjWq+0V8KhkLO35ri++", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_13_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "GIYUNLAgUt0JZrea2+bHN1" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_14_Group' AND r.relkind = 'x';
SELECT "Group_3"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_4"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp8_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp2_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_10_Group" "Group_3" ON (CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) IS NOT DISTINCT FROM "Group_3"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_14_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp8_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_5"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  3,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CRyWWLeo0oZIHtK28ka2j3", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_14_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "H0/gYvE5081Jl/bDGecrFR" } } */;
SELECT CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_14_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  7
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KEwuL9UK0u4IUyWgdaL8kY", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '4')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KtQikL4EEiUI+hHsX8hVYC", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_15_Group' AND r.relkind = 'x';
SELECT "Group_1"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_15_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "C/sR0rWdk7YKUkJDtgqf0Q", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Beneficiados (2)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "GAmYuszjEj5IEq0GzcfgXQ" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_16_Group' AND r.relkind = 'x';
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Group_2"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_16_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_15_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_4" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_4"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_3"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_4"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GAmYuszjEj5IEq0GzcfgXQ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_15_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FcxSqeMGk2aJI6+PsD17tT", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group' AND r.relkind = 'x';
SELECT "Group_3"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Group_4"."Requerente (group)" AS "Requerente (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_5"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Egs2OcRkEuJJoJQlMkb3hk", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "Data da Distribuicao (BNDPJ) (Years)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_16_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IhLEzqFsEOlJnkGBvvKmWq", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  CAST(TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data do Julgamento do mérito")), "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "Data do Julgamento do mérito (Years)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MnItmP+ckwVKa0oksLoEIJ", "lqctx-batch-query-id": "0" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_15_Group' AND r.relkind = 'x';
SELECT "Group_3"."Beneficiados (agrupados) (cópia 2)" AS "Beneficiados (agrupados) (cópia 2)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_15_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ed1dAa850lyIp8vtJ6neWJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "J9FxrXQ+UkULC0OmJon4Jg", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "CHTM+xp/kBMKux6Dl82rDY" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group" "Group_2" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_2"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Beneficiados (group) (copy)" IN ('Grupo específico: Empresas (devedoras do fisco)', 'Interesse corporativo: Advogados', 'Interesse corporativo: Partidos')) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "F5Kg3O900IPKJAwjrKPI25" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "F/ebYlZlUUAIZBSJgucCfy", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_16_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_4"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LHQWXwXBky3KNtd2aDap+G", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "MrYRobX9UoSLJ7a/FXBf05" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Domain", "lqctx-root-activity-id": "CAsmTRnikJwIjiiBqTIxzT", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "KNEBTU0UUmWKOI7PZ2/za1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "HP63JL3a0dUKwV2XEOSL/i" } } */;
SELECT 1 FROM pg_class r WHERE r.relnamespace = 42 AND r.relname = '#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_20_Group' AND r.relkind = 'x';
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Beneficiados (2)" WHEN FALSE THEN "t0"."Interesses (hiperagrupados) (cópia) (cópia)" ELSE NULL END) AS "Interesses (hiperagrupados) (cópia) (cópia)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Beneficiados (2)" AS "Beneficiados (2)",
    "Group_2"."Interesses (hiperagrupados) (cópia) (cópia)" AS "Interesses (hiperagrupados) (cópia) (cópia)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_20_Group" "Group_2"
) "t0" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "t0"."Beneficiados (2)")
  INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1988-10-01')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Iy7CgkB50MELET2PyhJR52", "lqctx-batch-query-id": "2" } } */;
