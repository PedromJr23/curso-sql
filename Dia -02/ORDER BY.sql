-- Databricks notebook source
select 
descUF,
count(DISTINCT idClienteUnico)  AS qtClienteEstado

from silver_olist.cliente

group by descUF
order by descUF

-- COMMAND ----------


---Primeia forma 
select 
descUF,
count(DISTINCT idClienteUnico)  AS qtClienteEstado

from silver_olist.cliente

group by descUF
order by 2

-- COMMAND ----------

---2º  forma 
select 
descUF,
count(DISTINCT idClienteUnico)  AS qtClienteEstado

from silver_olist.cliente

group by descUF
order by qtClienteEstado

-- COMMAND ----------

---3º  forma 
select 
descUF,
count(DISTINCT idClienteUnico)  AS qtClienteEstado

from silver_olist.cliente

group by descUF
order by count(DISTINCT idClienteUnico) DESC 

Limit 1 
