'''
1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y
"id_producto" (entero, clave foránea de la tabla "Productos").
'''
CREATE TABLE pedidos(
id INT PRIMARY KEY,
id_usuario INT REFERENCES usuarios(id),
id_producto INT REFERENCES productos(id)
)
'''
2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con
productos.
'''
INSERT INTO pedidos(id, id_usuario, id_producto)
VALUES
(1, 2, 5),
(2, 4, 1),
(3, 1, 1)
'''
3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de
los productos que han comprado, incluidos aquellos que no han realizado
ningún pedido (utiliza LEFT JOIN y COALESCE).
'''
SELECT COALESCE(usuarios.nombre) AS nombres_usuarios, productos.nombre
FROM usuarios
LEFT JOIN productos
ON productos.usuario_id = usuarios.id

''' DUDA: Para qué hace falta COALESCE? Sin coalesce también funciona'''

'''
4. Realiza una consulta que muestre los nombres de los usuarios que han
realizado un pedido, pero también los que no han realizado ningún pedido
(utiliza LEFT JOIN).
'''
SELECT usuarios.nombre
FROM usuarios
LEFT JOIN pedidos
ON usuarios.id = pedidos.id_usuario

''' Con inner join no funcionaría y no muestra los valores vacíos de pedidos'''
'''
5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza
los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)
'''
ALTER TABLE pedidos
ADD COLUMN cantidad INT

UPDATE pedidos
SET cantidad = 20
WHERE id = 1

UPDATE pedidos
SET cantidad = 15
WHERE id = 2

UPDATE pedidos
SET cantidad = 0
WHERE id = 3



