CREATE TABLE MEMBRESIA (
    id_membresia INT NOT NULL AUTO_INCREMENT,
    tipo ENUM('Estudiante', 'Docente') NOT NULL,
    condicion ENUM('Activa', 'Inactiva') NOT NULL DEFAULT 'Activa',
    PRIMARY KEY (id_membresia)
);

CREATE TABLE CLIENTE (
    cedula VARCHAR(10) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    id_membresia INT NOT NULL,
    PRIMARY KEY (cedula),
    FOREIGN KEY (id_membresia) REFERENCES MEMBRESIA(id_membresia)
);

CREATE TABLE EDITORIAL (
    id_editorial INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_editorial)
);

CREATE TABLE LIBRO (
    id_libro INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(80) NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    categoria VARCHAR(25) NOT NULL,
    id_editorial INT NOT NULL,
    PRIMARY KEY (id_libro),
    UNIQUE (ISBN),
    FOREIGN KEY (id_editorial) REFERENCES EDITORIAL(id_editorial)
);

CREATE TABLE AUTOR (
    id_autor INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_autor)
);
