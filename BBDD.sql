CREATE DATABASE reconocimiento_facial;
USE reconocimiento_facial;


-- CREAMOS LA TABLA USUARIOS
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contra VARCHAR(100) NOT NULL,
    imagen_facial BLOB,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- CREAMOS LA TABLA ACCESO
CREATE TABLE Accesos (
    id_acceso INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    fecha_acceso DATETIME DEFAULT CURRENT_TIMESTAMP,
    resultado_acceso VARCHAR(50),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- CREAMOS LA TABLA ALERTAS
CREATE TABLE Alertas (
    id_alerta INT AUTO_INCREMENT PRIMARY KEY,
    id_acceso INT,
    tipo_alerta VARCHAR(100),
    fecha_alerta DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_acceso) REFERENCES Accesos(id_acceso)
);










