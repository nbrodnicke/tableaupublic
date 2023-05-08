COPY "Extract"."Extract" FROM 'excel_41160_877450925924.csv' (format csv, delimiter '|', null '');
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_1_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_2_Group" AS
SELECT "t1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "t1"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
    "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_3_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_4_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_5_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_6_Group" AS
SELECT "t1"."Data do Julgamento do mérito (Years) (grupo)" AS "Data do Julgamento do mérito (Years) (grupo)",
  "t1"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years) (grupo)",
    "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_7_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_8_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes (individuais divididos por grupos) (copy)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_9_Group" AS
SELECT "Extract"."Requerente" AS "Entidades Corporativas - Condensado (copy)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_10_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_1_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_2_Group" AS
SELECT "t1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "t1"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
    "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_3_Group" AS
SELECT "t1"."Data da Distribuicao (BNDPJ) PGR" AS "Data da Distribuicao (BNDPJ) PGR",
  "t1"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) (Month / Year)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Month / Year)",
    "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) PGR"
  FROM (
    SELECT ((CAST(TRUNC(EXTRACT(YEAR FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL) * 100) + CAST(TRUNC(EXTRACT(MONTH FROM "Extract"."Data da Distribuicao (BNDPJ)")) AS BIGINT OR NULL)) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_4_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_5_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes (individuais divididos por grupos) (copy 2)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_6_Group" AS
SELECT "Extract"."Requerente" AS "Partidos (copy)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_7_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_8_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_1_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_2_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_3_Group" AS
SELECT "t1"."Fases dos processos" AS "Fases dos processos",
  "t1"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years)",
    "t0"."$temp0_cse" AS "Fases dos processos"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_5_DF9D8F30-31F0-4D0E-AB8C-4697E1FA367E_1_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_11_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_4_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_5_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_9_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_10_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_12_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_87F2EF7E-FCB5-40A2-91ED-1EAE5B7E6364_11_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_6_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_1_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_2_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_3_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_13_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_4_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_5_Group" AS
SELECT "t1"."Data da Distribuicao (BNDPJ) (Years) (group)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "t1"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
    "t0"."$temp0_cse" AS "Data da Distribuicao (BNDPJ) (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data da Distribuicao (BNDPJ)") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_6_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF (cópia)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_7_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_8_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_14_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_15_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_7_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_8_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_9_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_10_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_16_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_17_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_18_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_11_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_12_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_13_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_19_Group" AS
SELECT "t1"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "t1"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years) (grupo) 1",
    "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_9_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_10_Group" AS
SELECT "t1"."Data do Julgamento do mérito (Years) (grupo) 1" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "t1"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM (
  SELECT "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years) (grupo) 1",
    "t0"."$temp0_cse" AS "Data do Julgamento do mérito (Years)"
  FROM (
    SELECT CAST(DATE_TRUNC('YEAR', "Extract"."Data do Julgamento do mérito") AS DATE OR NULL) AS "$temp0_cse"
    FROM "Extract"."Extract" "Extract"
  ) "t0"
) "t1"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_11_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_12_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_13_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_14_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_15_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group) (cópia)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_F7E47D86-957B-44B6-8723-371A2049C966_16_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (group) (copy)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_14_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (group) (copy)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_69D531B1-F672-4A8D-BA00-C8289C7EB494_15_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (agrupados) (cópia 2)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_12E68D96-68D8-4C93-BA0B-8BCF360BF3D9_20_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Interesses (hiperagrupados) (cópia) (cópia)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
