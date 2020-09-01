CREATE DATABASE posts;
--\c posts
CREATE TABLE post(id SERIAL, usuario VARCHAR(25), fecha_de_creacion DATE, contenido VARCHAR, descripcion VARCHAR, PRIMARY KEY (id));
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', NOW()::DATE, 'no especifico', 'no especifico');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', NOW()::DATE, 'no especifico', 'no especifico');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Carlos', NOW()::DATE, 'no especifico', 'no especifico');
ALTER TABLE post ADD titulo VARCHAR(25);
UPDATE post SET titulo = 'PAM' WHERE id = 1;
UPDATE post SET titulo = 'PAM' WHERE id = 2;
UPDATE post SET titulo = 'CAR' WHERE id = 3;
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', NOW()::DATE, 'no especifico', 'no especifico', 'PED');
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Pedro', NOW()::DATE, 'no especifico', 'no especifico', 'PED');
DELETE FROM post WHERE id = 3;
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Carlos', NOW()::DATE, 'no especifico', 'no especifico', 'CAR');
CREATE TABLE comentarios(id SERIAL, fecha_hora_creacion TIMESTAMP, contenido VARCHAR, id_post INT, PRIMARY KEY (id), FOREIGN KEY (id_post) REFERENCES post(id));
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 1);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 1);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 6);
INSERT INTO post (usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES ('Margarita', NOW()::DATE, 'no especifico', 'no especifico', 'MAR');
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
INSERT INTO comentarios (fecha_hora_creacion, contenido, id_post) VALUES (NOW(), 'no especifico', 7);
