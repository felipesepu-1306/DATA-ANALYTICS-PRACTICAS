CREATE DATABASE modulo3_unidad1_diseno;

USE modulo3_unidad1_diseno;

CREATE TABLE clientes(
id_cliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre varchar(100) NOT NULL,
perfil_bio varchar(300) NOT NULL,
fecha_registro DATE NOT NULL
);

-- Use varchar de 300 para el perfil bio para poder poner un poco mas de texto en la descripcion. 
--Tambien use solo date ya que no estaban pidiendo horas especificas

CREATE TABLE productos(
id_producto int NOT NULL IDENTITY(1,1) PRIMARY KEY, 
descripcion varchar(255) NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
esta_activo varchar(3) NOT NULL
);

--Para esta tabla use un valor decimal para el precio ya que es lo mas recomendado para este tipo de dato 
--Para saber si el producto esta activo o no use varchar de 3, para poder escribir si o no, sin embargo creo que un campo booleano, seria mejor en este caso, pero todavia no lo hemos visto en el desarrollo del curso. 