-- Crear la base de datos
CREATE DATABASE PaseDeListaDB;
GO

-- Usar la base de datos
USE PaseDeListaDB;
GO

-- Crear tabla Maestros
CREATE TABLE Maestros (
    MaestroID INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Materia VARCHAR(50) NOT NULL
);
GO

-- Insertar algunos maestros de ejemplo
INSERT INTO Maestros (MaestroID, Nombre, Materia)
VALUES 
    (4, 'Carlos Alberto', 'Cálculo integral'),
    (5, 'Juan José', 'Sistemas operativos'),
    (6, 'León', 'Telecomunicaciones');


-- Crear tabla Cursos
CREATE TABLE Clases (
    CursoID INT PRIMARY KEY,
    NombreCurso VARCHAR(50) NOT NULL
);
GO

-- Insertar algunos cursos de ejemplo
INSERT INTO Clases (CursoID, NombreCurso)
VALUES 
    (201, 'Cálculo integral I'),
    (202, 'Sistemas operativos'),
    (203, 'Telecomunicaciones');


-- Crear tabla Asistencias
CREATE TABLE Asistencias (
    AsistenciaID INT PRIMARY KEY,
    MaestroID INT,
    ClaseID INT,
    Fecha DATE,
    Presente BIT,
    Justificacion BIT,
    Falta BIT,
    Retraso BIT,
    FOREIGN KEY (MaestroID) REFERENCES Maestros(MaestroID),
    FOREIGN KEY (ClaseID) REFERENCES Cursos(CursoID)
);


-- Crear tabla Estadisticas
CREATE TABLE Estadisticas (
    EstadisticaID INT PRIMARY KEY,
    MaestroID INT,
    ClaseID INT,
    Mes INT,
    TotalAsistencias INT,
    TotalJustificaciones INT,
    TotalFaltas INT,
    TotalRetrasos INT,
    FOREIGN KEY (MaestroID) REFERENCES Maestros(MaestroID),
    FOREIGN KEY (ClaseID) REFERENCES Cursos(CursoID)
);
GO
