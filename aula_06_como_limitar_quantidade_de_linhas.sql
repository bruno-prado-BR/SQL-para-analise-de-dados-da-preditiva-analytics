
/* Consulta completa */
select * from tb_ecommerce_sales;

/* Consultando usando LIMIT */
select 
	order_id,
	sku,
	color as cor_blusa,
	size as tamanho_blusa,
	order_date as data_compra,
	quantity as quantidade
from
	tb_ecommerce_sales
limit 100;

/* Consultando usando OFFSET */
select 
	order_id,
	sku,
	color as cor_blusa,
	size as tamanho_blusa,
	order_date as data_compra,
	quantity as quantidade
from
	tb_ecommerce_sales
offset 5;