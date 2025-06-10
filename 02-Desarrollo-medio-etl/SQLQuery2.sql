Create database bdpruebaetl
use bdpruebaetl

SELECT TOP 0 p.ProductID,p.ProductName, c.CategoryName, 
p.UnitPrice, p.UnitsInStock, 
(p.UnitPrice * p.UnitsInStock) as IMPORTE
into tblprueba
FROM  NORTHWIND.dbo.Products as p 
INNER JOIN NORTHWIND.dbo.Categories as c
ON p.CategoryID = c.CategoryID;

SELECT * FROM tblprueba

TRUNCATE TABLE tblprueba;