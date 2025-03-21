/* 
 Você trabalha em uma loja e deseja verificar, 
 para cada venda realizada, quem comprou, 
 que produto comprou, quantidade comprada 
 e ordenadas da menor venda para maior
 */

SELECT 
	customer_name,
	product_name,
	quantity,
	sales
FROM
	tb_store_sales
ORDER BY
	sales DESC NULLS FIRST 