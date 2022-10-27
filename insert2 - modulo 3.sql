select * from sucos_vendas.tabela_de_produtos;

select codigo_do_produto as codigo, nome_do_produto as descritor,
embalagem, tamanho, sabor, preco_de_lista as preco_lista 
from sucos_vendas.tabela_de_produtos
where codigo_do_produto not in (select codigo from produtos);

select * from produtos;

insert into produtos
select codigo_do_produto as codigo, nome_do_produto as descritor,
sabor, tamanho, embalagem, preco_de_lista as preco_lista 
from sucos_vendas.tabela_de_produtos
where codigo_do_produto not in (select codigo from produtos);

select * from produtos;