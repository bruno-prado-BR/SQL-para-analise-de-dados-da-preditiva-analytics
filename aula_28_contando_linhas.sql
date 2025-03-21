/*quantas vendas foram realizadas pelo ecommerce de roupas?*/

SELECT
	count(order_id) AS qtt_linhas,
	count(*) AS qtt_linhas_1,
	count(1) AS qtt_linhas_2,
	count(size) AS qtt_linhas_nao_nulas_size
FROM
	tb_ecommerce_sales

SELECT 
	order_id,
	size
FROM 
	tb_ecommerce_sales
WHERE
	size IS NULL
	
SELECT 
	count(order_id) AS qtt_vendas,
	count(CASE
		WHEN color = 'Dark Blue' THEN color
	END)  AS qtt_vendas_dark_blue
FROM 
	tb_ecommerce_sales