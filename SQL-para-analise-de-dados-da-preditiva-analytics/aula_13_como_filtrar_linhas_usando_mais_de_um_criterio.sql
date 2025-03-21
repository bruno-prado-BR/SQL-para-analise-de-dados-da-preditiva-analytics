/*

 Desejamos saber, para nosso com�rcio (tb_store_sales), 
 quais foram os pedidos realizados com 
 prioridade de entrega �cr�tica� OU com tipo de entrega no �mesmo dia�. 

Nosso relat�rio deve conter:
* n�mero do pedido, 
* nome do cliente, 
* data do pedido e 
* data da entrega

 */

SELECT
	order_id AS numero_pedido,
	customer_name AS nome_cliente,
	order_date AS data_pedido,
	ship_date AS data_entrega,
	order_priority AS prioridade_entrega,
	ship_mode AS tipo_entrega	
FROM 
	tb_store_sales
WHERE 
	order_priority LIKE 'C%' 
	OR ship_mode = 'Same Day'

/*

 Desejamos saber, para nosso com�rcio (tb_store_sales), 
 quais foram os pedidos realizados com 
 prioridade de entrega �cr�tica� E com tipo de entrega no �mesmo dia�. 

Nosso relat�rio deve conter:
* n�mero do pedido, 
* nome do cliente, 
* data do pedido e 
* data da entrega

 */


SELECT
	order_id AS numero_pedido,
	customer_name AS nome_cliente,
	order_date AS data_pedido,
	ship_date AS data_entrega,
	order_priority AS prioridade_entrega,
	ship_mode AS tipo_entrega	
FROM 
	tb_store_sales
WHERE 
	order_priority LIKE 'C%' 
	AND ship_mode = 'Same Day'

/*
 * Desejamos saber, para nosso com�rcio (tb_store_sales), 
 * quais foram os pedidos realizados 
 * com prioridade de entrega �cr�tica� OU com tipo de entrega no �mesmo dia�. 

Adicionalmente queremos apenas os pedidos com desconto entre 10% e 30%.

Nosso relat�rio deve conter o n�mero do pedido, nome do cliente, data do pedido e data da entrega

 */	

SELECT
	order_id AS numero_pedido,
	customer_name AS nome_cliente,
	order_date AS data_pedido,
	ship_date AS data_entrega,
	order_priority AS prioridade_entrega,
	ship_mode AS tipo_entrega,
	discount AS desconto
FROM 
	tb_store_sales
WHERE 
	(order_priority LIKE 'C%' 
	OR ship_mode = 'Same Day') AND discount >= 0.1 AND discount =< 0.3
	
	
SELECT
	order_id AS numero_pedido,
	customer_name AS nome_cliente,
	order_date AS data_pedido,
	ship_date AS data_entrega,
	order_priority AS prioridade_entrega,
	ship_mode AS tipo_entrega,
	discount AS desconto
FROM 
	tb_store_sales
WHERE 
	(order_priority LIKE 'C%' 
	OR ship_mode = 'Same Day') AND discount BETWEEN 0.1 AND 0.3
	
	
	
	
	
	
	
	