-- Quantidade de produtos vendidos por produto

SELECT product_id, SUM(quantity) AS total_unit_sold
FROM order_details
GROUP BY product_id
ORDER BY total_unit_sold DESC;