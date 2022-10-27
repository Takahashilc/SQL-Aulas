alter table clientes add column PRIMEIRA_COMPRA BIT(1);
select * from clientes;

select * from sucos_vendas.tabela_de_clientes;

select cpf, nome, endereco_1 as endereco, bairro, cidade, estado,
cep, data_de_nascimento as data_nascimento, idade, sexo, limite_de_credito as
limite_credito, volume_de_compra as Volume_compra, primeira_compra from
sucos_vendas.tabela_de_clientes
where cpf not in (select cpf from clientes);

insert into clientes
select cpf, nome, endereco_1 as endereco, bairro, cidade, estado,
cep, data_de_nascimento as data_nascimento, idade, sexo, limite_de_credito as
limite_credito, volume_de_compra as Volume_compra, primeira_compra from
sucos_vendas.tabela_de_clientes
where cpf not in (select cpf from clientes);

select * from clientes;
select * from vendedores;