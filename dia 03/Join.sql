-- Databricks notebook source
SELECT T1.*,
T2.descUF

FROM silver_olist.pedido AS T1

Left join silver_olist.cliente as T2
ON  T1.idcliente = T2.idcliente 

-- COMMAND ----------

SELECT T1.*,
T2.descUF

FROM silver_olist.pedido AS T1

Left join silver_olist.cliente as T2
ON  T1.idcliente = T2.idcliente 
