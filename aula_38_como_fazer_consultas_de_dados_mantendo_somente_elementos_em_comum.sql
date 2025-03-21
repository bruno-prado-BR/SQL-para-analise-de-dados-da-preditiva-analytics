/*
Suponha que voc� faz parte de startup que atua no setor agr�cola ajudando produtores de soja 
a tornarem sua produ��o mais eficiente.  
Voc� decidiu abrir um novo escrit�rio, 
que servir� tanto para tratar assuntos comerciais como para recrutar novos profissionais.
 
Neste sentido voc� decidiu que seu novos escrit�rio deve atender aos seguintes crit�rios:
* Deve est� localizado em uma cidade que tem produ��o de soja
* Deve est� em uma das 100 maiores cidades do Brasil (em n�mero de habitantes) 
 */

SELECT 
	*
FROM 
	db_ibge.area_soja
LIMIT 5

SELECT 
	*
FROM 
	db_ibge.maiores_cidades
LIMIT 5

SELECT 
	s.cod_municipio,
	s.municipio,
	s.valor AS area_soja,
	c.populacao
FROM 
	db_ibge.area_soja s
	INNER JOIN db_ibge.maiores_cidades c
		ON s.cod_municipio = c.cod_municipio

		
SELECT 
	count(*) AS qtt_linhas
FROM 
	db_ibge.area_soja s
	
		
SELECT 
	count(*) AS qtt_linhas
FROM 
	db_ibge.maiores_cidades
		

