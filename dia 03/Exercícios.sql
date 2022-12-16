-- Databricks notebook source
-- DBTITLE 1,Exercício left join with group by
---- QUAL A CATEGORIA TEM MAIS  PRODUTOS VENDIDOS  

SELECT t2.descCategoria,
count(*)

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

group by T2.descCategoria

order by count (*) DESC

limit 5


-- COMMAND ----------

-- categoria com produtos mais caros em média


SELECT T2.descCategoria, 
       avg(T1.vlPreco),
       max(T1.vlPreco)

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

group by T2.descCategoria
order by max (T1.vlPreco)


-- COMMAND ----------

-- DBTITLE 1,Valor de frete
-- Os clientes de qual estado que pagam mais frete 

select
       T3.descUF,
       avg(T1.vlFrete)

from silver_olist.item_pedido as T1

left join silver_olist.pedido as T2
on T1.idPedido = T2.idPedido

left join silver_olist.cliente as T3
on T2.idCliente = T3.idCliente 

group by T3.descUF

having avg(T1.vlFrete) > 40



