SELECT (''::text) AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "GhYUkm9CEB6Lw6ouiamfl4" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Julgamento do merito (completo)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "JXHUv1YH0yiIKl431zl5pa" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
GROUP BY 1
ORDER BY "Julgamento do merito (completo) (group)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "JXHUv1YH0yiIKl431zl5pa" } } */;
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Resultado da Liminar" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "PR3+VyMGU/QJjzaSRKgTna" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
GROUP BY 1
ORDER BY "Resultado da Liminar (group)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "PR3+VyMGU/QJjzaSRKgTna" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
GROUP BY 1
ORDER BY "Julgamento do merito (completo) (group) 1" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "KGicBW4UEstLMeuy4OQ25/" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Ato Impugnado" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "0jBRPfhfExZKD53udOtEZx" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Origem do ato impugnado" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "KZMkZv2SkbaJp/O8Jw2lPh" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Fundamento (Código)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "BwTABPoFkInJZ4UXJWPXL7" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
GROUP BY 1
ORDER BY "Fundamento (Código) (group)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "BwTABPoFkInJZ4UXJWPXL7" } } */;
SELECT SUM(1) AS "cnt:TEMP(row count)(290714814)(0):qk"
FROM "Extract"."Extract" "Extract"
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "RowCount", "lqctx-root-activity-id": "CQKYkxD4ENCLh/1zo39Vnn" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_5_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IFUVYy8kESVJ7LmCVqD16W", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Extract"."Requerente" AS "Requerente",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EAsV/2Ux0YFK2mTXrbQ4fg", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Requerentes (individualizados) (cópia)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "PnfJ1vcwURTKxOU+34t/ZE" } } */;
SELECT (CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) AS "Julgamento do merito (procedencia - consolidado)  (grupo)",
  "Group_1"."Requerentes divididos por porte (grupo) (cópia 2)" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_6_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PnfJ1vcwURTKxOU+34t/ZE", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes divididos por porte (grupo) (cópia 2)" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_6_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "KpuAaq7skCPKTsSoylajJP" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "OKze3zhJ0DPJ1/1j1FIkqh" } } */;
SELECT (CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) AS "Julgamento do merito (procedencia - consolidado)  (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "P2uVQmm7EhDJ2WZofQhuIZ" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  "Group_2"."Requerentes divididos por porte (grupo) (cópia 2)" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_7_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_6_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Fusion", "lqctx-root-activity-id": "K7kuIAcJ0a1Ij8WlU7iGn8", "lqctx-batch-query-id": "3" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  "Group_2"."Requerentes divididos por porte (grupo) (cópia 2)" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_1_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0H8ec+WY08mJZbHZn0eWZK", "lqctx-batch-query-id": "1" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "LBIpWDzy0cTKlJigUyq9yu" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PTYPpJ+sEjuKABTYItSEPP", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MCjwMLZ9kNUIXv9qdk/enQ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes divididos por porte /ADis ajuizadas (grupo) (cópia)" AS "Requerentes divididos por porte /ADis ajuizadas (grupo) (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_3_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "F4dhxYvKUw0KMndDrH6Sib", "lqctx-batch-query-id": "0" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Jwe40p+w077JWSIEPo9Hqi" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes divididos por porte /ADis ajuizadas (grupo) (cópia)" AS "Requerentes divididos por porte /ADis ajuizadas (grupo) (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_3_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "019aioX2UsMIg5TYaCg0Ro", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "TEMP(Calculation_0370514171644139)(1414019937)(0)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "TEMP(Calculation_0370514171644139)(2348628076)(0)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" IN ('ASSOCIAÇÃO DOS DELEGADOS DE POLÍCIA DO BRASIL - ADEPOL - BRASIL', 'ASSOCIAÇÃO DOS MAGISTRADOS BRASILEIROS - AMB')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Cz5z3liMEXZIhumwzzJmBG", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  (CAST(COUNT("Extract"."Julgamento do merito (procedencia)") AS DOUBLE PRECISION OR NULL) / NULLIF(COUNT("Extract"."Julgamento do merito (completo)"),0)) AS "usr:Calculation_0370514171644139:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" IN ('ASSOCIAÇÃO DOS DELEGADOS DE POLÍCIA DO BRASIL - ADEPOL - BRASIL', 'ASSOCIAÇÃO DOS MAGISTRADOS BRASILEIROS - AMB')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "FFjhR8gaEr/JHQcTTbsU4C" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0dC/4axuEjtL0HaTiUhg6d", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data da Distribuicao (BNDPJ) (Years)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "DAzEPyZT0QAIelgv72Fj8S" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" IN ('ASSOCIAÇÃO DOS DELEGADOS DE POLÍCIA DO BRASIL - ADEPOL - BRASIL', 'ASSOCIAÇÃO DOS MAGISTRADOS BRASILEIROS - AMB', 'ASSOCIAÇÃO NACIONAL DOS MAGISTRADOS DA JUSTIÇA DO TRABALHO - ANAMATRA')))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DAzEPyZT0QAIelgv72Fj8S", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes ADI-F por porte" AS "Requerentes ADI-F por porte",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_6_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P1V2VMcTkO0K5MTw0IgEgZ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes ADI-F por porte (cópia)" AS "Requerentes ADI-F por porte (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) IN ('10', '5')) THEN FALSE ELSE TRUE END)) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ICGCof1oUg7LkErqiA7cBU", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Requerentes ADI-F por porte (cópia)" AS "Requerentes ADI-F por porte (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IiX/bqW/0JHIP9c+1bhzLX", "lqctx-batch-query-id": "1" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Lls2p9JSU5gI/HQkgmQH6r" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp3_output" IS NULL))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "HxJdHFtIUx0Low40S8e8yQ" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) IN ('10', '5')) THEN FALSE ELSE TRUE END)) AND ("t0"."$temp3_output" IS NULL))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "EhmGGzoOkI0LT1ED6RoVFm" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Group_1"."Requerentes ADI-F por porte (cópia)" AS "Requerentes ADI-F por porte (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_9_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HZZD4Avy0C9LGuXsVD11WA", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Group_1"."Requerentes ADI-F por porte" AS "Requerentes ADI-F por porte",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_3_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GRTDHB1yUUBLiHjQ0PUv+p", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Group_1"."Requerentes ADI-F por porte (cópia)" AS "Requerentes ADI-F por porte (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_7_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FwjD8sPREugJFIeAuiZL09", "lqctx-batch-query-id": "3" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Group_1"."Requerentes ADI-F por porte" AS "Requerentes ADI-F por porte",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GV24k0qTUPvJbiFsejRMV8", "lqctx-batch-query-id": "1" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp3_output" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "CekHZ5KmEPBIMmrc58ubRd" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "EpiYA8fQEF6I9aRVSqZIhL" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "PhZ18y5HE+SL/VcjDTdWYG" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "NVPAkP+QEOyLqYW1OTMmW2" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp3_output" IS NULL))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "D8Ej7A+6kZrJiaEt1o8x/n" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp3_output" IS NULL))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "LsyLIJKS0kNKzw/0+gyvzP" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes ADI-F por porte" AS "Requerentes ADI-F por porte",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "TEMP(Calculation_0370514171644139)(1414019937)(0)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "TEMP(Calculation_0370514171644139)(2348628076)(0)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FiiEUaXxUVHJLYbbBCYVO6", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes ADI-F por porte (cópia)" AS "Requerentes ADI-F por porte (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  (CASE ("Extract"."Requerente" IS NULL) WHEN TRUE THEN 0 WHEN FALSE THEN 1 ELSE NULL END) AS "ctd:Requerentes (individualizados) (cópia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_3_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CXb+AZuvErHLcmWNguw3H8", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Requerentes (Agrupados) (cópia)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Requerentes (Agrupados) (cópia)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "KMcnHV6o0YEL9ZekpMkGVC", "lqctx-batch-query-id": "0" } } */;
SELECT (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JlUXdM2tE0NJiizV5AqTVf", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_4_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) IN ('1', '10')) THEN FALSE ELSE TRUE END))) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PThNhO8FkzvLgJGi7lpZpJ", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE ((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FRwFMf+RUwFKUG/5fY7sch", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_3"."Requerentes (agrupados por porte) (grupo)" = 'ADALBERTO DE MORAES FILHO')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_4"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D0AJ4JZckzdIa3+2tdlypI", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ADALBERTO DE MORAES FILHO')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "G+N/QDmHkRLIJSLJKcZdjA" } } */;
SELECT AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" = 'ADALBERTO DE MORAES FILHO')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "08bdxIWHUwJKvYLY2iCPHU" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ADALBERTO DE MORAES FILHO')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "GsjvUkLPUgtIb+M+oVBwq0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_3"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO BRASILEIRA DA INDÚSTRIA DE MÁQUINAS E EQUIPAMENTOS - ABIMAQ')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_4"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IXOKACe+UwTKPV9Zeievl7", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO BRASILEIRA DA INDÚSTRIA DE MÁQUINAS E EQUIPAMENTOS - ABIMAQ')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "BBC89Pi7UjPLaDXwmzmWPI" } } */;
SELECT AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO BRASILEIRA DA INDÚSTRIA DE MÁQUINAS E EQUIPAMENTOS - ABIMAQ')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "KJRsvTE2EmOJ8y+3rF0wIN" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO BRASILEIRA DA INDÚSTRIA DE MÁQUINAS E EQUIPAMENTOS - ABIMAQ')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "EEd7OJr+ED7J1ECovQZOAj" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_3"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO NACIONAL DOS MAGISTRADOS DA JUSTIÇA DO TRABALHO - ANAMATRA')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_4"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JisAbJ3Mk6WK+j/FK+0h0N", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO NACIONAL DOS MAGISTRADOS DA JUSTIÇA DO TRABALHO - ANAMATRA')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "KIjIpXEIU5GKm30e2BXeJA" } } */;
SELECT AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO NACIONAL DOS MAGISTRADOS DA JUSTIÇA DO TRABALHO - ANAMATRA')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "0ytVCAXeENDKThV34JV5rP" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)) AND ("Group_2"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO NACIONAL DOS MAGISTRADOS DA JUSTIÇA DO TRABALHO - ANAMATRA')) AND EXISTS (
SELECT 1 AS "one"
FROM (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0"
WHERE ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
)
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "FRZ3Nyh7ka2Klub7G4kp/e" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012))) AND ("t0"."$temp4_output" IS NULL))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CYetkOFSkHQKW3h4KZF8Fi", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Group_2"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerentes (individualizados) (cópia)")
WHERE ((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D28BsxWR0TuJXP95Tp5n5Y", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GbCtsq0NElsJCpKk/rfXUo", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CASE WHEN ("Group_1"."Requerentes (agrupados por porte) (grupo)" IN ('ASSOCIAÇÃO DOS MAGISTRADOS BRASILEIROS - AMB', 'CONSELHO FEDERAL DA ORDEM DOS ADVOGADOS DO BRASIL')) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "O+FtzRdk0oGJNQMLkYjahR", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  (CASE ("Extract"."Requerente" IS NULL) WHEN TRUE THEN 0 WHEN FALSE THEN 1 ELSE NULL END) AS "ctd:Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Oynn9OtkUpeINuK9l+MBpl", "lqctx-batch-query-id": "0" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "KkhdAvQ/EfaJ1dxtc0vMFy" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 4
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "BG2lZEMcUlzJSyx0VonjEs" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  (CASE ("Extract"."Requerente" IS NULL) WHEN TRUE THEN 0 WHEN FALSE THEN 1 ELSE NULL END) AS "ctd:Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" IN ((DATE '2007-01-01'), (DATE '2011-01-01'))))
GROUP BY 1,
  2,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D/j6ZL+0EXwILAUgIa65a7", "lqctx-batch-query-id": "0" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" IN ((DATE '2007-01-01'), (DATE '2011-01-01'))))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Gs9u4Dd+kuVKWEDACj9Gxt" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerentes (individualizados) (cópia):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Data da Distribuicao (BNDPJ) (Years) (group)" IN ((DATE '2007-01-01'), (DATE '2011-01-01'))))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "NihxPMwk0nnIjlFOj9xFm7" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  "Extract"."Requerente" AS "Requerente",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (((((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6') AND ("Extract"."Requerente" = 'PROCURADOR-GERAL DA REPÚBLICA')) OR (((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '7') AND ("Extract"."Requerente" = 'CONSELHO FEDERAL DA ORDEM DOS ADVOGADOS DO BRASIL'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" = 'CONSELHO FEDERAL DA ORDEM DOS ADVOGADOS DO BRASIL'))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LZplcmhjkikLRwCr/f8twt", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Requerentes (agrupados por porte) (grupo)" = 'ASSOCIAÇÃO DOS MAGISTRADOS BRASILEIROS - AMB'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JgX37MGHkWTKDBL4TmLUQp", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GfakyR/5EUFKdT/rPiya/F", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente",
  "Group_1"."Requerentes (agrupados por porte) (grupo)" AS "Requerentes (agrupados por porte) (grupo)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok",
  (CASE ("Extract"."Requerente" IS NULL) WHEN TRUE THEN 0 WHEN FALSE THEN 1 ELSE NULL END) AS "ctd:Requerente:ok",
  (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Set 1:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerentes (individualizados) (cópia)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ERfGIdxsU8ELAQGo638J19", "lqctx-batch-query-id": "0" } } */;
SELECT SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok",
  COUNT(DISTINCT "Extract"."Requerente") AS "ctd:Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "MWaFojYTEViLvG0K4307RP" } } */;
SELECT "Extract"."Código Requerente" AS "Código Requerente"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Código Requerente" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "MCvTPy7yEidKDMeK12hvxK" } } */;
SELECT "Group_1"."Requerentes (Agrupados) (cópia) (copy)" AS "Requerentes (Agrupados) (cópia) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_9_Group" "Group_1" ON ("Extract"."Código Requerente" IS NOT DISTINCT FROM "Group_1"."Código Requerente")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MCvTPy7yEidKDMeK12hvxK", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerentes (Agrupados) (cópia) (copy)" AS "Requerentes (Agrupados) (cópia) (copy)",
  COUNT("Extract"."Classe") AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_9_Group" "Group_1" ON ("Extract"."Código Requerente" IS NOT DISTINCT FROM "Group_1"."Código Requerente")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)')) THEN 'ADI' WHEN ("Extract"."Classe" IN ('ADI (omissão)', 'ADI (omissão) (Med. Liminar)')) THEN 'ADI (omissão)' WHEN ("Extract"."Classe" IN ('ADPF (fungibilidade)', 'falta', 'NE')) THEN 'ADPF (fungibilidade)' ELSE "Extract"."Classe" END) IN ('ADI (omissão)', 'ADPF (fungibilidade)')) THEN FALSE ELSE TRUE END) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FOWAaLhx0LOKleHU1vTbSJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) (Month / Year)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data da Distribuicao (BNDPJ) (Month / Year)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "GmRSbBeekNMKdGUsoDX1mB" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GmRSbBeekNMKdGUsoDX1mB", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:ADI-F x ADI-E (copy):nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_4"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PBqNyEUKk6zJHaXYjjz8dP", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:ADI-F x ADI-E (copy):nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_4"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Iimfr6VOkugKLqQbBSHl47", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (("Group_1"."Data da Distribuicao (BNDPJ) PGR" >= 198907) AND ("Group_1"."Data da Distribuicao (BNDPJ) PGR" <= 200508))) AND (NOT ("Group_3"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JvhIS8QzEZzLrjCcM/DHgT", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:ADI-F x ADI-E (copy):nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (("Group_1"."Data da Distribuicao (BNDPJ) PGR" >= 198907) AND ("Group_1"."Data da Distribuicao (BNDPJ) PGR" <= 200508))) AND (NOT ("Group_5"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "POJVu06fkP+J67/FCiI6pZ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (("Group_1"."Data da Distribuicao (BNDPJ) PGR" >= 198907) AND ("Group_1"."Data da Distribuicao (BNDPJ) PGR" <= 200508))) AND ("Group_2"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_3"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "M9I9f3MD0XjKXO3A1B/XkY", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (("Group_1"."Data da Distribuicao (BNDPJ) PGR" >= 198907) AND ("Group_1"."Data da Distribuicao (BNDPJ) PGR" <= 200508))) AND ("Group_2"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_3"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "M0bTP75zEyfJ525wQmEjT6" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_4" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_4"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (("Group_1"."Data da Distribuicao (BNDPJ) PGR" >= 198907) AND ("Group_1"."Data da Distribuicao (BNDPJ) PGR" <= 200508))) AND ("Group_4"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_5"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "05QhshWq024IthZrfv1xqg", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Fnf/jQXQkbVJzRIgVyE1+8", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) AS "Julgamento do merito (procedencia - consolidado)  (grupo)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P8xBIqspE3YImJm9V2A/OK", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) AS "Julgamento do merito (procedencia - consolidado)  (grupo)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_2"."Data da Distribuicao (BNDPJ) PGR" = 198810))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KFq1uREdkA1LLXpZHu9YNN", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ressaltar DF" AS "Ressaltar DF",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_13_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0KALw7V2kCeK8+zedE3VMT", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LfIG84A9kVsLki+TIE3V5E", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_13_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (NOT ("Group_3"."Ressaltar DF" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Cql3YBaHUG7LIZw0W1a80y", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_2"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_14_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Ato Impugnado (group) 1 (copy)" IN ('1.1.1', '1.1.2')) OR ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Lg0q75gPEsIJmW95zpvSXv", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 198810))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JgjbgBpY0hoIEFVE8qh4ur", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 198907))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NU3v4KBQEuOLRIosin/F20", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 198907))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OADlH2IIki0J/kX29JT70F", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 199507))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BVMONAa6EOYL82jnlClcpW", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200308))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LLewjMhVUFcL3ezVGRRiER", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200508))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N2AlUHI+E5jLf4vrDhSxrZ", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 198907))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BYQBE20u02QIZDKOeo2Hpl", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 198907))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JRitx62rkP7IileJS3f1Ry", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 199507))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Fnss+mY3kwVJuKV1F5UDro", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200308))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Biq3qa5JEl2K7pyTZetszS", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200508))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EnS8C3hC0mzKDioWHuFcHe", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 199507))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MPprOsnEEihIk59/UVap4U", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 199507))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ba2743jdUUgKVJeo53BNIK", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200308))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HJQf8UsE0TyKNNboovUQUP", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200308))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EBTyGj8+kK3KkhlSTHa8uB", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200508))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EZ3WdyLHE2wL2FwRNHX8gJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200508))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "J2rP2r1u0yCJy5ckqWeWKP", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (CASE WHEN (("Group_1"."Fundamento (Código) (group)" IN ('0.4.4.2')) OR ("Group_1"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Data da Distribuicao (BNDPJ) PGR" = 200908))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D2zr4yuYUn/IZyw4F77qLM", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MUNbLQ/d0aoJToLEJA7Fuz", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ok51Oqfg05xJUX8J7Y1JXl", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Fundamento (Código) (group)" = '4')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JtvrUmsHEFDI9slSlx01XV", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:ADI-F x ADI-E (copy):nk",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_4"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GFHGBDuWkXoJRJRm67wnDd", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IN ('1.1')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "N8ZhanY4UKwJdZWJvYQJDC" } } */;
SELECT "Group_3"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp2_import1"
  FROM "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_16_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_15_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IN ('1.1')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D44nwbBG0AmLTaw40eAgHt", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Beneficiados (2)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "MRL7iqOy0PkLPPAo79+ItB" } } */;
SELECT "Group_3"."Beneficiados (agrupados) (cópia 2)" AS "Beneficiados (agrupados) (cópia 2)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp2_import1"
  FROM "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_16_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_17_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IN ('1.1')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MRL7iqOy0PkLPPAo79+ItB", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp2_import1"
  FROM "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_16_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '9')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IN ('1.1')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "D38kS2MJEeaKAvTNgBi2Z0" } } */;
SELECT "Group_3"."Beneficiados (agrupados) (cópia 2)" AS "Beneficiados (agrupados) (cópia 2)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_7_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '9')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IN ('1.1')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HH7KUgfgU1AK5ny9ySufse", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (NOT ("Extract"."Data do Julgamento do mérito (Years)" IS NULL)) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0qMCoyTMEbiJHlqOb6ZxON" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t1"."$temp4_output" IS NULL)) AS "io:Direitos Fundamentais2:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  LEFT JOIN (
  SELECT "Group_3"."Ressaltar DF" AS "$temp2_output",
    1 AS "$temp4_output"
  FROM (
    SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
    FROM "Extract"."Extract" "Extract"
      INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
    WHERE ("Group_2"."Ressaltar DF" = '4.1')
    LIMIT 1
  ) "t0"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" "Group_3" ON ("t0"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
) "t1" ON ("Group_1"."Ressaltar DF" IS NOT DISTINCT FROM "t1"."$temp2_output")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE (((NOT ("Extract"."Data do Julgamento do mérito (Years)" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Julgamento do merito (procedencia)" IS NULL) THEN null::text WHEN ("Extract"."Julgamento do merito (procedencia)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN 'Procedente (Plenário)' ELSE "Extract"."Julgamento do merito (procedencia)" END) = 'Procedente (Plenário)') AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_4"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EvYJIc7D0WsKeTv/F/BEJV", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BJGIznz/E38KlHR2suNchs", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HA1DoVg0EKHIEx/B0c9TyM" } } */;
SELECT "Group_1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_2"."Ato Impugnado (group) 1 (copy)" IS NULL))) AND ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7')))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BcDTvEej0PCKcRgZbh3lr1", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND ("Group_1"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))) AND (NOT ("Group_3"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0Fj27SMlEj+IA7Dl5PExtX", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PNGhJog3EvGKA6beUalMXm" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '6')) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MpMaCtlqEf2JMWTizWFTNn", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_1"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "EBNYo+BZEU0IKkMTOtNsj4" } } */;
SELECT "Group_1"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_3"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FtV21jPFUlYLx204LCKj6S", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_4"."Ato Impugnado (group) 1 (copy)" IS NULL)))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FhQUhv5dkR9IBuAvOtSO3J", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Ato Impugnado (group) 1 (copy)" = '4.1'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "LzWCUIbfkmvKlvcFIEOa+E" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  "Group_2"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Month / Year)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Ato Impugnado (group) 1 (copy)" = '4.1'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PpLi/MSUEcWLHgy4E+ptAs", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  COUNT("Extract"."Ato Impugnado") AS "cnt:Ato Impugnado:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((CASE WHEN (("Extract"."Ato Impugnado" IN ('0', '0.1', '0.1.1.2', '0.1.2', '0.2', '0.2.1', '0.2.1.1', '0.2.1.2', '0.4', '0.4.1.1', '0.5', '0.6', '0.8')) OR ("Extract"."Ato Impugnado" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HaOeKye10LOKfV+byqbtGr", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NryKAAn7khVJB9ddAH61I6", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  "Group_2"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Ato Impugnado") AS "cnt:Ato Impugnado:ok",
  TABLEAU.TO_DATETIME(DATE_TRUNC('YEAR', TABLEAU.NORMALIZE_DATETIME("Extract"."Data da Distribuicao (BNDPJ)")), "Extract"."Data da Distribuicao (BNDPJ)") AS "tyr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_11_Group" "Group_2" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_2"."Data da Distribuicao (BNDPJ) (Years)")
WHERE ((CASE WHEN (("Extract"."Ato Impugnado" IN ('0', '0.1', '0.1.1.2', '0.1.2', '0.2', '0.2.1', '0.2.1.1', '0.2.1.2', '0.4', '0.4.1.1', '0.5', '0.6', '0.8')) OR ("Extract"."Ato Impugnado" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DUGZs4uykFAJd6vu4kOAq4", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Requerente" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "HXBiyroJEydLyu+OuhSOGf" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  COUNT("Extract"."Origem do ato impugnado") AS "cnt:Origem do ato impugnado:ok",
  COUNT("Extract"."Requerente") AS "cnt:Requerente:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (((NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FrRBLjiPEQuLlDsP1Whcf1", "lqctx-batch-query-id": "2" } } */;
SELECT MIN("t0"."cnt:Requerente:qk") AS "lower:cnt:Requerente:qk",
  MAX("t0"."cnt:Requerente:qk") AS "upper:cnt:Requerente:qk"
FROM (
  SELECT COUNT("Extract"."Requerente") AS "cnt:Requerente:qk"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  WHERE ((((CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
  GROUP BY "Extract"."Origem do ato impugnado"
) "t0"
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "CbZRJsg2UH7L2r3kDiy301" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_18_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL)) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HXBiyroJEydLyu+OuhSOGf", "lqctx-batch-query-id": "0" } } */;
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
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (NOT ("Extract"."Origem do ato impugnado" IS NULL))) AND ("Group_1"."Ato Impugnado (group) 1" IN ('4.1', '5.1', '6.1')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "C0P0L72Rk8kLwJcg/AeZfW", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fases dos processos" AS "Fases dos processos",
  "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_19_Group" "Group_1" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_1"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_3"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GTqHOvbJkwmLgMCeR0RNii", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CASE WHEN (("Group_1"."Julgamento do merito (completo) (group)" IN ('aguardando julgamento', 'extinto o process (decisão monocrática)')) OR ("Group_1"."Julgamento do merito (completo) (group)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) >= 1989) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NLwm+eKFEE8L2P642P74kW", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ((CASE WHEN (("Group_1"."Julgamento do merito (completo) (group)" IN ('aguardando julgamento', 'extinto o process (decisão monocrática)')) OR ("Group_1"."Julgamento do merito (completo) (group)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) >= 1988) AND (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito")) AS BIGINT OR NULL) <= 2012)))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LXBniuwK0a/J9hO+XFlq3O", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "TEMP(Calculation_0370514171644139)(1414019937)(0)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "TEMP(Calculation_0370514171644139)(2348628076)(0)",
  COUNT("Extract"."Julgamento do merito (julgados)") AS "TEMP(Calculation_8720514171124667)(2557822323)(0)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Código Requerente") AS "cnt:Código Requerente:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "J4whDmB4ENcJ/1qnv071nI", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Classe" AS "Classe"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IuwnbsWvU5cIYNMP3HWip7", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "DBolFBGkEIUIZOKlOIrT4K", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "FXQX/kPt0XqItiMC+TbAEW" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N/1FZ2g+kphISIYXlwWBuR", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."Classe" AS "Classe",
  "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)
GROUP BY 1,
  2,
  3,
  4
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "HPeMwUhL0tzJpdibXt0iEI" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "none:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
LIMIT 32
/* { "tableau-query-origins": { "query-category": "Unknown", "lqctx-root-activity-id": "F80jkVRV0J/JG12qqbFKsP" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  (NOT ("t0"."$temp2_output" IS NULL)) AS "io:Distribuição séc. xx/xxi:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "none:Data da Distribuicao (BNDPJ) (Years):ok",
    1 AS "$temp2_output"
  FROM "Extract"."Extract" "Extract"
  WHERE ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IN ((DATE '1988-01-01'), (DATE '1989-01-01'), (DATE '1990-01-01'), (DATE '1991-01-01'), (DATE '1992-01-01'), (DATE '1993-01-01'), (DATE '1994-01-01'), (DATE '1995-01-01'), (DATE '1996-01-01'), (DATE '1997-01-01'), (DATE '1998-01-01'), (DATE '1999-01-01'), (DATE '2000-01-01')))
  GROUP BY 1
) "t0" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" = "t0"."none:Data da Distribuicao (BNDPJ) (Years):ok")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Aguardando Julgamento') AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_1"."Resultado da Liminar (group)" IS NULL)))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "F80jkVRV0J/JG12qqbFKsP", "lqctx-batch-query-id": "4" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Resultado da Liminar (group)" = '') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KegnoMNvky2JN08YDhoT9o", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Prejudicada'))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GafXywFm0nkI73R+CPY3p1", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Aguardando Julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Resultado da Liminar (group)" = '') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NUCg+qeOEqDJbuTpPM0qPI", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JP+bP4GqUxOLcliZLPS2yE", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_10_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "FXEGGiMW0DRLKlAJZXr8LU", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_10_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "P3aksgsKUEWLThlVHESB9/" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento (com liminar deferida em parte)') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Deferida'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EoPkDRki0UVK40amrcmHLO", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_20_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0HwuUYN8E99K/cnq1dAF8a", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
    1 AS "$temp3_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_11_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_10_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IN ('aguardando julgamento')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OJyhcrlmUAdKVZgCtsASdW", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_3"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_1" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_1"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
    1 AS "$temp3_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_14_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (("Group_1"."Resultado da Liminar (group)" IN ('Deferida')) OR ("Group_1"."Resultado da Liminar (group)" IS NULL)) THEN TRUE ELSE FALSE END)) AND (CASE WHEN (((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)', 'Prejudicada (Plenário)')) OR ((CASE ("t0"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (completo) (group)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0MX6dInNUytLD3dBdiM8k1", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" "Group_2" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_2"."Resultado da Liminar")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Resultado da Liminar (group)" = 'Indeferida'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FHX5WwcckDpL3beB5CUABl", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_1"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IfNXTSI801HJgkWJg1z2OG" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_21_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MkWxnF4kk5/KK/KWxfGFcP", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_15_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Gxx1aFBJ0tEL0AwGeCsMHT", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ)" AS "Data da Distribuicao (BNDPJ)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_15_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "PWYpbfZ90jyIBk+YCcLG1F" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_22_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_21_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CSvYhnsLkT+IuhQRJPTAMt", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_21_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_1"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FsFiFoA5EgVLWYAJjizhFY", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:Classe:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_15_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (NOT ("Group_2"."Julgamento do merito (completo) (group) 1" IS NULL)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GnILQFDo0kuIVHjNlDxi31", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data da Liminar (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data da Liminar (Years)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Oizl8CMvUeWL3+jSMd0aub", "lqctx-batch-query-id": "3" } } */;
SELECT SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Liminar (Years)")) AS BIGINT OR NULL) AS "yr:Data da Liminar (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data da Liminar (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data da Liminar (Years)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte')))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OQIBPNiX0M2KWrJQEXUE1H", "lqctx-batch-query-id": "4" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data da Liminar (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data da Liminar (Years)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "HwzsdlaL0k+IvePNh6IOUk", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data da Liminar (Years)" AS "Data da Liminar (Years)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Resultado da Liminar" IN ('Deferida', 'Deferida "ad referendum"', 'Deferida em Parte')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "ODH3yY2mEPzLJ3eGSGbXVH" } } */;
SELECT SUM(1) AS "cnt:Classe:ok",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data do Julgamento do mérito (Years)")) AS BIGINT OR NULL) AS "yr:Data do Julgamento do mérito (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Improcedente (Plenário)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "0lMFgtLCUjFLilvM+osxmN", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Liminar (Years)" AS "Data da Liminar (Years)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "IH8ZSi+GkQVJUnZqbcdpqi" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'aguardando julgamento') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K+BXVvPV0IhIOZT4/Wncn0", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)')) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EAu/NdNFkFrIEUAAJa6LnP", "lqctx-batch-query-id": "0" } } */;
SELECT AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_1_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Julgamento do merito (agrupado) (copy)" IN ('aguardando julgamento', 'Prejudicada (Decisão Monocrática)')) THEN FALSE ELSE TRUE END))
HAVING (COUNT(1) > 0)
/* { "tableau-query-origins": { "query-category": "DataInterpreter", "lqctx-root-activity-id": "Lxq/dBmakdzI5hfxD6E++4" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
WHERE ((CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)', 'Concluso para acórdão', 'extinto o process (decisão monocrática)', 'Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D5HyygwM0wpI8NTG+udbC8", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (("Extract"."Julgamento do merito (completo)" IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'aguardando julgamento (com liminar deferida)', 'aguardando julgamento (com liminar indeferida)', 'aguardando julgamento (com liminar prejudicada)', 'Concluso para acórdão', 'extinto o process (decisão monocrática)', 'Processo findo', 'REAUTUADO')) OR ("Extract"."Julgamento do merito (completo)" IS NULL)) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "G8aG+f/tkKQIySK+Ck+k6i", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "H6riWg84U8eJV8potsc34U", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Negado Seguimento (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P8RJ6bI1E96JhEY92PFr0a", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Indeferida a inicial (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ba+Y5s2UEeUIQlFoVjcZ5S", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Indeferida a inicial (Decisão Monocrática)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "I2I2sRI70SzI4Akvqt2jRo" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OAfpBi4tEhKLefA98YZnqV", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "IiFVsiqLEg2KwGk4fmC0Lq", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM "Extract"."Extract" "Extract"
GROUP BY 1
ORDER BY "Data do Julgamento do mérito (Years)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "CategoricalDomain", "lqctx-root-activity-id": "BUxFtPHfEr/Iv29Qq49K9K" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "DZv2JoNZ04iJoVbtwM0WeE" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)', 'Prejudicada (Decisão Monocrática)', 'Prejudicada (Plenário)', 'Processo findo')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EzsBZlBZUftJ+QWawbQh8K", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Julgamento mérito:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" = "Group_1"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo) (group) 1" AS "Julgamento do merito (completo) (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
  WHERE ("Group_2"."Julgamento do merito (completo) (group) 1" IN ('Improcedente (Plenário)', 'Procedente (Plenário)'))
  GROUP BY 1
) "t0" ON ("Group_1"."Julgamento do merito (completo) (group) 1" = "t0"."Julgamento do merito (completo) (group) 1")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)', 'Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Kg71WCuWU4mJ78v5wmKQo/", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (procedencia)") AS "cnt:Julgamento do merito (procedencia):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (julgados)" IN ('Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Não Conhecida (Plenário)', 'Prejudicada (Plenário)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Monocrática/Colegiada:nk"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" IN ('Extinto o Processo (Decisão Monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)', 'Indeferida a inicial (Decisão Monocrática)', 'Não Conhecida (Decisão Monocrática)', 'Não Conhecida (Plenário)', 'Negado Seguimento (Decisão Monocrática)', 'Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KotDf0jN0tsIfjd6yrchH5", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:Julgamento do merito (completo):ok",
  COUNT("Extract"."Julgamento do merito (julgados)") AS "cnt:Julgamento do merito (julgados):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (completo)" = 'Improcedente (Plenário)') AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MPcNzvf/kPpJYHT9CgLHq3", "lqctx-batch-query-id": "2" } } */;
SELECT CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "0D21yZN4ERaJJv3hUm+DAW", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_10_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "EMP6NPlyU39IlqC873FfqR", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE (((CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "L2rl7/wZ0Q3KuarNaVWZY6", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "NO6XN3likTILdarM9AqsTU" } } */;
SELECT CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "BebTdV/XkmPL8cDQlOiN/Q" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
  CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) AS "yr:Data da Distribuicao (BNDPJ) (Years):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "IgogflyTk4NI6eFLS8310B" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_1_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N/XZFhhiUQcKci3j8nfpTa", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_16_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JJaxvRRaE+JLEXxDUpgmr1", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk",
  AVG("Extract"."Duração do processo") AS "med:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_3_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (completo) (group)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OYXJTSOAkyKKTMmlFd2/d2", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_3"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF (cópia)" ELSE NULL END) AS "Ressaltar DF (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF (cópia)" AS "Ressaltar DF (cópia)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_5_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_4_Group" "Group_3" ON ("Extract"."Data da Distribuicao (BNDPJ) (Years)" IS NOT DISTINCT FROM "Group_3"."Data da Distribuicao (BNDPJ) (Years)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LMVh6lg6EwAL+UgHAvIkmW", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Set 1:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_3_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Julgamento do merito (completo) (group)" IN ('Procedente (Plenário)', 'extinto o process (decisão monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)')))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JcMWpEQZksrKNE+c5ZQy70", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_1"."Julgamento do merito (completo) (group)" AS "Julgamento do merito (completo) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (CASE WHEN ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) THEN TRUE ELSE FALSE END) AS "io:Set 1:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_16_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Julgamento do merito (completo) (group)" IN ('Procedente (Plenário)', 'extinto o process (decisão monocrática)', 'Extinto o processo (Plenário)', 'Improcedente (Plenário)'))) AND ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7')))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P57Y56PDUdKIQyghImfcoH", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OiS8fDyHE7tJs1WCcj1T1N", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (separando os atos estaduais)" AS "Ato Impugnado (separando os atos estaduais)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_6_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_3_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END)) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Julgamento do merito (completo) (group)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NYIPmLF9khMLE7amm0YNA5", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Julgamento do merito (completo)") AS "cnt:Julgamento do merito (completo):ok",
  (NOT ("t0"."$temp3_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp3_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  WHERE ("Group_2"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_1"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_3" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_3"."Julgamento do merito (completo)")
WHERE ((((CASE WHEN (CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ) (Years)")) AS BIGINT OR NULL) = 2013) THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Julgamento do merito (agrupado) (copy)" = 'Procedente (Plenário)'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "FKnQ0TxAEJNJG6Y1Z/ILZf", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_17_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ((CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END) AND (CASE WHEN (("Group_1"."Ato Impugnado (group) 1" = '4.1') AND ("Group_2"."Fundamento (Código) (group)" IS NULL)) THEN FALSE ELSE TRUE END)))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ESxaEjYeE8YIN9cB/0y6Fw", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Classe" AS "Classe"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "MECvwhI/0XpIuVl6F03tG1", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Julgamento do merito (julgados)" AS "Julgamento do merito (julgados)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "PU4jDRaNEGzI1m34MPzPiC", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DyRcuZ46kKeK/v0Wm/27m9", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Classe" AS "Classe",
  "Extract"."Julgamento do merito (julgados)" AS "Julgamento do merito (julgados)"
FROM "Extract"."Extract" "Extract"
WHERE (("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "Owf8EQvbk1nLjN5qahJpQH" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "B7211QnLUItJmWq/7NLETB", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NHtDoO5xkyNK5Bgl348jvu", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Group_2"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_13_Group" "Group_2" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_2"."Requerente")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_3"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OX9nmjwuUHlKSgKC3AslXg", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NzWXRpJWkYqKaoIBAy8xPf", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IRQjdmx1Ei0LSELXvJi854", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NWi3ysCmE+VJL6Mb+QdAIH", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '1.1')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Ppy710SHULsJSVQ7jr+Ha1", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Origem do ato impugnado" AS "Origem do ato impugnado",
  SUM(1) AS "cnt:Data da Distribuicao (BNDPJ):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '1.1'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NTJr+//C0JKI8ZYE0Frno4", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "K7HtZeZWUv/KrM2XDNSbSw", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_18_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NwVu3650EQuICrz1FAy6pL", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '2'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NC35Ex7BUO+LW1DNPUXs1h", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '2')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "H7ss6g1iU1zJ7EBfTXySn6" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '2'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "Prp5yOyBUsMItPp/srwfq6" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_18_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '2')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OPou5zq4klVKbeaFAO3rfN", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '2')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OEHwx+lQ0NXJj1gGYnKMq0", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_18_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GBB45hUtUDcJHsUHyYRCvk", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  (CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp2_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "OFx8UbCeEZGKfyMKbgcdpb", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '3'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "LvIS2vD2kOAJNBVhQ0gDO2", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '3'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "0oqzX7EhUTEKOp3/o2wY7n" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '3')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "F/h0/cEcECtKjTS2vG5Eqv" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '3')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MkldA0anU8wKBTII4ICbsR", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  3,
  6
HAVING (MIN((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END)) = '3')
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "ON0y1KBb0G/Le0q27C1nM+", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp1_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JEphFcP3EAHJR5/8C5TsQI", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Ressaltar DF" AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "DcQ396Pz0auJEdyA0I0QY7" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JVO8n5C9E+9I4ZLLdS697A", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Group_1"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_14_Group" "Group_1"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "Ns+zB4fYkg8JlDxCOsS/kC", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  (CASE ("t1"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t2"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_19_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp3_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t2" ON ("Group_4"."Ato Impugnado (group) 1" = "t2"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HjI4+jCjUj7LZBHpxiRVxI", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_3"."Ressaltar DF" AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_19_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "J+WlMETjkZbKmAPPfCIM5l" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "Gk6iXjLy0HOJemOmn1vYWn" } } */;
SELECT "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_1" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_1"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "CylpW8dVU+OIpd9nP4kk+G" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" "Group_2" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "Group_2"."Julgamento do merito (completo)")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "HvxiJH8pkjbKfLhC9PpTl5" } } */;
SELECT "Group_4"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  (CASE ("t1"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) AS "Ressaltar DF",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t2"."$temp8_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_19_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp3_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_20_Group" "Group_4" ON ("Extract"."Data do Julgamento do mérito (Years)" = "Group_4"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp8_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t2" ON ("Group_5"."Ato Impugnado (group) 1" = "t2"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "BAKKAcAPke1LQjJCUDqsXW", "lqctx-batch-query-id": "2" } } */;
SELECT "Group_2"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  LEFT JOIN (
  SELECT "Group_1"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_1"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_10_Group" "Group_1"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'extinto o process (decisão monocrática)', 'Improcedente (Plenário)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "JeYO4wJMUKgKNP7+NjT7xG", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_4"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "Group_5"."Resultado da Liminar (group)" AS "Resultado da Liminar (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t3"."$temp9_output" IS NULL)) AS "io:Direitos Fundamentais2:nk",
  (NOT ("t4"."$temp13_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)",
    "Group_2"."Julgamento do merito (agrupado) (copy)" AS "Julgamento do merito (agrupado) (copy)",
    1 AS "$temp2_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_14_Group" "Group_2"
) "t0" ON ("Extract"."Julgamento do merito (completo)" IS NOT DISTINCT FROM "t0"."Julgamento do merito (completo)")
  LEFT JOIN (
  SELECT "Group_3"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_3"."Ressaltar DF" AS "Ressaltar DF",
    1 AS "$temp3_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_17_Group" "Group_3"
) "t1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t1"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_16_Group" "Group_4" ON ("Extract"."Data do Julgamento do mérito (Years)" = "Group_4"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" "Group_5" ON ("Extract"."Resultado da Liminar" IS NOT DISTINCT FROM "Group_5"."Resultado da Liminar")
  LEFT JOIN (
  SELECT "Group_7"."Ressaltar DF" AS "$temp7_output",
    1 AS "$temp9_output"
  FROM (
    SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
    FROM "Extract"."Extract" "Extract"
      INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_15_Group" "Group_6" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_6"."Fundamento (Código)")
    WHERE ("Group_6"."Ressaltar DF" = '4.1')
    LIMIT 1
  ) "t2"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_15_Group" "Group_7" ON ("t2"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_7"."Fundamento (Código)")
) "t3" ON ((CASE ("t1"."$temp3_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t1"."Ressaltar DF" ELSE NULL END) IS NOT DISTINCT FROM "t3"."$temp7_output")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_8" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_8"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_9"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp13_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_9" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_9"."Ato Impugnado")
  WHERE ("Group_9"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t4" ON ("Group_8"."Ato Impugnado (group) 1" = "t4"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Data do Julgamento do mérito (Years)" >= (DATE '1988-01-01')) AND ("Extract"."Data do Julgamento do mérito (Years)" <= (DATE '2013-01-01')) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN (((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IN ('aguardando julgamento', 'aguardando julgamento (com liminar deferida em parte)', 'extinto o process (decisão monocrática)', 'Improcedente (Plenário)', 'Prejudicada (Decisão Monocrática)')) OR ((CASE ("t0"."$temp2_import1" IS NULL) WHEN TRUE THEN "Extract"."Julgamento do merito (completo)" WHEN FALSE THEN "t0"."Julgamento do merito (agrupado) (copy)" ELSE NULL END) IS NULL)) THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  4,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PyQcROrXkoIJoKrz+EZzsZ", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "GPqg0wbFkNNKoPMoY2kOLb", "lqctx-batch-query-id": "1" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_18_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "PpZ6C6Ea0LDLEdGnKGXVDn", "lqctx-batch-query-id": "2" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((((CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "N5Cgsr0k01qIbVzoE9wlNz", "lqctx-batch-query-id": "0" } } */;
SELECT (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "JaY3auZkUIFJS6HwlL2SaP" } } */;
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '4')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "ISDg7Xn0UJ+J1SaIzQqzkx" } } */;
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "GRVOK8TFUdJI3WQl0ZjT/7" } } */;
SELECT "Group_3"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_11_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "EmWw5sdhkHwLAaMOyMOuQJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1 (copy)" AS "Ato Impugnado (group) 1 (copy)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_11_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "FynI+B52EQsLj5C6kubhb1" } } */;
SELECT "Group_3"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) AS "Fundamento (Código) (group)",
  "Group_4"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_12_Group" "Group_3" ON ("Extract"."Data do Julgamento do mérito (Years)" IS NOT DISTINCT FROM "Group_3"."Data do Julgamento do mérito (Years)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_5"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  3,
  6
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "JOTgRbVqUYrJJjCf4voKDQ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Requerente (group)" AS "Requerente (group)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_1" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_1"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "FELJ+5cRkuYLh4xy/P3wOx" } } */;
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  "Group_3"."Requerente (group)" AS "Requerente (group)",
  AVG(CAST("Extract"."Duração do processo" AS DOUBLE PRECISION OR NULL)) AS "avg:Duração do processo:ok",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Duração do processo") AS "cnt:Duração do processo:ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk",
  SUM("Extract"."Duração do processo") AS "sum:Duração do processo:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" "Group_3" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_3"."Requerente")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  7
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "P9/ZY9B+kCxLC0UM1qJWuC", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND ("Group_1"."Fundamento (Código) (group)" = '4')) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "HeGCsPLj0yBJnD9cI0H+G/", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_13_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "D1vS6gKm0RLKHQyQz2cSEk", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Group_2"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_14_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_13_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_4" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_4"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_3"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_4"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "CDD1O/jlUKGIcGJg4U/Azm", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Fundamento (Código) (group) (cópia)" AS "Fundamento (Código) (group) (cópia)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_13_Group" "Group_1" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_1"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Pqm3sXlikBnJqSsEgQfaRJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Group_4"."Requerente (group)" AS "Requerente (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp7_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_18_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_13_Group" "Group_4" ON ("Extract"."Requerente" IS NOT DISTINCT FROM "Group_4"."Requerente")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_6"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp7_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_6" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_6"."Ato Impugnado")
  WHERE ("Group_6"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_5"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KLF8EKwRkU7IXFxdijdZW6", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_14_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Jah1oI+h0zvItgumuPUTFS", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_18_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_2"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "Nk/zN3b40eHJLzCyviP353", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Beneficiados (agrupados) (cópia 2)" AS "Beneficiados (agrupados) (cópia 2)",
  (CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) AS "Parte (requerente#) (group)",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_19_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((((CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  4
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "KRxIazcSEziKB1hOnn4oKv", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_3"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp6_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Fundamento (Código)" AS "Fundamento (Código)",
    "Group_2"."Fundamento (Código) (group)" AS "Fundamento (Código) (group)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" "Group_2"
) "t0" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "t0"."Fundamento (Código)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_14_Group" "Group_3" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_3"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_5"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp6_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_5" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_5"."Ato Impugnado")
  WHERE ("Group_5"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_4"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ((CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Fundamento (Código)" WHEN FALSE THEN "t0"."Fundamento (Código) (group)" ELSE NULL END) = '4'))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "NEo0aMrpUwiIpNKUcib5xo", "lqctx-batch-query-id": "0" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_2" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_2"."Fundamento (Código)")
WHERE (((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND ("Group_2"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "GWXcGpXX0nYI2/J67+r9ZO" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_14_Group" "Group_2" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_2"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" "Group_3" ON ("Extract"."Fundamento (Código)" IS NOT DISTINCT FROM "Group_3"."Fundamento (Código)")
WHERE ((((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_2"."Beneficiados (group) (copy)" IN ('Grupo específico: Empresas (devedoras do fisco)', 'Interesse corporativo: Advogados', 'Interesse corporativo: Partidos')) THEN FALSE ELSE TRUE END)) AND ("Group_3"."Fundamento (Código) (group)" = '4'))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "D5VcLSXX0WyJN5JQgt4fhE" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
WHERE ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))
GROUP BY 1
ORDER BY "Julgamento do merito (completo)" ASC NULLS FIRST
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "E4H1R4vFUlALDGJRSaQuUJ", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "QuickFilter", "lqctx-root-activity-id": "IpwSBnz/EQPIF288CrxW64", "lqctx-batch-query-id": "1" } } */;
SELECT "Group_1"."Beneficiados (group) (copy)" AS "Beneficiados (group) (copy)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t0"."$temp4_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_21_Group" "Group_1" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "Group_1"."Beneficiados (2)")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_2" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_2"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_3"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp4_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  WHERE ("Group_3"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t0" ON ("Group_2"."Ato Impugnado (group) 1" = "t0"."Ato Impugnado (group) 1")
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_4"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "DuLAaOf/E7dJgiUdvbIApR", "lqctx-batch-query-id": "2" } } */;
SELECT "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Sort", "lqctx-root-activity-id": "0IFi5BYW0BnI3OxXtHEPL5" } } */;
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE ((("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND ("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END)) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "Domain", "lqctx-root-activity-id": "I/w1fZiR0QXKoO88kDSIn3", "lqctx-batch-query-id": "0" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "IduDjaHykGKIo+MAx/W2Nt" } } */;
SELECT "Group_1"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
WHERE (("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2
/* { "tableau-query-origins": { "query-category": "AccelerationView", "lqctx-root-activity-id": "EAVFUXNy0S4Lgbj/kEv9sV" } } */;
SELECT (CASE ("t0"."$temp1_import1" IS NULL) WHEN TRUE THEN "Extract"."Beneficiados (2)" WHEN FALSE THEN "t0"."Interesses (hiperagrupados) (cópia) (cópia)" ELSE NULL END) AS "Interesses (hiperagrupados) (cópia) (cópia)",
  "Extract"."Relator em 2013" AS "Relator em 2013",
  SUM(1) AS "cnt:ADI (classe) (copy):ok",
  COUNT("Extract"."Numero") AS "cnt:Numero:ok",
  (NOT ("t1"."$temp5_output" IS NULL)) AS "io:Federal/Estadual:nk"
FROM "Extract"."Extract" "Extract"
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_1" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_1"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_2"."Beneficiados (2)" AS "Beneficiados (2)",
    "Group_2"."Interesses (hiperagrupados) (cópia) (cópia)" AS "Interesses (hiperagrupados) (cópia) (cópia)",
    1 AS "$temp1_import1"
  FROM "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_15_Group" "Group_2"
) "t0" ON ("Extract"."Beneficiados (2)" IS NOT DISTINCT FROM "t0"."Beneficiados (2)")
  INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_3" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_3"."Ato Impugnado")
  LEFT JOIN (
  SELECT "Group_4"."Ato Impugnado (group) 1" AS "Ato Impugnado (group) 1",
    1 AS "$temp5_output"
  FROM "Extract"."Extract" "Extract"
    INNER JOIN "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" "Group_4" ON ("Extract"."Ato Impugnado" IS NOT DISTINCT FROM "Group_4"."Ato Impugnado")
  WHERE ("Group_4"."Ato Impugnado (group) 1" IN ('1.1.1', '1.1.2', '6.3', '7'))
  GROUP BY 1
) "t1" ON ("Group_3"."Ato Impugnado (group) 1" = "t1"."Ato Impugnado (group) 1")
WHERE ((("Extract"."Classe" IN ('ADI', 'ADI (Med. Liminar)', 'falta', 'NE')) AND ("Extract"."Data da Distribuicao (BNDPJ)" >= (DATE '1989-02-28')) AND ("Extract"."Data da Distribuicao (BNDPJ)" <= (DATE '2012-12-31')) AND ("Extract"."Julgamento do merito (julgados)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)')) AND (CASE WHEN ("Extract"."Numero" = '588'::double precision) THEN FALSE ELSE TRUE END) AND (CASE WHEN ((CASE WHEN ("Extract"."Código Requerente" IN ('10', '10.0')) THEN '10' WHEN ("Extract"."Código Requerente" IN ('9.1', '9.1.0', '9.2', '9.2.0')) THEN '9.1' ELSE "Extract"."Código Requerente" END) = '10') THEN FALSE ELSE TRUE END) AND ("Extract"."Julgamento do merito (completo)" IN ('Procedente (Plenário)', 'Procedente em Parte (Plenário)'))) AND (CASE WHEN ("Group_1"."Ato Impugnado (group) 1" = '0') THEN FALSE ELSE TRUE END))
GROUP BY 1,
  2,
  5
/* { "tableau-query-origins": { "query-category": "Data", "lqctx-root-activity-id": "MGDDkARiko4JoTfhVMfxl0", "lqctx-batch-query-id": "2" } } */;
