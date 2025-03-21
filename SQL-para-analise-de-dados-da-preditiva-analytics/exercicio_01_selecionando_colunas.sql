select * from tb_store_sales

/* Exercício 1) 
Considere o conjunto de dados tb_store_sales. Você deve recuperar informações básicas sobre os pedidos. 
Escreva uma consulta SQL usando apenas as cláusulas SELECT e FROM para exibir as seguintes colunas:
- ID do Pedido
- Data do Pedido
- Nome do Cliente
- Nome do Produto
- Quantidade

Sua consulta deve recuperar essas informações para todos os registros no conjunto de dados. */

select
	order_id as ID_do_pedido,
	order_date as Data_do_pedido,
	customer_name as Nome_do_cliente,
	product_name as Nome_do_produto,
	quantity as Quantidade
from
	tb_store_sales;



/* Exercício 2) 
Considere o conjunto de dados tb_store_sales. Escreva uma consulta SQL usando apenas as cláusulas SELECT e FROM para recuperar as seguintes informações:
- ID do Pedido
- Modo de Envio
- Vendas*/

select
	order_id as ID_do_pedido,
	ship_mode as Modo_de_envio,
	sales as Vendas
from
	tb_store_sales;



/* Exercício 3) 
Usando o conjunto de dados tb_store_sales, escreva uma consulta SQL usando apenas as cláusulas SELECT e FROM para exibir as seguintes colunas:

- Nome do Cliente
- Estado
- Prioridade do Pedido

*/

select
	customer_name as Nome_do_cliente,
	state as Estado,
	order_priority as Prioridade_do_pedido
from
	tb_store_sales;



/* xercício 4) 
A análise eficaz dos dados de vendas é crucial para otimizar as estratégias de negócio. 
A ausência de insights abrangentes sobre o desempenho das vendas limita a capacidade de tomar decisões
informadas sobre gerenciamento de estoque e campanhas de marketing.

Obter dados essenciais de vendas é o primeiro passo. Utilizando o schema db_star_sales, 
crie uma consulta que exiba as colunas: sales_id, product_id e transaction_amount da tabela 'sales'."
 */

select 
	sales_id,
	product_id,
	transaction_amount
from
	db_star_sales.sales;