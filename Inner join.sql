select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores A 
inner join notas_fiscais B
on A.matricula = B.MATRICULA;

select A.matricula, A.nome, count(*) from tabela_de_vendedores A
inner join notas_fiscais B
on A.matricula = B.matricula
group by A.matricula, A.nome;

select A.matricula, A.nome, count(*) from tabela_de_vendedores A,
notas_fiscais B
where A.matricula = B.matricula
group by A.matricula, A.nome;

