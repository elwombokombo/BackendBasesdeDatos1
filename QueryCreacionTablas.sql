DROP DATABASE ObligatorioBD1;

CREATE DATABASE ObligatorioBD1;

USE ObligatorioBD1;

CREATE TABLE Logueo (
    correo VARCHAR(30) NOT NULL,
    contraseña VARCHAR(30) NOT NULL,
    PRIMARY KEY (correo)
);

CREATE TABLE Actividades (
    id INT NOT NULL,
    descripcion VARCHAR(50),
    costo DECIMAL(10, 2) NOT NULL,
    res_edad INT,
    PRIMARY KEY (id)
);

CREATE TABLE Equipamiento (
    id INT NOT NULL,
    id_actividad INT NOT NULL,
    descripcion VARCHAR(50),
    costo DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_actividad) REFERENCES Actividades(id)
);

CREATE TABLE Instructores (
    ci SMALLINT NOT NULL,
    nombre CHAR(15) NOT NULL,
    apellido CHAR(20) NOT NULL,
    PRIMARY KEY (ci)
);

CREATE TABLE Turnos (
    id INT NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Alumnos (
    ci SMALLINT NOT NULL,
    nombre CHAR(15) NOT NULL,
    apellido CHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono_contacto INT,
    correo VARCHAR(30) NOT NULL,
    PRIMARY KEY (ci)
);

CREATE TABLE Clase (
    id INT NOT NULL,
    ci_instructor SMALLINT NOT NULL,
    id_actividad INT NOT NULL,
    id_turno INT NOT NULL,
    dictada BOOL NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (ci_instructor) REFERENCES Instructores(ci),
    FOREIGN KEY (id_actividad) REFERENCES Actividades(id),
    FOREIGN KEY (id_turno) REFERENCES Turnos(id)
);

CREATE TABLE Alumno_clase (
    id_clase INT NOT NULL,
    ci_alumno SMALLINT NOT NULL,
    id_equipamiento INT NOT NULL,
    PRIMARY KEY (id_clase, ci_alumno, id_equipamiento), -- Requiere PRIMARY KEY para evitar duplicados
    FOREIGN KEY (id_clase) REFERENCES Clase(id),
    FOREIGN KEY (ci_alumno) REFERENCES Alumnos(ci),
    FOREIGN KEY (id_equipamiento) REFERENCES Equipamiento(id)
);
