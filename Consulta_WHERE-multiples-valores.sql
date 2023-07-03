-- Esta consulta selecciona a todos los analistas e ingenieros
SELECT *
FROM Employees
WHERE position in ('Analyst','Engineer');
