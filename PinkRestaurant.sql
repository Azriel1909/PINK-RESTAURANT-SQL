CREATE DATABASE PinkRestaurant;

USE PinkRestaurant;

CREATE TABLE TB_Cliente (
	DNI VARCHAR(20),
    Nombre VARCHAR(190),
    Direccion VARCHAR(200),
    Edad SMALLINT,
    Sexo VARCHAR(1),
    Volumen_Compra FLOAT
);

CREATE TABLE TB_Vendedores (
    Matricula VARCHAR(5), 
    Nombre VARCHAR(100), 
    Porcentaje_Comision FLOAT
    );
    
CREATE TABLE TB_Productos (
		Producto VARCHAR(20),
        Nombre VARCHAR(200),
        Cantidad VARCHAR(150),
        Precio FLOAT
    );
    
-- Insertando registros
INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'1', 'Chilaquiles Verdes', '300 gr', 130.00);

INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'2', 'Pozole de Pollo', '300 gr', 150.00);
    
INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'3', 'Jugo de Naranja', '600 ml', 50.00);
    
INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'4', 'Flautas de Pollo', '500 gr', 160.00);

INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'5', 'Jugo de Jamaica', '600 ml', 30.00);
    
INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'6', 'Jugo de Uva', '600 ml', 40.00);    

INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'7', 'Enchiladas de Mole', '300 gr', 160.00);    

INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'8', 'Tostadas de Pollo', '300 gr', 120.00);    
    
INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'9', 'Molletes', '300 gr', 130.00);   
   
  INSERT INTO TB_Productos ( Producto, Nombre, Cantidad, Precio) VALUES (
	'10', 'Cupcakes de Chocolate', '200 gr', 200.00);    

INSERT INTO TB_Cliente ( DNI, Nombre, Direccion, Edad, Sexo, Volumen_Compra) VALUES (
	'123456789123456789', 'Conratt Muller', 'Potsdamer Platz, 10785 Berlin, Alemanía', 25,'h', 300.00); 

SELECT * FROM TB_Productos;

-- Actualizando datos
 -- SET SQL_SAFE_UPDATES = 0;
UPDATE TB_Productos SET  Precio = 135.00
WHERE Producto = '9';
SELECT * FROM TB_Productos;

-- Excluyendo registros
-- DROP - Objetos
-- DELETE - Registros
DELETE FROM TB_Productos WHERE producto = "10";
SELECT * FROM TB_Productos;

-- Crear llaves primarias
-- Impide duplicidad de la información
ALTER TABLE TB_Productos ADD PRIMARY KEY(Producto);

-- Manipulando fechas y campos lógicos
SELECT * FROM TB_Cliente;
ALTER TABLE  TB_Cliente ADD PRIMARY KEY(DNI);
ALTER TABLE  TB_Cliente ADD COLUMN(Fecha_Nacimiento DATE) ;

INSERT INTO TB_Cliente ( DNI, Nombre, Direccion, Edad, Sexo, Volumen_Compra,  Fecha_Nacimiento)  VALUES (
	'234567891234567891', 'Cristin Meyer', 'Berliner Strasse 35 ,13507 Berlín, Deutschland', 26,'m', 400.00,'1970-06-12');  

INSERT INTO TB_Cliente ( DNI, Nombre, Direccion, Edad, Sexo, Volumen_Compra,  Fecha_Nacimiento)  VALUES (
	'321456789012345678', 'Carls Fischer', 'Alt-Moabit 145 , 10557 Berlín, Deutschland', 42,'h', 500.00,'1980-05-16');   
    
INSERT INTO TB_Cliente ( DNI, Nombre, Direccion, Edad, Sexo, Volumen_Compra,  Fecha_Nacimiento)  VALUES (
	'456789012344567890', 'Luan Weber', 'Friedrichstrasse 219 ,10969 Berlín, Deutschland', 32,'h', 300.00,'1990-04-21');   

INSERT INTO TB_Cliente ( DNI, Nombre, Direccion, Edad, Sexo, Volumen_Compra,  Fecha_Nacimiento)  VALUES (
	'567890123456789008', 'Adolfo Weber', 'Schwanebecker Chaussee 50, 13125 Berlin, Germany', 27,'h', 600.00,'1995-05-01');   

UPDATE  TB_Cliente  SET  Fecha_Nacimiento = '1996-09-09'
WHERE DNI =  '123456789123456789';
SELECT * FROM TB_Cliente;

-- Incluyendo datos en la tabla
SELECT Nombre, Sexo, Edad FROM TB_Cliente;

-- Limitar búsqueda
SELECT Nombre, Sexo, Edad, Direccion FROM TB_Cliente LIMIT 2;

-- FIltrando registros
SELECT * FROM TB_Productos;
SELECT * FROM TB_Productos WHERE Cantidad = "300 gr" ;
SELECT * FROM TB_Productos WHERE Cantidad = "600 ml" ;

-- Filtando usando símbolos
SELECT * FROM TB_Productos WHERE  Precio > 120;
SELECT * FROM TB_Cliente WHERE  Edad >=  27;
-- Diferente de
SELECT * FROM TB_Cliente WHERE  Edad <> 27;
SELECT * FROM TB_Cliente WHERE  Edad BETWEEN 30 AND 50;

-- Filtrando Fechas
SELECT * FROM TB_Cliente ;
SELECT * FROM TB_Cliente WHERE Fecha_Nacimiento = '1995-05-01' ;
SELECT * FROM TB_Cliente WHERE Fecha_Nacimiento < '1995-05-01' ;
SELECT * FROM TB_Cliente WHERE Fecha_Nacimiento > '1995-05-01' ;
SELECT * FROM TB_Cliente WHERE YEAR(Fecha_Nacimiento) = 1995 ;
SELECT * FROM TB_Cliente WHERE YEAR(Fecha_Nacimiento) = 1990 ;
SELECT * FROM TB_Cliente WHERE DAY(Fecha_Nacimiento) = 12 ;
SELECT * FROM TB_Cliente WHERE MONTH(Fecha_Nacimiento) = 5 ;

-- Filtros compuestos
SELECT * FROM TB_Productos;
SELECT * FROM TB_Productos WHERE  Precio > 120 AND Precio < 160;
SELECT * FROM TB_Productos WHERE Cantidad  = "300 gr"  
OR Cantidad = "600 ml"; 






























    