SELECT * FROM tb_vendas;

/*Exercício 1) 
Qual o total de vendas por ano, considerando a tabela tb_vendas?*/
SELECT 
	EXTRACT(YEAR FROM tb_vendas."Data") AS ano,
	SUM("Valor") AS Total_vendas
FROM
	tb_vendas
GROUP BY
	EXTRACT(YEAR FROM tb_vendas."Data")
ORDER BY
	EXTRACT(YEAR FROM tb_vendas."Data") ASC;

/*Exercício 2) 
Qual a quantidade de vendas por ano, considerando a tabela tb_vendas?*/
SELECT 
	EXTRACT(YEAR FROM tb_vendas."Data") AS ano,
	COUNT("Data") AS Total_quant_vendas
FROM
	tb_vendas
GROUP BY
	EXTRACT(YEAR FROM tb_vendas."Data")
ORDER BY
	EXTRACT(YEAR FROM tb_vendas."Data") ASC;


/*Exercício 3)
Qual o total de vendas por vendedor no ano de 2018, considerando a tabela tb_vendas?*/
SELECT 
	EXTRACT(YEAR FROM tb_vendas."Data") AS Ano,
	"Vendedor" AS Vendedor,
	SUM("Valor") AS Total_vendas
FROM
	tb_vendas
GROUP BY
	"Vendedor",
	EXTRACT(YEAR FROM tb_vendas."Data")
HAVING
	EXTRACT(YEAR FROM tb_vendas."Data") = 2018;
