CREATE TABLE `produtos2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRITOR` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);

select * from produtos2;

insert into produtos2
select * from produtos;

update produtos2 set preco_lista = 8;

delete from produtos2;
