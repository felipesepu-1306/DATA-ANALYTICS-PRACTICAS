--══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: [Andres Sepulveda]
-- Fecha: [18-11/2026]

CREATE DATABASE modulo3_unidad5_BodegaTech;

USE modulo3_unidad5_BodegaTech;

-- Paso 1

DROP TABLE IF EXISTS inventario;

-- Paso 2

CREATE TABLE inventario(
id_producto int NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre_producto varchar(100) NOT NULL,
categoria varchar(50) NOT NULL,
precio_unitario decimal(10,2) NOT NULL,
stock_actual int NOT NULL,
stock_minimo int NOT NULL, 
fecha_ingreso date NOT NULL,
activo BIT NOT NULL
);

-- En id producto usamos valores enteros y que vayan incrementando para asegurarse que el valor de ID no se repita
-- En el nombre de producto usamos un varchar de longitud 100 para poder poner textos largos ya que algunos productos pueden ser un poco largos
-- Para el precio usamos un valor decimal y no un float porque si no el valor no va a ser visto como un valor numerico como debe ser. 
-- Para el dato de activo usamos un dato BIT ya que es un valor booleano, no use tinyint porque no me lo esta reconociendo SQL

-- Paso 3

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1);


INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15',1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

--Paso 4

UPDATE inventario SET stock_actual = 15-3 WHERE id_producto = 1;
UPDATE inventario SET stock_actual = 80-12 WHERE id_producto = 2;
UPDATE inventario SET stock_actual = 35-5 WHERE id_producto = 6;

--Paso 5

UPDATE inventario SET activo = 0 WHERE nombre_producto = 'Webcam HD 1080p';

--Paso 6

SELECT * FROM inventario;