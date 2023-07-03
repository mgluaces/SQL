-- Esta consulta selecciona todos los pedidos realizados en el año 2023
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-12-31';
