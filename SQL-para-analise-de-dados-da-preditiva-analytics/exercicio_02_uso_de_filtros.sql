select * from tb_vendas;


/*Exercício 1) 
 Utilizando a tabela tb_vendas, liste todas as vendas com pagamento pix.*/

select 
	"Data",	"Estado", "Região", "Gerente", "Vendedor", "Departamento", "Forma de Pagamento", "Valor"
from
	tb_vendas
where 
	"Forma de Pagamento" = 'Pix'
;


/*Exercício 2) 
Utilizando a tabela tb_vendas, liste todas as vendas com valor acima de 1000.*/

select 
	"Data",	"Estado", "Região", "Gerente", "Vendedor", "Departamento", "Forma de Pagamento", "Valor"
from
	tb_vendas
where 
	"Valor" > 1000
;


/*Exercício 3) 
Utilizando a tabela tb_vendas, liste todas as vendas de 2017.*/

select 
	"Data",	"Estado", "Região", "Gerente", "Vendedor", "Departamento", "Forma de Pagamento", "Valor"
from
	tb_vendas
where 
	extract(year from "Data") = 2017
;