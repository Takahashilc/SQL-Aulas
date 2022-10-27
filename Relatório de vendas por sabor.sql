select TP.sabor, NF.DATA_VENDA, INF.QUANTIDADE from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero;

/*QUANTIDADE VENDIDA POR SABOR ANO 2016*/
select TP.sabor, Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by TP.sabor, Year(NF.DATA_VENDA)
order by sum(INF.QUANTIDADE) desc;

select Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by Year(NF.DATA_VENDA)
order by sum(INF.QUANTIDADE) desc;


select * from
(select TP.sabor, Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by TP.sabor, Year(NF.DATA_VENDA)) as Venda_Sabor
inner join
(select Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by Year(NF.DATA_VENDA)) as Venda_Total
on Venda_sabor.ano = Venda_total.ano;


/*RELATÓRIO DE VENDAS POR SABOR*/
select venda_sabor.sabor, venda_sabor.ano, venda_sabor.quantidade,
round((venda_sabor.quantidade/venda_total.quantidade)*100,2) as participação from
(select TP.sabor, Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by TP.sabor, Year(NF.DATA_VENDA)) as Venda_Sabor
inner join
(select Year(NF.DATA_VENDA) as ANO, sum(INF.QUANTIDADE) as Quantidade from
tabela_de_produtos TP
inner join itens_notas_fiscais INF on TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
inner join notas_fiscais NF on NF.numero = INF.numero
where Year(NF.DATA_VENDA) = 2016
group by Year(NF.DATA_VENDA)) as Venda_Total
on Venda_sabor.ano = Venda_total.ano
order by venda_sabor.quantidade desc;


