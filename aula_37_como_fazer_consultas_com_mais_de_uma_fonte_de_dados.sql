-- pizzas
SELECT 
	* 
FROM 
	db_pizza_sales.pizzas
LIMIT 5

-- tipos de pizza
SELECT 
	* 
FROM 
	db_pizza_sales.pizza_types
LIMIT 5

SELECT 
	p.*,
	t.*
FROM
	db_pizza_sales.pizzas AS p
	JOIN db_pizza_sales.pizza_types AS t
		ON p.pizza_type_id = t.pizza_type_id