-- Crear tabla alumnos
CREATE TABLE alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL
);

-- Insertar primeros 3 alumnos
INSERT INTO alumnos (nombre, apellido) VALUES 
('Juan', 'Perez'),
('Maria', 'Gomez'),
('Carlos', 'Lopez');

-- Agregar columna edad
ALTER TABLE alumnos ADD COLUMN edad INT;

-- Actualizar edades
UPDATE alumnos SET edad = 20 WHERE id = 1;
UPDATE alumnos SET edad = 22 WHERE id = 2;
UPDATE alumnos SET edad = 21 WHERE id = 3;

-- Insertar 3 alumnos
INSERT INTO alumnos (nombre, apellido, edad) VALUES 
('Ana', 'Martinez', 23),
('Luis', 'Rodriguez', 24),
('Sofia', 'Fernandez', 22);

-- Crear tabla materias
CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    alumno_id INT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id)
);

-- Insertar materias
INSERT INTO materias (nombre) VALUES 
('Matematica'),
('Programacion'),
('Base de Datos'),
('Ingles'),
('Sistemas'),
('Laboratorio');


--Insertar alumnos_por_materias
INSERT INTO materias, alumnos (nombre, id) VALUES
('Matematica', 1),
('Programacion', 2),
('Base de Datos', 3),
('Ingles', 4),
('Sistemas', 5),
('Laboratorio', 6);
