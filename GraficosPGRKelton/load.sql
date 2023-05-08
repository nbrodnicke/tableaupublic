COPY "Extract"."Extract" FROM 'ADI Completa (Tabela completa a ser revisada.xlsx).csv' (format csv, delimiter '|', null '');
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_1_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_2_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_3_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_4_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_5_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_6_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_7_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes (agrupados por porte) (grupo)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_1_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes divididos por porte (grupo) (cópia 2)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_2_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes (agrupados por porte) (grupo)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_3_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes divididos por porte /ADis ajuizadas (grupo) (cópia)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_4_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_5_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_6_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_1_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_8_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_9_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte (cópia)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_2_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte (cópia)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_3_2106F926-20B7-4BBB-B099-2448F325CED3_3_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_7_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte (cópia)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_1_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_2_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_3_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes ADI-F por porte (cópia)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_4_Group" AS
SELECT "Extract"."Requerente" AS "Requerentes (agrupados por porte) (grupo)",
  "Extract"."Requerente" AS "Requerentes (individualizados) (cópia)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_8_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_9_Group" AS
SELECT "Extract"."Código Requerente" AS "Requerentes (Agrupados) (cópia) (copy)",
  "Extract"."Código Requerente" AS "Código Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_10_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_11_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) PGR",
  "Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) (Month / Year)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_12_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_13_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_14_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_15_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group) (cópia)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_5_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_16_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_6_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_17_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (agrupados) (cópia 2)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_7_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (agrupados) (cópia 2)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_8_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_9_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) PGR",
  "Extract"."Data da Distribuicao (BNDPJ) (Month / Year)" AS "Data da Distribuicao (BNDPJ) (Month / Year)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_10_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_11_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_18_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_19_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Fases dos processos",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_12_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_13_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_10_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_20_Group" AS
SELECT "Extract"."Resultado da Liminar" AS "Resultado da Liminar (group)",
  "Extract"."Resultado da Liminar" AS "Resultado da Liminar"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_11_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_14_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_21_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_15_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group) 1",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_2_A89E9A8A-57AF-43DC-8170-81D23E0EFC9F_22_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_1_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_2_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_16_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_3_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo) (group)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_4_Group" AS
SELECT "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years) (group)",
  "Extract"."Data da Distribuicao (BNDPJ) (Years)" AS "Data da Distribuicao (BNDPJ) (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_5_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF (cópia)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_6_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (separando os atos estaduais)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_17_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_12_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_13_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_7_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_18_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_8_Group" AS
SELECT "Extract"."Requerente" AS "Requerente (group)",
  "Extract"."Requerente" AS "Requerente"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_9_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_14_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_19_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_20_Group" AS
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_10_Group" AS
SELECT "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (agrupado) (copy)",
  "Extract"."Julgamento do merito (completo)" AS "Julgamento do merito (completo)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_15_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_16_Group" AS
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_17_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Ressaltar DF",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_11_Group" AS
SELECT "Extract"."Ato Impugnado" AS "Ato Impugnado (group) 1 (copy)",
  "Extract"."Ato Impugnado" AS "Ato Impugnado"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_12_Group" AS
SELECT "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years) (grupo) 1",
  "Extract"."Data do Julgamento do mérito (Years)" AS "Data do Julgamento do mérito (Years)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_13_Group" AS
SELECT "Extract"."Fundamento (Código)" AS "Fundamento (Código) (group) (cópia)",
  "Extract"."Fundamento (Código)" AS "Fundamento (Código)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_14_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (group) (copy)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_18_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (group) (copy)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_1_A49495FE-887D-4B66-B8E1-D94522ABB46D_19_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (agrupados) (cópia 2)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_4_60418363-BE25-4784-BAB9-D39CFF344A17_21_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Beneficiados (group) (copy)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
CREATE  TABLE "#Tableau_6_DA53859B-399C-4950-BD05-AB9ABEC17F17_15_Group" AS
SELECT "Extract"."Beneficiados (2)" AS "Interesses (hiperagrupados) (cópia) (cópia)",
  "Extract"."Beneficiados (2)" AS "Beneficiados (2)"
FROM "Extract"."Extract" "Extract"
LIMIT 0;
