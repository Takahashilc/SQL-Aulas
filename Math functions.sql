select (23+((25-2)/2)*45) as resultado;

select ceiling(12.33333333232333) as resultado;

select round(12.73333333232333) as resultado;

select floor(12.33333333232333) as resultado;

select rand() as resultado;

select numero, quantidade, preco, round(quantidade * preco,2) as faturamento
from itens_notas_fiscais;

