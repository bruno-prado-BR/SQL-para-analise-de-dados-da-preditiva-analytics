/*
 Quais são as medidas resumo da variável quantidade na base de vendas de ecommerce
 */

SELECT
	count(*) AS quantidade_linhas,
	count(quantity) AS quantidade_linhas_nao_nulas,
	--medidas de posicao
	min(quantity) AS quantidade_minima,--minimo
	avg(quantity) AS quantidade_media,--media
	max(quantity) AS quantidade_maxima,--maximo
	--medidas de dispersao
	stddev(quantity) AS desvio_padrao_quantidade,--desvio padrao
	variance(quantity) AS variancia_quantidade --variancia
FROM
	tb_ecommerce_sales

