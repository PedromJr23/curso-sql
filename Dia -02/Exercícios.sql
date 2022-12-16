-- Databricks notebook source
-- DBTITLE 1,Exercício 6
-- LISTA DE PEDIDOS FEITOS EM DEZEMBRO DE 2017 E ENTREGUES COM ATRASO 

SELECT *
FROM silver_olist.pedido    
where year(dtPedido) = 2017
and MONTH (dtPedido) = 12
and descSituacao = 'delivered'
and date (dtEntregue) > date (dtEstimativaEntrega)


-- COMMAND ----------

-- DBTITLE 1,Exercício 8
--lista de pedidos com 2 ou mais parcelas < que R$ 20,00

SELECT *, 
round (vlPagamento / nrPacelas,2) AS vlParcelas

from silver_olist.pagamento_pedido
where nrPacelas <= 2
and vlPagamento /nrPacelas < 20

-- COMMAND ----------

-- CASE 2 SELECIONE OS PEDIDOS  E DEFINA OS GRUPOS EM UMA NOVA COLUNA
-- para frete < a 10% 
-- para frete entre 10 % e 25 %
-- para frete entre 25% e 50 %
--para frete > 50% 

SELECT *, 

vlPreco + vlFrete AS vlTotal, 
vlFrete / (vlPreco + vlFrete) AS pctFrete,

CASE
WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 then '10%' A '25%'
WHEN  vlFrete / (vlPreco + vlFrete) <= 0.5 then '25%' A '50%%'
ELSE '+50%'
END AS descFretePCT

FROM oliver_olist.item pedido

-- COMMAND ----------

-- MAGIC %pyhton
-- MAGIC data = {
-- MAGIC 
-- MAGIC {"nome": "Pedro": "idade": 34},
-- MAGIC {"nome": "Icaro": "idade": 14},
-- MAGIC {"nome": "Fabricia": "idade": 37},
-- MAGIC {"nome": "Laura": "idade": 08},
-- MAGIC {"nome": "Elloa": "idade": 04},
-- MAGIC 
-- MAGIC IMPORT pandas as pd
-- MAGIC 
-- MAGIC 
-- MAGIC }
