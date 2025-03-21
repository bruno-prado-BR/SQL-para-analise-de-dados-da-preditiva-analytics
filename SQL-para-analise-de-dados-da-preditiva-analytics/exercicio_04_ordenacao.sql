/* Exercício 1) 
Crie uma consulta que ordene tabela time do schema db_star_sales  da data mais recente para mais antiga*/

SELECT * FROM
	db_star_sales.time
ORDER BY time_datetime ASC;


/*Exercício 2) 
Crie uma consulta que ordene tabela time do db_star_sales  da data mais antiga para mais recente*/
SELECT * FROM
	db_star_sales.time
ORDER BY time_datetime DESC;


/*Exercício 3) 
*Crie uma consulta que ordene tabela time do schema db_star_sales da data mais recente para mais antiga, mas não utilize a coluna time_datetime*/
SELECT * FROM
	db_star_sales.time
ORDER BY time_year, time_month, time_day ASC;