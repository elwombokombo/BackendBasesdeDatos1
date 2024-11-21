USE ObligatorioBD1;

INSERT INTO actividades VALUES
(1,'Snowboard', 2000, 16),
(2, 'Ski', 3000, 18),
(3, 'moto de nieve', 4000, 18);

INSERT INTO equipamiento VALUES 
(1, 1, 'Full Equip, Casco, Lentes, Tabla, Ropa', 1000),
(2, 2, 'Full Equip, Casco, Lentes, Tabla, Ropa', 1000),
(3, 3, 'Full Equip, Casco, Lentes, Moto, Ropa', 3000);

INSERT INTO turnos VALUES
(1, '09:00:00', '11:00:00'),
(2, '12:00:00', '14:00:00'),
(3, '16:00:00', '18:00:00');

INSERT INTO instructores VALUES
(98765432, 'Ignacio', 'Mendez'),
(87654321, 'Guzman', 'Rodriguez'),
(76543210, 'Diego', 'Hernandez'),
(65432109, 'Juan', 'Aguirre');

INSERT INTO alumnos VALUES 
(12345678, 'Juan', 'Perez', '2001-01-01', 099123456, 'j.perez@gmail.com'),
(23456789, 'Pedro', 'Sosa', '2000-02-22', 099234567, 'p.sosa@gmail.com'),
(34567890, 'Rodrigo', 'Sanchez', '1999-09-24', 099345678, 'r.sanchez@gmail.com'),
(45678901, 'Sofia', 'Ramirez', '2002-03-05', 099456789, 's.ramirez@gmail.com');

INSERT INTO clase VALUES
(1, 98765432, 1, 1, false),
(2, 98765432, 1, 2, false),
(3, 98765432, 1, 3, false);


