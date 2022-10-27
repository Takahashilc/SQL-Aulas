select curdate();

select current_time();

select current_timestamp();

select year(current_timestamp());

select day(current_timestamp());

select month(current_timestamp());

select monthname(current_timestamp());

select datediff(current_timestamp(), '2022-01-01') as resultado;

select datediff(current_timestamp(), '1996-08-22') as resultado;

select date_sub(current_timestamp(), interval 5 day) as resultado;

select distinct data_venda,
dayname(data_venda) as dia, monthname(data_venda) as mes, year(data_venda) as ano
from notas_fiscais;