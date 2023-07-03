-- Se crea la Base de Datos y la ponemos en uso
create database sql_cheat_sheet;
use sql_cheat_sheet;
-- Creamos las Tablas
create table users (
id int,
first_name varchar (255),
last_name varchar (255),
address varchar (255),
email varchar (255)
);
create table products (
id int,
name varchar (255),
description varchar (255),
stock_count int,
price float
);
create table orders (
id int not null,
user_id int,
product_id int,
agent_logged tinyint
);
-- Modificacmos las tablas creadas antes y establemos las claves principales de cada tabla
alter table users
add primary key (id);
alter table products
add primary key (id);
-- Modificamos la tabla existente y creamos las clases externas para las otras dos tablas
alter table orders
add foreign key (user_id) references users (id),
add foreign key (product_id) references products (id)
;
/*

Comentarios multi líneas

*/
