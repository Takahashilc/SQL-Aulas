select * from itens_notas_fiscais;

select * from notas_fiscais;

select * from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;

select NF.cpf, NF.data_venda, INF.quantidade from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;

select NF.cpf, date_format(NF.data_venda, '%Y-%m') as Mes_Ano, INF.quantidade from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;

/*CONSULTA COM VENDAS DE CLIENTES POR MES*/
select NF.cpf, date_format(NF.data_venda, '%Y-%m') as Mes_Ano,
sum(INF.quantidade) as Quantidade_Vendas from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
group by NF.cpf, date_format(NF.data_venda, '%Y-%m');

/*LIMITE DE COMPRA POR CLIENTE*/
select * from tabela_de_clientes TC;
select TC.cpf, TC.nome, TC.volume_de_compra as Quantidade_Limite
from tabela_de_clientes TC;

select NF.cpf, TC.nome, date_format(NF.data_venda, '%Y-%m') as Mes_Ano,
sum(INF.quantidade) as Quantidade_Vendas 
,max(TC.volume_de_compra) as Quantidade_Limite from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.cpf
group by NF.cpf, TC.nome, date_format(NF.data_venda, '%Y-%m');



/*RELATÓRIO DE VENDAS VÁLIDAS*/
select x.cpf, x.nome, x.Mes_ano, x.quantidade_vendas, x.quantidade_limite,
case when (x.quantidade_limite - x.quantidade_vendas) < 0 then 'Inválida'
else 'Válida' end as Status_Venda
from(
select NF.cpf, TC.nome, date_format(NF.data_venda, '%Y-%m') as Mes_Ano,
sum(INF.quantidade) as Quantidade_Vendas 
,max(TC.volume_de_compra) as Quantidade_Limite from notas_fiscais NF 
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.cpf
group by NF.cpf, TC.nome, date_format(NF.data_venda, '%Y-%m')) x;



