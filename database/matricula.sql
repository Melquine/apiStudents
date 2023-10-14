--Script para crear en una sola ejecución la base de datos, tablas y datos

--Crear base de datos
GO
CREATE DATABASE Matricula;
GO

--Usar base de datos
USE Matricula;
GO

--Crear tabla alumnos
CREATE TABLE alumnos(
id_alumno int IDENTITY(1,1) NOT NULL,
nombre nvarchar(100) NOT NULL,
apellidos nvarchar(100) NOT NULL,
PRIMARY KEY(id_alumno)
);
GO

--Insertar alumnos
INSERT INTO alumnos VALUES 
('Alejandro', 'Martinez'),
('Armando', 'Gomez'),
('Sofia', 'Valverde'),
('Andrea', 'Montero'),
('Rebeca', 'Cordero'),
('Gloriana', 'Quiros'),
('Karen', 'Villa');
GO

--Crear tabla cursos
CREATE TABLE cursos(
id_curso int IDENTITY(1,1) NOT NULL,
nombre nvarchar(100) NOT NULL,
descipcion nvarchar(500) NOT NULL,
PRIMARY KEY(id_curso)
);
GO

--Insertar cursos
INSERT INTO cursos VALUES 
('Bases de datos', 'Curso de base de datos relacionales y no relacionales'),
('React', 'Curso de la libreria de JS React para Frontend'),
('Angular', 'Curso del framework de JS Angular para Frontend');
GO


--Crear tabla matricula
CREATE TABLE matricula(
id_matricula int IDENTITY(1,1) NOT NULL,
id_alumno int NOT NULL,
id_curso int NOT NULL,
PRIMARY KEY(id_matricula),
CONSTRAINT FK_MatriculaAlumno FOREIGN KEY (id_alumno) REFERENCES alumnos(id_alumno),
CONSTRAINT FK_MatriclaCurso FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);
GO

--Insertar datos matriculados
INSERT INTO matricula VALUES
(1,1),
(2,1),
(3,2),
(4,2),
(5,3),
(6,3),
(7,3);
GO





SELECT m.id_matricula, a.nombre, c.nombre FROM matricula m
inner join alumnos a on a.id_alumno = m.id_alumno
inner join cursos c on c.id_curso = m.id_curso

go

