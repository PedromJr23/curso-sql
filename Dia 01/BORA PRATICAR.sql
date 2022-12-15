-- Databricks notebook source
-- DBTITLE 1,Exercício 01 
SELECT * 
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

limit 200

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
SELECT * 

FROM silver_olist.cliente
where descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
SELECT * 

FROM silver_olist.vendedor
WHERE descCidade= 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 04
SELECT * 

FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes')  
AND vlAlturaCm > 5

