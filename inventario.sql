CREATE DATABASE IF NOT EXISTS inventario_db;
USE inventario_db;

CREATE TABLE IF NOT EXISTS articulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    cantidad INT
);

INSERT INTO articulos (nombre, cantidad) VALUES ('Lápices HB', 50), ('Resmas de Papel A4', 20), ('Marcadores Borrables', 15), ('Grapadoras', 5);

CREATE USER IF NOT EXISTS 'elinath'@'%' IDENTIFIED BY 'elinath_123';
GRANT ALL PRIVILEGES ON inventario_db.* TO 'elinath'@'%';
FLUSH PRIVILEGES;
