use sucos_vendas;

select cpf, nome, endereco_1, endereco_2, bairro, cidade, estado, cep, data_de_nascimento,
idade,sexo,limite_de_credito,volume_de_compra, primeira_compra from tabela_de_clientes;

select * from tabela_de_clientes;

select cpf, nome from tabela_de_clientes;

select cpf as identificador, nome as cliente from tabela_de_clientes;

select * from tabela_de_produtos;

select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1000889';

select * from tabela_de_produtos where SABOR = 'laranja';

select * from tabela_de_produtos where embalagem = 'pet';

select * from tabela_de_produtos where preco_de_lista between 19.50 and 19.52;