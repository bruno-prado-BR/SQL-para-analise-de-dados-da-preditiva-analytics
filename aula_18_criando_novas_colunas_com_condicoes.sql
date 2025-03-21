/*
Você trabalha em uma loja e deseja verificar,
para cada venda realizada, quem comprou, 
que produto comprou, a quantidade comprada , 
se teve ou não desconto e o valor do desconto em unidades monetárias 
*/

SELECT 
	customer_name AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade,
	discount AS desconto,
	sales AS vendas,
	CASE 
		WHEN discount != 0 THEN 'teve_desconto'
		ELSE 'nao_teve_desconto'
	END AS teve_desconto,
	sales*discount AS valor_desconto
FROM
	tb_store_sales
	
	