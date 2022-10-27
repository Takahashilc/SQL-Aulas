select * from tabela_de_produtos where sabor like '%maça%';

select * from tabela_de_produtos where sabor like '%maça%'
and embalagem = 'pet';

select embalagem, tamanho from tabela_de_produtos;

select distinct EMBALAGEM, tamanho from tabela_de_produtos;

select distinct EMBALAGEM, tamanho from tabela_de_produtos
where sabor = 'laranja';

select distinct embalagem, tamanho, sabor from tabela_de_produtos;