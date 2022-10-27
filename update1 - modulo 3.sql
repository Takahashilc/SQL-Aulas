select * from produtos;

update produtos set preco_lista = 5 where codigo = '1000889';

update produtos set
embalagem = 'PET',
Tamanho = '1 Litro',
descritor = 'Sabor da Montanha - 1 Litro - Uva' where codigo = '1000889';

select * from produtos where sabor = 'Maracujá';

update produtos set preco_lista = preco_lista * 1.10 where
sabor = 'Maracujá';

