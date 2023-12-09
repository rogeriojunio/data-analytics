-- Funções de agregação

SELECT DATE_TRUNC('month', order_date) AS order_month, COUNT(order_id), MIN(freight), MAX(freight), AVG(freight)
FROM orders
GROUP BY order_month
ORDER BY order_month;