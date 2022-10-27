select count(*) from tabela_de_clientes;

select cpf, count(*) from notas_fiscais group by cpf;

select distinct A.cpf, A.nome, B.cpf from tabela_de_clientes A  
inner join notas_fiscais B on A.cpf = b.cpf;

select distinct A.cpf, A.nome, B.cpf from tabela_de_clientes A  
left join notas_fiscais B on A.cpf = b.cpf
where b.cpf is null;

select distinct A.cpf, A.nome, B.cpf from tabela_de_clientes A  
left join notas_fiscais B on A.cpf = b.cpf
where b.cpf is null and year(b.data_venda) = 2015;

select distinct A.cpf, A.nome, B.cpf from notas_fiscais B
right join tabela_de_clientes A on A.cpf = b.cpf
where b.cpf is null;