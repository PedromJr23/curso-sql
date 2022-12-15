-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido
  
  Where descSituacao = 'delivered'
  
Limit
  100
  
  --Leia-se: Selecione todas as colunas da tabela silver_olist =, onde o pedido esteja com status "delivered"

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
  
  Where descSituacao = 'canceled'
  
Limit
  100
  
  --Leia-se: Selecione todas as colunas da tabela silver_olist =, onde o pedido esteja com status "canceled"

-- COMMAND ----------

SELECT  *
FROM
  silver_olist.pedido
  
  Where descSituacao = 'shipped'
  
Limit
  100
  
  --Leia-se: Selecione todas as colunas da tabela silver_olist =, onde o pedido esteja com status "shipped"

-- COMMAND ----------

SELECT  *
FROM silver_olist.pedido
  
Where descSituacao = 'shipped'
And year (dtPedido) ='2018'  

--leia-se: selecione todas as colunas da tabela silver, filtrando pedidos enviados de 2018 

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
Where
  (
    descSituacao = 'shipped'
    OR descSituacao = 'canceled'
  )
  And year (dtPedido) = '2018' --leia-se: selecione todas as colunas da tabela silver, filtrando pedidos enviados de 2018 ou cancelados

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
Where descSituacao in ('shipped','canceled')
  
  And year (dtPedido) = '2018' --leia-se: selecione todas as colunas da tabela silver, filtrando pedidos (enviados  ou cancelados de 2018)

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega,dtAprovado)


FROM silver_olist.pedido

Where descSituacao in ('shipped','canceled')
  
  And year (dtPedido) = '2018'
  AND datediff (dtEstimativaEntrega, dtAprovado) > 30
  
  
  
  --leia-se: selecione todas as colunas da tabela silver, filtrando pedidos (enviados  ou cancelados de 2018)

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega,dtAprovado)


FROM silver_olist.pedido

Where descSituacao in ('shipped','canceled')
  
  And year (dtPedido) = '2018'
  AND datediff (dtEstimativaEntrega, dtAprovado) > 30
  
  
  
  --leia-se: selecione todas as colunas da tabela silver, filtrando pedidos (enviados  ou cancelados de 2018)
