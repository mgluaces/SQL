-- Contar intentos fallidos de usuarios
select usuarios.id, usuarios.correo,
(select count(*) from intentos_usuarios where id_usuario = usuarios.id) intentos_fallidos
from usuarios

/*
En este caso, el usuario con el id 1 ya lleva 2 intentos fallidos, pues su id aparece dos veces en la tabla intentos_usuarios. 
Se puede hacer un count(*) de esa tabla usando un where, pero si quiero la lista completa de usuarios junto con el conteo, haría esto. 
Y de este modo sin usar inner join se puede unir las dos tablas o mejor dicho, obtener datos agrupados de la segunda tabla, gracias a las subconsultas.
*/
