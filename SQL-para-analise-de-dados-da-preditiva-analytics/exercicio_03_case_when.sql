SELECT * FROM tb_vendas;

/*Exercício 1) 
Considere que a tabela tb_vendas representa as vendas realizadas pela empresa que trabalha. 
Você percebeu que existe um erro nos registros. No inicio de 2020 o gerente Jose Moraes foi 
substituído pelo Joao Maria. Crie uma consulta corrigindo os dados da tabela*/
SELECT
	"Data", 
	"Estado",
	"Região",
	CASE
		WHEN "Data">'2020-01-01' AND "Gerente"='Jose Moraes' THEN 'Joao Maria' ELSE "Gerente"
	END AS "Gerente",
	"Vendedor",
	"Departamento",
	"Forma de Pagamento",
	"Valor"
FROM
	tb_vendas;


/*Exercício 2) 
O Departamento "Esportes e Lazer" mudou de nome para "Bem-estar". 
Crie uma consulta da tabela tb_vendas substituindo "Esporte e lazer" por "Bem-estar"*/
SELECT
	"Data", 
	"Estado",
	"Região",
	"Gerente",
	"Vendedor",
	CASE
		WHEN "Departamento"='Esporte e Lazer' THEN 'Bem-estar' ELSE "Departamento"
	END AS "Departamento",
	"Forma de Pagamento",
	"Valor"
FROM 
	tb_vendas;


/*Exercício 3) Crie uma consulta da tabela tb_vendas com uma coluna que informe 
se o valor da venda foi maior ou menor que 1000.*/
SELECT 
	"Data", 
	"Estado",
	"Região",
	"Gerente",
	"Vendedor",
	"Departamento",
	"Forma de Pagamento",
	"Valor",
	CASE
		WHEN "Valor">1000 THEN 'Sim' ELSE 'Não'
	END AS venda_maior_1000
FROM
	tb_vendas;
