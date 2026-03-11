/* 
Implementacion de una base de datos en un sistema de informacion
2026/03/10 4-I
Alan dwii angeles hernandeaz
*/
CREATE TABLE Productos (
  id int NOT NULL AUTO_INCREMENT,
  articulo varchar(8) NOT NULL,
  PRIMARY KEY (id)
);
 
INSERT INTO defaultdb.Productos
(id, articulo)
VALUES
(1, 'pan'),
(2, 'azucar'),
(3, 'jugo'),
(4, 'refresco'),
(5, 'harina');

CREATE TABLE Productos_2 (
  id_2 int NOT NULL AUTO_INCREMENT,
  articulo_2 varchar(12) NOT NULL,
  PRIMARY KEY (id_2)
);
 
INSERT INTO defaultdb.Productos_2
(id_2, articulo_2)
VALUES
(1, 'azucar'),
(2, 'pan'),
(3, 'mantequilla'),
(4, 'queso'),
(5, 'manzana');

SELECT * FROM Productos LEFT OUTER JOIN Productos_2 ON Productos.articulo = Productos_2.articulo_2;
UNION ALL
SELECT * FROM Productos RIGHT OUTER JOIN Productos_2 ON Productos.articulo = Productos_2.articulo_2;


create table jerarquia (
id_empleado int not null AUTO_INCREMENT,
id_gerente int not NULL,
puesto varchar(20) not null,
nivel int not null,
PRIMARY KEY (id_empleado, id_gerente)
);

INSERT INTO defaultdb.jerarquia
(id_empleado, id_gerente, puesto, nivel)
VALUES(1001, 0, 'Presidente', 0),
(2002, 1001, 'Director', 1 ),
(3003, 1001, 'Gerente', 1),
(4004, 2002, 'ingeniero', 2 ),
(5005, 2002, 'Contador', 2 ),
(6006, 2002, 'Administrador', 2);

Select * from jerarquia 
order by nivel ASC 

CREATE TABLE clientes (
id_cliente int NOT NULL AUTO_INCREMENT,
id_orden int NOT NULL,
estado_destino varchar(25) NOT NULL,
costo double,
PRIMARY KEY (id_cliente, id_orden)
);

INSERT INTO defaultdb.clientes
(id_cliente, id_orden, estado_destino, costo)
VALUES(1001, 1, 'JAl', 987 ),
(1001, 2, 'CDMX', 400 ),
(1001, 3, 'CDMX', 545 ),
(1001, 4, 'CDMX', 321 ),
(2002, 5, 'MTY', 324 ),
(3003, 6, 'JAl', 931 ),
(4004, 7, 'JAl', 876 ),
(5005, 8, 'CDMX', 567 );

SELECT * FROM clientes 
WHERE estado_destino = 'CDMX' and id_cliente = 1001Z
