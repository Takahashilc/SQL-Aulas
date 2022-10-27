start transaction;

select * from vendedores;

update vendedores set comissao = comissao * 1.15;

rollback;

commit;

start transaction;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99999','JOAO DA SILVA', 'ICARAÍ', 0.08, '2012-01-15',0);

update vendedores set comissao = comissao * 1.15;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('99998','JOAO DA SILVA2', 'ICARAÍ', 0.08, '2012-01-15',0);

ROLLBACK;




