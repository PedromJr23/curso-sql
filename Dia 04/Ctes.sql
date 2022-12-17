-- Databricks notebook source
--- Lista de vendedores que estão no estado com menos clientes

SELECT idVendedor, descUF
FROM silver_olist.vendedor
WHERE descUF = (

    select descUF
    from silver_olist.cliente
    group by descUF
    order by count(DISTINCT idClienteUnico) desc
    LIMIT 1

)




-- COMMAND ----------

------
SELECT idVendedor, descUF
FROM silver_olist.vendedor
WHERE descUF in (

    select descUF
    from silver_olist.cliente
    group by descUF
    order by count(DISTINCT idClienteUnico) desc
    LIMIT 2

)

-- COMMAND ----------

-- DBTITLE 1,With
with tb_estados as (
    select descUF
    from silver_olist.cliente
    group by descUF
    order by count(DISTINCT idClienteUnico) desc
    LIMIT 10


), 

tb_vendedores as (


SELECT idVendedor, 
    descUF

FROM silver_olist.vendedor

WHERE descUF IN (SELECT descUF from tb_estados)

)

SELECT*from tb_vendedores

-- COMMAND ----------

--- Nota média dos vendedores de cada estado

with tb_pedido_nota as (


select T1.idVendedor, T2.vlNota
from silver_olist.item_pedido as T1

left join silver_olist.avaliacao_pedido as T2
on T1.idPedido = T2. IdPedido

), 

tb_avg_vendedor as (
    select idVendedor, 
        avg(vlNota) as avgNotaVendedor

from tb_pedido_nota
group by idvendedor
), 

tb_vendedores_estado as (
    select T1. *,
    T2.descUF
    from tb_avg_vendedor as T1
    left join silver_olist.vendedor as T2
    on T1.idVendedor = T2.idVendedor
)

select descUF,
avg(avgNotaVendedor) as avgNotaEstado

from tb_avg_vendedor
group by descUF
order by avgnotaestado desc
