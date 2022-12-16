-- Databricks notebook source
-- 

SELECT descUF,
COUNT (idVendedor) AS qtdVendedorUF

FROM silver_olist.VENDEDOR

WHERE descUF IN ('SP', 'MG','RJ','ES')

GROUP BY descUF

HAVING COUNT(idVendedor) >=100

ORDER BY qtdVendedorUF desc


