-- Esta consulta recupera todos los departamentos y sus empleados; incluidos departamentos sin empleados
SELECT 
Employees.lastname, 
Employees.firstname, 
Departments.DepartmentName
FROM Employees
right join Departments 
on employees.EmployeeID = departments.DepartmentID;
