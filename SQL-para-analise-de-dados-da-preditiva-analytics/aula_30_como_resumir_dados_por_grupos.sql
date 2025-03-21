/*Resumir dados por grupos*/

SELECT 
	segment, 
	quantity
FROM 
	tb_store_sales
LIMIT 5



SELECT 
	segment,
	count(1) AS qtt_vendas,
	count(quantity) AS qtt_vendas_nao_nulas,
	min(quantity) AS min_qtd,
	avg(quantity) AS avg_qtd,
	max(quantity) AS max_qtd,
	stddev(quantity) AS stdev_qtd,
	variance(quantity) AS var_qtd
FROM
   tb_store_sales
GROUP BY
	segment
   
   
   
 /* Qual a lista de países com vendas acima de 100.000 */
   
SELECT 
	country AS pais,
	sum(sales) AS total_vendas
FROM 
	tb_store_sales
GROUP BY
	country
HAVING 
	sum(sales) > 100000
ORDER BY 
	sum(sales) DESC
	
   
  
   
   
   
   
   
   
   
   
   
 /* Nossa empresa realizou campanhas no Facebook e
  cada Ad realizado foi registrado na tabela tb_facebook_ads.
Deseja-se saber por campanha as informações de impressões,
 cliques, investimento, total de conversões e conversões aprovadas.
*/
	
SELECT 
	*
FROM 
	tb_facebook_ads
LIMIT 5
	
SELECT 
	xyz_campaign_id,
	sum(impressions) AS impressoes,
	sum(clicks) AS cliques,
	sum(spent) AS investimento,
	sum(total_conversion) AS total_conversoes,
	sum(approved_conversion) AS total_conversoes_aprovadas
FROM 
	tb_facebook_ads
GROUP BY
	xyz_campaign_id
	
	
	
	
	
	
	
	