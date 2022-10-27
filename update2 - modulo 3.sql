select * from vendedores;
select * from sucos_vendas.tabela_de_vendedores;

select * from
vendedores A inner join
sucos_vendas.tabela_de_vendedores B
on A.Matricula = substring(B.matricula,3,3);

update vendedores A inner join
sucos_vendas.tabela_de_vendedores B
on A.matricula = substring(B.matricula,3,3)
set A.ferias = B.de_ferias;