-- Databricks notebook source
SELECT *,

         CASE WHEN descUF = 'SP' then 'paulista'
         WHEN descUF = 'RJ' then 'fluminense'
         WHEN descUF = 'PR' then 'paranaense'
         ELSE 'outros'
         END  AS  descNacionalidade, 
         
         
         CASE 
         WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
         ELSE 'Não tem são no nome'
         END AS descCidadeSao
         
                
FROM silver_olist.cliente
limit 200



-- COMMAND ----------


SELECT *, 

CASE WHEN descUF in ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste' END AS descRegiao FROM silver_olist.vendedor


