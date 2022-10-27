select embalagem, max(preco_de_lista) as preco_maximo from tabela_de_produtos
group by EMBALAGEM;


select x.embalagem, x.maior_preco from
(select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos
group by EMBALAGEM) x where x.maior_preco >= 10;


select x.embalagem, x.maior_preco from
vw_maiores_embalagens x where x.maior_preco >= 10;

select A.nome_do_produto, A.embalagem , A.preco_de_lista, x.maior_preco
from tabela_de_produtos A inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;

select A.nome_do_produto, A.embalagem , A.preco_de_lista, x.maior_preco,
((A.preco_de_lista / x.maior_preco)-1)*100 as percentual
from tabela_de_produtos A inner join vw_maiores_embalagens x
on a.embalagem = x.embalagem;