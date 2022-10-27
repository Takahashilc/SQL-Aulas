select distinct bairro from tabela_de_vendedores;

select * from tabela_de_clientes
where bairro in('Tijuca','Jardins','Copacabana', 'Santo Amaro');

select * from tabela_de_clientes
where bairro in(select distinct bairro from tabela_de_vendedores);

select x.embalagem, x.preco_maximo from 
(select embalagem, max(preco_de_lista) as preco_maximo from tabela_de_produtos
group by embalagem) x where x.preco_maximo >= 10;