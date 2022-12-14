-- Databricks notebook source
SELECT * FROM silver_olist.pedido

leia-se: tudo da tabela 

-- COMMAND ----------

SELECT idPedido, 
    

FROM silver_olist.pedido

--Leia-se: selecione a coluna da tabela silver_olist 


-- COMMAND ----------

SELECT idPedido,
      descSituacao
    
FROM silver_olist.pedido

--Leia-se: selecione a coluna da tabela silver_olist 

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
Limit
  5 --Leia-se: selecione a coluna da tabela silver_olist

-- COMMAND ----------

SELECT *, 
         DATEDIFF(dtEstimativaEntrega,dtEntregue) AS qTDiasPromessaEntrega

FROM silver_olist.pedido

Limit 200

