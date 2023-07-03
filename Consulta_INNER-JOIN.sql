-- Esta consulta recupera la lista de empleados junto con sus respectivos nombres de departamento (siempre que tengan departamento)
SELECT 
Employees.lastname, 
Employees.firstname, 
Departments.DepartmentName
FROM Employees
inner join Departments 
on employees.EmployeeID = departments.DepartmentID;
