'''Nivel dificultad: Fácil'''
'''
2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).
'''
CREATE TABLE IF NOT EXISTS usuarios(
id INT PRIMARY KEY,
nombre VARCHAR(50),
edad INT
);
'''
3. Inserta dos registros en la tabla "Usuarios".
'''
INSERT INTO usuarios (id, nombre, edad)
VALUES
(1, 'Carol', 31)
INSERT INTO usuarios (id, nombre, edad)
VALUES
(2, 'Laura', 32)
'''
4. Actualiza la edad de un usuario en la tabla "Usuarios".
'''
UPDATE usuarios
SET edad = 33
WHERE id = 2
'''
5. Elimina un usuario de la tabla "Usuarios".
'''
DELETE FROM usuarios
WHERE id = 2

'''Nivel dificultad: Moderado'''
'''
1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).
'''
CREATE TABLE IF NOT EXISTS ciudades(
id INT PRIMARY KEY,
nombre VARCHAR(50),
pais VARCHAR(50)
);
'''
2. Inserta al menos tres registros en la tabla "Ciudades".
'''
INSERT INTO ciudades (id, nombre, pais)
VALUES
(1, 'Girona', 'España'),
(2, 'Alicante', 'España'),
(3, 'Liepzig', 'Alemania'),
(4, 'Puerto Vallarta', 'México')

'''
3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".
'''
ALTER TABLE usuarios
ADD COLUMN ciudad_id INT

UPDATE pedidos
SET producto_id = 1
WHERE id = 1;

INSERT INTO usuarios(id, nombre, edad, ciudad_id)
VALUES
(2, 'Laura', 33, 2)

ALTER TABLE usuarios
ADD FOREIGN KEY (ciudad_id)
REFERENCES ciudades(id)
'''
4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).
'''
SELECT usuarios.nombre, ciudades.nombre, pais
FROM usuarios
LEFT JOIN ciudades
ON usuarios.ciudad_id = ciudades.id
'''
5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).
'''
SELECT usuarios.nombre, ciudades.nombre
FROM usuarios
INNER JOIN ciudades
ON usuarios.ciudad_id = ciudades.id
GROUP BY ciudades.nombre, usuarios.nombre
