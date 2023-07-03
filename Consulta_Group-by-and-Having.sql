-- Esta consulta muestra los puestos ocupados por más de un empleado
SELECT position, COUNT (*)
FROM Employees
GROUP by position
HAVING COUNT (*) > 1;
