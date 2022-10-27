select current_timestamp() as resultado;

select concat('O dia de hoje é: ', current_timestamp()) as resultado;

select concat('O dia de hoje é: ', 
date_format(current_timestamp(), '%W,%d/%m/%Y - %U') ) as resultado;

select substring(convert(23.3, char),1,1) as resultado;