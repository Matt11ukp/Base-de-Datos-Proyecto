SELECT titulo, ISBN, categoria
FROM Libro
WHERE categoria != 'Novela';

SELECT nombres, apellidos, tipo
FROM CLIENTE
NATURAL JOIN MEMBRESIA
WHERE condicion = 'Inactiva';

SELECT titulo, categoria, nombre
FROM LIBRO
NATURAL JOIN EDITORIAL
WHERE nombre LIKE 'P%';

SELECT nombres, apellidos, titulo, categoria
FROM LIBRO
CROSS JOIN CLIENTE
NATURAL JOIN MEMBRESIA
WHERE (categoria = 'Tecnología' OR categoria = 'Ciencias')
  AND tipo = 'Estudiante'
  AND condicion = 'Activa';



ALTER TABLE Editorial RENAME COLUMN nombre TO nom_editorial;

SELECT titulo, nombre, apellido, nom_editorial
FROM Libro
NATURAL JOIN Editorial
CROSS JOIN Autor
WHERE nom_editorial = 'Penguin Random House'
  AND apellido = 'García Márquez';
