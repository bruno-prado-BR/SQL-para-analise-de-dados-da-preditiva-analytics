/* Usando AS para renomear colunas */
select customer_name as nome_cliente, product_name as nome_produto, quantity as quantidade 
	from tb_store_sales as vendas;