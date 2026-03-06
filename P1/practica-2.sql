/* 
Implementacion de una base de datos en un sistema de informacion
2026/03/04 4-I
Alan Dwii Angeles Hdez
*/

CREATE TABLE departamentos (
  id int NOT NULL,
  name varchar(25) NOT NULL,
  location date NOT NULL,
  PRIMARY KEY (id, name)
);


CREATE TABLE empleados ( 
  id int NOT NULL,
  nombre varchar(30) NOT NULL,
  edad integer NOT NULL, 
  salario double,
  PRIMARY KEY (id, nombre)
);
  
INSERT INTO empleados (id, nombre, edad, salario)
VALUES 
(1, 'Alan DWII', 15, 200),
(2, 'Rodrigo H.', 15, 350),
(3, 'Joel C.', 15, 200),
(4, 'Job N.', 15, 300),
(5, 'Carlos G', 15, 267);

ALTER TABLE empleados
ADD departamentos date;

ALTER TABLE empleados
MODIFY COLUMN salario integer;

ALTER TABLE empleados
DROP COLUMN departamentos;

DROP TABLE departamentos;

Truncate Table empleados;

RENAME TABLE empleados to staff

SELECT * FROM staff 

CREATE SCHEMA rh_db;

ALTER SCHEMA rh_db TRANSFER staff;


