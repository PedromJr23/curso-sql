-- Databricks notebook source
-- DBTITLE 1,Count 
SELECT  count (*) 

FROM silver_olist.cliente

-- COMMAND ----------

SELECT  
count (*) AS nrLinhasNaoNulas, --- Linhas não nulas
count(idCliente) AS nrIdClientesNaonulo, -- id de cliente nao nulos
count(DISTINCT idCliente) AS nrIdClienteDistintos, -- id de clientes distintos  

count (idClienteUnico) AS nrIdClienteUnico,
count(DISTINCT idClienteUnico) as nrIdClientesUnicoDistintos

FROM silver_olist.cliente

-- COMMAND ----------

select 
count (*) as qtLinhas, 
count(DISTINCT idCliente) as qtClientes,
count (DISTINCT idClienteUnico) AS qtClientesUnicos
from silver_olist.cliente
where descCidade in  ('presidente prudente', 'sao paulo')


-- COMMAND ----------

select 
round (AVG(VLPreco), 2) AS avgPreco,-- media da coluna Preco

int (percentile (vlPreco, 0.5)) as medianPreco, --preço mediano
Max (VLPreco) AS avgPreco,-- máx da coluna Preco
avg (vlFrete) AS avgFrete,-- mmedia frete
Max (vlFrete) AS maxFrete,-- máx frete
MIN (vlFrete) AS minFrete-- mín frete


From silver_olist.item_pedido

-- COMMAND ----------

select 
descUF,
count(*) 
from silver_olist.cliente
group by descUF

-- COMMAND ----------

select 
descUF,
count(DISTINCT idClienteUnico) 
from silver_olist.cliente
group by descUF
