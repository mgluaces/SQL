# ¿Cómo seleccionar registros únicos de una tabla usando una consulta sql?

create table employee (
	employee_id decimal (6,0),
	name varchar (20),
	salary decimal (8,2)
);

insert into employee (employee_id, name, salary) values (100,'jennifer', 4400);
insert into employee (employee_id, name, salary) values (100,'jennifer', 4400);
insert into employee (employee_id, name, salary) values (101,'Michael', 13000);
insert into employee (employee_id, name, salary) values (101,'Michael', 13000);
insert into employee (employee_id, name, salary) values (101,'Michael', 13000);
insert into employee (employee_id, name, salary) values (102,'Pat', 6000);
insert into employee (employee_id, name, salary) values (102,'Pat', 6000);
insert into employee (employee_id, name, salary) values (103,'Den', 11000);


select * from employee;


# MÉTODO-1: Uso de la función GROUP BY
select employee_id,
	name,
    salary
from employee
group by employee_id, name, salary;


# MÉTODO-2: Uso de la función analítica ROW_NUMBER
select employee_id,
	name,
    salary,
    row_number() over(partition by employee_id, name, salary order by employee_id)
from employee;


select employee_id, name, salary
from (select
	employee_id
    name,
    salary,
    row_number () over(partition by employee_id,name, salary order by employee_id)
    from employee);
