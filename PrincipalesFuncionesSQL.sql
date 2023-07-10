-- FUNCIONES AGREGADAS SQL

-- La función AVG() devuelve la media de valores de una columna numérica.
-- La siguiente sentencia devuelve la media del stock que hay en el almacén.
select avg (Stock) from productos;

-- La siguiente sentencia muestra el NombreProducto y el Precio de los registros que tienen un Precio por encima de la media.

/*
Número de valores en una columna (los valores NULL no se cuentan) - select count (nombreColumna) from nombreTabla);
Número de registros en una tabla - select count (*) from nombreTabla ;
Número de valores distintos de una columna - select count (distinct nombreColumna) from nombreTabla;
*/
-- Conocer el número de pedidos del cliente 4
select count(ClienteID) AS PedidosCliente from pedidos where ClienteID = 4;

-- Contar el número de pedidos totales
select count(*) AS PedidosTotales from Pedidos;
select count(distinct ClienteID) AS NumeroClientes from Pedidos;

-- La función MAX() devuelve el mayor valor de la columna seleccionada
-- De la tala Productos vamos a coger el producto más caro
select max(precio) AS ProductoMasCaro from Productos;

-- La función MIN() devuelve el menos valor de la columna seleccionada
-- De la tabla Productos vamos a coger el producto más barato
select min(precio) AS ProductoMasBarato from Productos;

-- La función SUM() devuelve la suma de una columna numérica
-- De la tabla Productos vamos a coger el número total de productos en stock
select sum(Stock) AS ProductosTotales from Productos;

-- La sentencia GROUP BY se utiliza junto con las funciones agregadas para agrupar en un result-set una o más columna
-- Vamos a obtener el número de pedidos realizados por cada cliente
/* select clientes.NombreCliente, count(pedidos.PedidoID) as NumeroPedidos from pedidos
left join clientes
on pedidos.ClienteID = clientes.ClienteID
group by NombreCliente, NombreProducto;*/
SELECT clientes.NombreCliente, productos.NombreProducto, COUNT(pedidos.PedidoID) AS NumeroPedidos
FROM pedidos
LEFT JOIN clientes ON pedidos.ClienteID = clientes.ClienteID
LEFT JOIN productos ON pedidos.ClienteID = productos.ProductoID
GROUP BY clientes.NombreCliente, productos.NombreProducto;
