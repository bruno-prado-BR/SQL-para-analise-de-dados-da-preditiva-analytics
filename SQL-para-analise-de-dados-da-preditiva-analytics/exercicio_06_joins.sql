/*Exercício 1) Considerando o schema db_star_sales e utilizando as tabelas 'sales' e 'time', crie uma consulta SQL que exiba  
o ID do produto, valor da transação, o ano, o mês e o dia da transação*/
SELECT 
	sales.product_id,
	sales.transaction_amount AS valor_transação,
	time.time_year AS ano,
	time.time_month AS mês,
	time.time_day AS dia
FROM
	db_star_sales.sales AS sales
	JOIN db_star_sales."time" AS time
	ON sales.time_id = time.time_id ;

/*Exercício 2) Considerando o schema db_star_sales e utilizando as tabelas 'sales' e 'time', crie uma consulta SQL que exiba  
o ID do produto, valor da transação, o ano, o mês e o dia da transação para o ano de 2015*/
SELECT 
	sales.product_id,
	sales.transaction_amount AS valor_transação,
	time.time_year AS ano,
	time.time_month AS mês,
	time.time_day AS dia
FROM
	db_star_sales.sales AS sales
	JOIN db_star_sales."time" AS time
	ON sales.time_id = time.time_id AND time.time_year=2015;


/*Exercício 3) 
Considerando o schema db_star_sales crie uma consulta que traga o nome dos produtos e região vendida, bem como o id e o valor da transação*/
SELECT 
	sales.product_id,
	product.product_name AS Produto,
	region.region_name AS Região,
	sales.transaction_amount AS valor_transação
FROM
	db_star_sales.sales AS sales
	LEFT JOIN db_star_sales.products AS product ON sales.product_id = product.product_id
	LEFT JOIN db_star_sales.regions AS region ON sales.region_id = region.region_id
ORDER BY sales.product_id ASC;

		
/*Exercício 4) 
Liste as vendas na região de Portugal no ano de 2016, considerando o schema db_star_sales*/
SELECT 
	sales.sales_id,
	region.region_name AS Região,
	time.time_year AS ano
FROM
	db_star_sales.sales AS sales
	JOIN db_star_sales."time" AS time
		ON sales.time_id = time.time_id AND time.time_year=2016 
	JOIN db_star_sales.regions AS region
		ON sales.region_id = region.region_id AND region.region_name='Portugal'; 


/*Exercício 5) 
Liste as vendas no Brasil a partir de 2015, considerando o schema db_star_sales*/
SELECT 
	sales.*
FROM
	db_star_sales.sales AS sales
	INNER JOIN db_star_sales."time" AS time
		ON sales.time_id = time.time_id
	INNER JOIN db_star_sales.regions AS region
		ON sales.region_id = region.region_id
WHERE 
	region.region_name='Brazil' AND time.time_year>=2015;


/*Exercício 6) 
Liste as vendas no Brasil no ano de 2016 e ordene a consulta da maior para a menor transação*/
SELECT
	sales.*
FROM
	db_star_sales.sales AS sales
	INNER JOIN db_star_sales."time" AS time
		ON sales.time_id = time.time_id AND time.time_year=2016
	INNER JOIN db_star_sales.regions AS region
		ON sales.region_id = region.region_id AND region.region_name='Brazil'
ORDER BY sales.transaction_amount DESC;
