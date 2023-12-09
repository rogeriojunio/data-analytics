-- Produtos que venderam mais de 500 unidades

SELECT product_id, SUM(quantity) AS total_units_sold
FROM order_details
GROUP BY product_id
HAVING SUM(quantity) > 500;