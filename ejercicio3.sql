'''
1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico).
'''
CREATE TABLE productos(
id INT PRIMARY KEY,
nombre VARCHAR(25),
precio INT
)
'''
2. Inserta al menos cinco registros en la tabla "Productos".
'''
INSERT INTO productos (id, nombre, precio)
VALUES
(1, 'auriculares', 25.90)
'''
3. Actualiza el precio de un producto en la tabla "Productos".
'''
INSERT INTO productos (id, nombre, precio)
VALUES
(1, 'auriculares', 40.90),
(2, 'ordenador', 500),
(3, 'raton', 25),
(4, 'pantalla', 50.50),
(5, 'silla', 127.99)
'''
4. Elimina un producto de la tabla "Productos".
'''
DELETE FROM productos
WHERE id = 3
'''
5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").
'''
SELECT usuarios.nombre, productos.nombre
FROM usuarios
INNER JOIN productos
ON usuarios.id = productos.usuario_id


