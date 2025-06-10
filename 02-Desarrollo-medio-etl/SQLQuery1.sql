SELECT p.ProductID,p.ProductName, c.CategoryName, 
p.UnitPrice, p.UnitsInStock, 
(p.UnitPrice * p.UnitsInStock) as IMPORTE
FROM Products as p 
INNER JOIN Categories as c
ON p.CategoryID = c.CategoryID;