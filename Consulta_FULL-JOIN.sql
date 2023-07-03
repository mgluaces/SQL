-- Esta consulta recupera todas las combinaciones de empleados y departamentos, incluyendo empleados sin departamento y departamentos sin empleados
SELECT 
	employees.LastName, 
    employees.FirstName, 
    departments.DepartmentName
FROM practicas.employees
full join departments 
on employees.EmployeeID = departments.DepartmentID;
