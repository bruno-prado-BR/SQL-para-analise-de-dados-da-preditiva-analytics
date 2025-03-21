/*
Você trabalha em uma loja e deseja verificar,
para cada venda realizada da CATEGORIA DE PRODUTOS DE TECNOLOGIA, 
quem comprou,
que produto comprou e 
a quantidade comprada

*/

SELECT 
	customer_name AS nome_cliente,
	product_name AS produto,
	quantity AS quantidade--,
	--category AS categoria
FROM 
	tb_store_sales
WHERE
	category = 'Technology'
	
/*
 Você trabalha em uma loja e deseja verificar, 
 para cada venda realizada, quem comprou, 
 que produto comprou e a 
 quantidade comprada 
 nas vendas com desconto

 */
	
SELECT 
	customer_name AS nome_cliente,
	product_name AS produto,
	quantity AS quantidade,
	discount AS desconto
FROM 
	tb_store_sales
WHERE
	discount > 0
	
	
/*
 Você trabalha em uma loja e deseja verificar, 
para cada venda realizada, quem comprou,
que produto comprou e a 
quantidade comprada nas vendas 
com prioridade elevada.
 */

SELECT 
	customer_name AS nome_cliente,
	product_name AS produto,
	quantity AS quantidade,
	order_priority AS prioridade
FROM 
	tb_store_sales
WHERE
	--order_priority = 'High'
	order_priority LIKE 'H%'
	
/*
Você trabalha em uma loja e deseja verificar, 
para cada venda realizada, quem comprou, 
que produto comprou e a 
quantidade comprada 
nas realizadas no Brasil ou na Argentina

 */
	
SELECT 
	customer_name AS nome_cliente,
	product_name AS produto,
	quantity AS quantidade,
	country AS pais
FROM 
	tb_store_sales
WHERE
	country IN ('Brazil', 'Argentina')