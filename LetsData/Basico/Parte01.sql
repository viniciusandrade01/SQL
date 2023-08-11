-- Fonte: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1
-- Base: https://www.youtube.com/watch?v=QBDjB2V_uDM&list=PLn_z5E4dh_LgWmEGn2lcdOp5TDKw6nkde

-- Consultar todas as colunas (informações) da tabela clientes.
SELECT *
FROM Customers;

-- Consultar todos os produtos, com todas as colunas.
SELECT *
FROM Products;

-- Quero consultar todos os clientes, pegando o ID, NOME e PAÍS do cliente.
SELECT CustomerID, CustomerName, Country
FROM Customers;

-- Quero todos os clientes que estão em São Paulo, com todas as colunas.
SELECT *
FROM Customers
WHERE City = 'São Paulo';

-- Quero todos os clientes, mas desejo, somente, as colunas identificação, nome e país, e ordenado descendente por país, e ascendente por nome.
SELECT CustomerID, CustomerName, Country
FROM Customers
ORDER BY Country DESC, CustomerName;

-- Selecione a quantidade de vezes que o ID é informado na tabela OrderDetails e, também, a média
SELECT OrderID, count(Quantity), AVG(Quantity)
FROM OrderDetails
GROUP BY OrderID;

-- Quais produtos possuem média quantitativa maior que 10?
SELECT OrderID, count(Quantity), AVG(Quantity)
FROM OrderDetails
GROUP BY OrderID
HAVING AVG(Quantity) > 10;
-- Obs.: Nesse caso, usamos o having pois ele é usado, somente, quando tem filtro por valor de agregação.
