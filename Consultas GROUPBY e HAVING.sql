select * from tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

select estado, sum(limite_de_credito) as limite_total from
tabela_de_clientes group by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos
group by embalagem;

select embalagem, count(*) as contador from tabela_de_produtos group by EMBALAGEM;

select bairro, sum(limite_de_credito) as limite from tabela_de_clientes group by bairro;

select bairro, sum(limite_de_credito) as limite from tabela_de_clientes 
where cidade = 'rio de janeiro' group by bairro;

select estado, bairro, sum(limite_de_credito) as limite from tabela_de_clientes 
where cidade = 'rio de janeiro' group by estado, bairro;

select estado, bairro, sum(limite_de_credito) as limite from tabela_de_clientes 
where cidade = 'rio de janeiro' group by estado, bairro
order by bairro;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
where soma_limite > 900000
group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
group by estado having sum(limite_de_credito)>900000;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem having sum(preco_de_lista) <= 80;

select embalagem, max(preco_de_lista), min(preco_de_lista) from tabela_de_produtos
group by embalagem having sum(preco_de_lista) <= 80 and max(PRECO_DE_LISTA) >= 5;





