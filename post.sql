--1.Crear Base de datos posts 
CREATE DATABASE posts;
--\c posts
--2.Crear tabla post
CREATE TABLE post(id SERIAL, usuario VARCHAR(25), fecha_de_creacion DATE, contenido VARCHAR, descripcion VARCHAR, PRIMARY KEY (id));
--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', NOW()::DATE, 'no especifico', 'no especifico');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', NOW()::DATE, 'no especifico', 'no especifico');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Carlos', NOW()::DATE, 'no especifico', 'no especifico');
--Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(25);
--5. Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo = 'PAM' WHERE id = 1;
UPDATE post SET titulo = 'PAM' WHERE id = 2;
UPDATE post SET titulo = 'CAR' WHERE id = 3;
--6. Insertar 2 post para el usuario "Pedro" 
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', NOW()::DATE, 'no especifico', 'no especifico', 'PED');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', NOW()::DATE, 'no especifico', 'no especifico', 'PED');
--7. Eliminar el post de Carlos
DELETE FROM post WHERE id = 3;
--8. Ingresar un nuevo post para el usuario "Carlos" 
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Carlos', NOW()::DATE, 'no especifico', 'no especifico', 'CAR');
--9. Crear una nueva tabla, llamada comentarios
CREATE TABLE comentarios(id SERIAL, fecha_hora_creacion TIMESTAMP, contenido VARCHAR, id_post INT, PRIMARY KEY (id), FOREIGN KEY (id_post) REFERENCES post(id));
--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 1);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 1);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
--11. Crear un nuevo post para "Margarita" 
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Margarita', NOW()::DATE, 'no especifico', 'no especifico', 'MAR');
--12. Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
