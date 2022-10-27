select ltrim ('      olá') as resultado;

select rtrim('olá         ') as resultado;

select trim('    olá    ') as resultado;

select concat('ola',' ','tudo bem','?') as resultado;

select upper('olá, tudo bem?') as resultado;

select lower('olá, tudo bem?') as resultado;

select substring('olá, tudo bem?', 6) as resultado;

select substring('olá, tudo bem?', 6,4) as resultado;

select concat(nome, ' (', cpf, ') ')as resultado from tabela_de_clientes;