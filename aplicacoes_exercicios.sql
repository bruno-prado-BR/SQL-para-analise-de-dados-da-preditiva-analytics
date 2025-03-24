/* Aplicação 01
Formule uma consulta que obtenha o número total de vendas realizadas às segundas-feiras 
em todos os anos disponíveis utilizando as tabelas 'sales' e 'time' do schema db_star_sales.*/

SELECT * FROM db_star_sales.sales;
SELECT * FROM db_star_sales."time";
SELECT * FROM db_star_sales.products;

SELECT 
	sum(sales.transaction_amount) AS total_vendas
FROM 
	db_star_sales.sales AS sales
	LEFT JOIN db_star_sales."time" AS time
	ON sales.time_id = time.time_id
WHERE 
	time.time_day_of_week=2
;

/* Aplicação 2
Utilizando as tabelas 'sales' e 'products' do schema db_star_sales, construa uma consulta SQL que identifique os 5 produtos 
com os maiores valores de transação. Mostre os nomes dos produtos e seus respectivos valores totais de transação.*/
SELECT 
	products.product_name AS produto,
	sum(sales.transaction_amount) AS total_vendas
FROM
	db_star_sales.sales AS sales
	LEFT JOIN db_star_sales.products AS products
	ON sales.product_id = products.product_id
GROUP BY products.product_name ORDER BY total_vendas DESC
LIMIT 5;

/* Aplicação 3
Utilizando o schema db_star_sales, verifique a quantidade de vendas realizadas por ano.*/
SELECT 
	time.time_year AS ano,
	sum(transaction_amount) AS total_vendas
FROM 
	db_star_sales.sales AS sales
	LEFT JOIN db_star_sales."time" AS time
	ON sales.time_id = time.time_id
GROUP BY time.time_year ORDER BY time.time_year ASC
;

/* Aplicação 4
Utilizando o schema db_star_sales, desenvolva uma consulta SQL que recupere as 3 regiões 
com os maiores valores totais de transação às terças feiras. Apresente os nomes das regiões 
e seus respectivos valores totais de vendas.*/
SELECT 
	region.region_name AS região,
	sum(sales.transaction_amount) AS total_vendas
FROM 
	db_star_sales.sales AS sales
	LEFT JOIN db_star_sales."time" AS time
	ON sales.time_id = time.time_id
	LEFT JOIN db_star_sales.regions AS region
	ON sales.region_id = region.region_id
WHERE 
	time.time_day_of_week=3
GROUP BY region.region_name
ORDER BY total_vendas DESC 
LIMIT 3 
;
