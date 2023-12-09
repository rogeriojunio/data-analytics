-- Exercícios de SQL da W3Schools:
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_distinct2

-- 01 (W3Schools): Consultar todos os clientes com todas as colunas (tabela Customers)
SELECT *
FROM Customers;

-- 02 (W3Schools): Consultar todos os produtos com todas as colunas (tabela Products)
SELECT *
FROM Products;

-- 03 (W3Schools): Consultar todos os clientes com as colunas CustomerID, CustomerName e Country (tabela Customers)
SELECT CustomerID, CustomerName, Country
FROM Customers;

-- 04 (W3Schools): Consultar todos os clientes da cidade (city) de São Paulo com todas as colunas (tabela Customers)
SELECT *
FROM Customers
WHERE City = 'São Paulo';

-- 05 (W3Schools): Consultar produtos que tenham “Guaraná” na descrição com todas as colunas (tabela Products)
SELECT *
FROM Products
WHERE ProductName LIKE '%Guaraná%';

-- 06 (W3Schools): Consultar todos os clientes da cidade (city) de São Paulo e que tenham contato com um nome de ‘Pedro’ (tabela Customers)
SELECT *
FROM Customers
WHERE City = 'São Paulo'
    AND ContactName LIKE '%Pedro%';

-- 07 (W3Schools): Consultar todos os clientes com as colunas CustomerID, CustomerName e Country ordenando ascendente por país
SELECT CustomerID, CustomerName, Country 
FROM Customers
ORDER BY Country ASC;

-- 08 (W3Schools): Consultar todos os clientes com as colunas CustomerID, CustomerName e Country ordenando descendente por país
SELECT CustomerID, CustomerName, Country 
FROM Customers
ORDER BY Country DESC;

-- 09 (W3Schools): Consultar a quantidade de clientes de cada país. O resultado deverá ter o nome do país e a quantidade de clientes (tabela Customers)
SELECT Country, COUNT(CustomerID) AS Quantity
FROM Customers
GROUP BY Country
ORDER BY Country ASC;

-- 10 (W3Schools): Consultar a quantidade de clientes de cada país. O resultado deverá ter o nome do país e a quantidade de clientes em ordem decrescente de número de clientes (tabela Customers)
SELECT Country, COUNT(CustomerID) AS Quantity
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- 11 (W3Schools): Consultar a quantidade de clientes de cada país, para os países com ao menos 4 clientes. O resultado deverá ter o nome do país e a quantidade de clientes em ordem decrescente de número de clientes (tabela Customers)
SELECT Country, COUNT(CustomerID) AS Quantity
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) >= 4
ORDER BY COUNT(CustomerID) DESC;

-- 12 (W3Schools): Consultar os clientes cujos países começam com a letra A (tabela Customers)
SELECT CustomerName
FROM Customers
WHERE Country LIKE 'a%';

-- 13 (W3Schools): Consultar os clientes cujos países tem a segunda letra A (tabela Customers)
SELECT CustomerName
FROM Customers
WHERE Country LIKE '_a%';

-- 14 (W3Schools): Consultar os clientes cujos países começam com a letra A, B ou C (tabela Customers)
SELECT CustomerName
FROM Customers
WHERE Country LIKE 'a%' 
	OR Country LIKE 'b%'
    OR Country LIKE 'c%';

-- 15 (W3Schools): Consultar os números das ordens, primeiros e últimos nomes dos empregados que fizeram cada ordem (tabelas Employees e Orders)
SELECT o.OrderID, e.FirstName, e.LastName
FROM Orders o
LEFT JOIN Employees e
    ON o.EmployeeID = e.EmployeeID;

-- 16 (W3Schools): Consultar os nomes de todos os produtos e suas respectivas categorias (tabelas Products e Categories)
SELECT p.ProductName, c.CategoryName
FROM Products p
LEFT JOIN Categories c 
    ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName;

-- 17 (W3Schools): Consultar os ids das ordens com os nomes e telefones dos transportadores (tabelas Orders e Shippers)
SELECT o.OrderID, s.ShipperName, s.Phone
FROM Orders o
LEFT JOIN Shippers s
    ON o.ShipperID = s.ShipperID;

-- 18 (W3Schools): Consultar quantidade de ordens de cada um dos empregados. O resultado deve ter o nome do empregado e a quantidade de ordens. Mesmo os empregados que não tem ordens devem estar no resultado (tabelas Orders e Employees)
SELECT e.FirstName, COUNT(o.OrderID) AS Quantity
FROM Employees e
LEFT JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
GROUP BY e.FirstName
ORDER BY COUNT(o.OrderID) DESC;

-- 19 (W3Schools): Consultar nomes dos produtos que nunca tiveram nenhuma ordem (tabelas Products e OrderDetails)
SELECT p.ProductName
FROM Products p
LEFT JOIN OrderDetails od
    ON p.ProductID = od.ProductID
WHERE od.OrderID IS NULL;

-- 20 (W3Schools): Consultar a quantidade de clientes na tabela de clientes (tabela Customers)
SELECT COUNT(c.CustomerID) AS Quantity
FROM Customers c;

-- 21 (W3Schools): Consultar a quantidade de linhas com países na tabela de clientes (tabela Customers)
SELECT DISTINCT COUNT(c.Country)
FROM Customers c;

-- 22 (W3Schools): Consultar a quantidade de países na tabela de clientes (tabela Customers)
SELECT COUNT(*) AS Quantity
FROM (
    SELECT DISTINCT c.Country
    FROM Customers c
    );

-- 23 (W3Schools): Calcular a média dos preços dos produtos (tabela Products)
SELECT AVG(p.Price) AS Average
FROM Products p;

-- 24 (W3Schools): Que trem feio esse AVG(Price) hein??? Vamos mudar pra media_precos?
SELECT AVG(p.Price) AS media_precos
FROM Products p;

-- 25 (W3Schools): Consultar maior e menor preço de produto
SELECT MIN(p.Price) AS menor_preco, MAX(p.Price) AS maior_preco
FROM Products p;

-- 26 (W3Schools): Consultar os números das ordens, primeiros e últimos nomes dos empregados que tenham ‘A’ como primeira letra do nome. Utilizar subconsulta como tabela de empregados com letra A (tabelas Employees e Orders)
SELECT o.OrderID, ea.FirstName, ea.LastName
FROM (
        SELECT e.*
        FROM Employees e
        WHERE e.FirstName LIKE 'A%'
    ) ea
INNER JOIN Orders o 
    ON ea.EmployeeID = o.EmployeeID;

-- 27 (W3Schools): Consultar os números das ordens, primeiros e últimos nomes dos empregados que tenham ‘A’ como primeira letra do nome. Utilizar comando with como tabela temporária de empregados com letra A (tabelas Employees e Orders)
WITH 
    employees_name_starts_with_a AS (
        SELECT e.*
        FROM Employees e
        WHERE e.FirstName LIKE 'A%'
    )

SELECT o.OrderID, ea.FirstName, ea.LastName
FROM employees_name_starts_with_a ea
INNER JOIN Orders o 
    ON ea.EmployeeID = o.EmployeeID;