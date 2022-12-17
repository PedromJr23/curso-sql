-- Databricks notebook source
-- DBTITLE 1,Erro no código - descobrir depois 
with  tb_vendas_vendedores as (

select 
      idVendedor,
    concat(*) as QtdVendas

from silver_olist.item_pedido

group by idVendedor
order by qtVendas DESC

)

SELECT T1.*,
       T2.descUf,
       row_number() over(PARTITION BY T2.descUF order by qtVendas desc)  as RN

FROM Tb_vendas_vendedores as T1

left JOIN silver_olist.vendedor as T2
on T1.idvendedor = T2.idVendedor

order BY descUF desc, qtVendas desc





-- COMMAND ----------


