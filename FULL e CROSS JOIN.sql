select * from tabela_de_vendedores;

select * from tabela_de_clientes;

select * from tabela_de_vendedores inner join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;

select tabela_de_vendedores.bairro, tabela_de_vendedores.nome,
DE_FERIAS,
tabela_de_clientes.bairro, tabela_de_clientes.nome from tabela_de_vendedores 
inner join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;

select tabela_de_vendedores.bairro, tabela_de_vendedores.nome,
DE_FERIAS,
tabela_de_clientes.bairro, tabela_de_clientes.nome from tabela_de_vendedores 
left join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;

select tabela_de_vendedores.bairro, tabela_de_vendedores.nome,
DE_FERIAS,
tabela_de_clientes.bairro, tabela_de_clientes.nome from tabela_de_vendedores 
right join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;

select tabela_de_vendedores.bairro, tabela_de_vendedores.nome,
DE_FERIAS,
tabela_de_clientes.bairro, tabela_de_clientes.nome from tabela_de_vendedores 
full join tabela_de_clientes
on tabela_de_vendedores.bairro = tabela_de_clientes.bairro;

select tabela_de_vendedores.bairro, tabela_de_vendedores.nome,
DE_FERIAS,
tabela_de_clientes.bairro, tabela_de_clientes.nome from tabela_de_vendedores, 
tabela_de_clientes;




