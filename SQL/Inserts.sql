INSERT INTO MEMBRESIA (tipo, condicion)
VALUES
    ('Estudiante', 'Activa'),
    ('Estudiante', 'Activa'),
    ('Docente', 'Activa'),
    ('Estudiante', 'Inactiva'),
    ('Docente', 'Inactiva');

INSERT INTO CLIENTE (cedula, nombres, apellidos, id_membresia)
VALUES
    ('0912345678', 'Juan', 'Pérez', 1),
    ('0987654321', 'María', 'Gómez', 2),
    ('0123456789', 'Carlos', 'Ruiz', 3),
    ('1712345678', 'Ana', 'López', 4),
    ('1787654321', 'Luis', 'Fernández', 5);

INSERT INTO EDITORIAL (nombre)
VALUES
    ('Editorial Planeta'),
    ('McGraw Hill'),
    ('Penguin Random House'),
    ('Pearson Educación'),
    ('O Reilly Media');

INSERT INTO LIBRO (titulo, ISBN, categoria, id_editorial)
VALUES
    ('Cien Años de Soledad', '978-84-376-0494-7', 'Novela', 3),
    ('Física Universitaria', '978-607-32-4439-8', 'Ciencias', 4),
    ('Clean Code', '978-0-13-235088-4', 'Tecnología', 5),
    ('El Quijote', '978-84-241-1627-1', 'Clásico', 1),
    ('Cálculo de Stewart', '978-607-15-1191-1', 'Matemáticas', 2);

INSERT INTO AUTOR (nombre, apellido)
VALUES
    ('Gabriel', 'García Márquez'),
    ('Robert', 'Martin'),
    ('Miguel', 'de Cervantes'),
    ('James', 'Stewart'),
    ('Hugh', 'Young');
