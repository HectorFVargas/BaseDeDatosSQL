DROP DATABASE IF EXISTS VENTAS;

CREATE DATABASE IF NOT EXISTS VENTAS;

USE VENTAS;

CREATE TABLE Tipo_Producto (
        Id_Tipo_Producto INT PRIMARY KEY,
        Tipo_Producto VARCHAR(50) NOT NULL,
        Fecha_Creacion DATETIME DEFAULT current_timestamp
    );

INSERT INTO Tipo_Producto(Id_Tipo_Producto,Tipo_Producto)
VALUES  (1,'Computacion'),
        (2,'Audio'),
        (3,'Video'),
        (4,'Otros'),
        (5,'Linea blanca'),
        (6,'Oficina');

SELECT * FROM Tipo_Producto;


CREATE TABLE Producto (
        codigo_Producto INT PRIMARY KEY,
        Producto VARCHAR(50) NOT NULL,
        Tipo INT NOT NULL,
        Valor FLOAT NOT NULL,
        Fecha_Creacion DATETIME DEFAULT current_timestamp,
        FOREIGN KEY (Tipo) REFERENCES Tipo_Producto(Id_Tipo_Producto)
    );

INSERT INTO Producto(codigo_Producto, Producto, Tipo, Valor)
VALUES  (1000, 'Impresora', 1, 540000),
        (1005, 'Grabadora', 2, 85000),
        (1010, 'Camara digital', 3, 350000),
        (1015, 'Control remoto universal', 4, 25000),
        (1020, 'Radio portatil', 2, 400000),
        (1025, 'Secadora de ropa', 5, 2000000),
        (1030, 'Web Cam', 1, 75000),
        (1035, 'Computadora', 1, 3000000),
        (1040, 'Lavadora', 5, 2000000),
        (1045, 'Equipo de sonido', 2, 1000000),
        (1050, 'Ventilador', 4, 230000),
        (1055, 'Escaner', 1, 286000),
        (1060, 'Reloj despertador', 4, 75000),
        (1065, 'Fotocopiadora', 6, 900000),
        (1070, 'TV', 3, 2800000),
        (1075, 'Maquina de escribir', 6, 50000),
        (1080, 'Pinza alisar pelo', 4, 120000),
        (1085, 'DVD', 3, 266000),
        (1090, 'Tostadora pan', 5, 95000),
        (1095, 'Plancha', 5, 74000),
        (1100, 'Masajeador para pies', 4, 89000),
        (1105, 'UPS', 4, 154000),
        (1110, 'Reloj de pared', 4, 54000),
        (1115, 'Soundround', 4, 99000),
        (1120, 'Aire acondicionado', 4, 360000),
        (1125, 'Nevera', 5, 3000000),
        (1130, 'Video camara', 3, 280000),
        (1135, 'Secador de pelo', 4, 98000),
        (1140, 'Fax', 6, 125000);


SELECT * FROM Producto;


CREATE TABLE Vendedor (
        Codigo_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
        Nombres VARCHAR(50) NOT NULL,
        Apellidos VARCHAR(50) NOT NULL,
        Genero CHAR(1) CHECK (Genero IN ('M', 'F')),
        Telefono VARCHAR(10) NOT NULL,
        Direccion VARCHAR(50) NOT NULL,
        Fecha_Nacimiento DATE NOT NULL,
        Ciudad VARCHAR(50) NOT NULL,
        Edad INT NOT NULL,
        Profesion VARCHAR(50) NOT NULL,
        Eps_Codigo VARCHAR(50) NOT NULL,
        Valor_Eps FLOAT NOT NULL,
        Salario_Base FLOAT NOT NULL,
        Aportes_Salud FLOAT NOT NULL,
        Aportes_Pension FLOAT NOT NULL,
        Fecha_Creacion DATETIME DEFAULT current_timestamp
    );
INSERT INTO Vendedor (Nombres, Apellidos, Genero, Telefono, Direccion, Fecha_Nacimiento,
        Ciudad, Edad, Profesion, Eps_Codigo, Valor_Eps, Salario_Base, Aportes_Salud, Aportes_Pension)
VALUES  ('Martha', 'Gonzalez', 'F', '3321212312', 'Calle 79', '1963/12/12', 'Guaduas', 45, 'Ing. Industrial', 'qwe-123', 76000, 1900000, 76000,256500),
        ('enrique', 'Garay Moreno', 'M', '45454554', 'Calle 46', '1973/2/15', 'Bogota', 32, 'Administrador E', 'qwe-124', 48000, 1200000, 48000,162000),
        ('maria', 'Murillo Martinez', 'F', '4157840', 'Calle 74', '1978/4/25', 'Bogota', 18, 'Ing. Sistemas', 'qwe-125', 152000, 3800000, 152000,513000),
        ('yolanda', 'Murillo Martinez', 'F', '4157840', 'Calle 74', '1978/4/25', 'Bogota', 18, 'Ing. Sistemas', 'qwe-126', 152000, 3800000, 152000,513000),
        ('Enrique', 'George Martinez', 'M', '6540893', 'Carrera 83', '1976/7/12', 'La Dorada', 20, 'Adm. Empresas', 'qwe-127', 200000, 5000000, 200000,675000),
        ('estre', 'Medina', 'M', '6540893', 'Carrera 83', '1976/7/12', 'La Dorada', 20, 'Adm. Empresas', 'qwe-128', 200000, 5000000, 200000,675000),
        ('Yaneth', 'Diaz Y', 'F', '3356742', 'Carrera 78', '1974/3/2', 'Bogota', 22, 'Contador', 'qwe-129', 142400, 3560000, 142400,480600),
        ('Miryam', 'Diaz Y', 'F', '3356742', 'Carrera 78', '1974/3/2', 'Bogota', 22, 'Contador', 'qwe-130', 142400, 3560000, 142400,480600),
        ('Jose Ignacio', 'Gomez', 'M', '5654454', 'Carrera 26', '1955/8/3', 'Bogota', 22, 'Agronomo', 'qwe-131', 64000, 1600000, 64000,216000),
        ('maria', 'Murillo Martinez', 'F', '8787887', 'Calle 74', '1978/4/25', 'Bogota', 22, 'Ing. Sistemas', 'qwe-132', 48000, 1200000, 48000,162000),
        ('Ivan', 'Ramirez', 'M', '3445690', 'Calle 26', '1973/8/11', 'Bogota', 23, 'Ingeniero Civil', 'qwe-133', 257515, 6437890, 257515,869115),
        ('Sergio', 'Camacho', 'M', '3445690', 'Calle 26', '1973/8/11', 'Bogota', 23, 'Ingeniero Civil', 'qwe-134', 257515, 6437890, 257515,869115),
        ('Jairo', 'Garay Moreno', 'M', '4187540', 'Calle 46', '1973/2/15', 'Bogota', 23, 'Administrador E', 'qwe-135', 32000, 800000, 32000,108000),
        ('Alfonso', 'Moreno', 'M', '4187540', 'Calle 46', '1973/2/15', 'Bogota', 23, 'Administrador E', 'qwe-136', 32000, 800000, 32000,108000),
        ('Luis', 'Sandino Restrepo', 'M', '6123740', 'Carrera 93', '1966/3/2', 'Girardot', 23, 'Abogado', 'qwe-137', 192000, 4800000, 192000,648000),
        ('fanny', 'Sandino Restrepo', 'M', '6123740', 'Carrera 93', '1966/3/2', 'Girardot', 23, 'Abogado', 'qwe-138', 192000, 4800000, 192000,648000),
        ('Jose', 'Roa Villada', 'M', '33364078', 'Carrera 30', '1960/8/12', 'Barranquilla', 23, 'Ing. Industrial', 'qwe-139', 180000, 4500000, 180000,607500),
        ('juan', 'Roa Villada', 'M', '33364078', 'Carrera 30', '1960/8/12', 'Barranquilla', 23, 'Ing. Industrial', 'qwe-140', 180000, 4500000, 180000,607500),
        ('Jose', 'Romero', 'M', '6142844', 'Calle 15', '1961/9/3', 'Bogota', 25, 'Ingeniero', 'qwe-141', 31600, 790000, 31600,106650),
        ('Fabian', 'Tello Luna', 'M', '6142844', 'Calle 15', '1961/9/3', 'Bogota', 25, 'Ingeniero', 'qwe-142', 31600, 790000, 31600,106650),
        ('Luis David', 'Gonzalez', 'M', '3124566', 'Calle 140', '1970/6/24', 'Bogota', 26, 'Adm. Empresas', 'qwe-143', 94259, 2356489, 94259,318126),
        ('Carlos', 'Ramirez', 'M', '3124566', 'Calle 140', '1970/6/24', 'Bogota', 26, 'Adm. Empresas', 'qwe-144', 94259, 2356489, 94259,318126),
        ('Nelsy', 'Trujillo Guzman', 'F', '6113896', 'Calle 80', '1968/8/2', 'Manizalez', 28, 'Agente aduanas', 'qwe-145', 24000, 600000, 24000,81000),
        ('Magda', 'Gonzalez', 'F', '6113896', 'Calle 80', '1968/8/2', 'Manizalez', 28, 'Agente aduanas', 'qwe-146', 24000, 600000, 24000,81000),
        ('Juan Carlos', 'Camacho Valderrama', 'M', '4567892', 'Calle 93', '1967/7/12', 'Bogota', 29, 'Contador', 'qwe-147', 50240, 1256000, 50240,169560),
        ('Doris', 'George Martinez', 'M', '4567892', 'Calle 93', '1967/7/12', 'Bogota', 29, 'Contador', 'qwe-148', 50240, 1256000, 50240,169560),
        ('elizabeth', 'Diaz', 'F', '9899989', 'Carrera 76', '1974/3/2', 'Bogota', 32, 'Contador', 'qwe-149', 72000, 1800000, 72000,243000),
        ('Martha', 'Garzon Gonzalez', 'F', '3124567', 'Calle 79', '1963/12/12', 'Guaduas', 33, 'Ing. Industrial', 'qwe-150', 96000, 2400000, 96000,324000),
        ('Walqui', 'Garzon', 'F', '3124567', 'Calle 79', '1963/12/12', 'Guaduas', 33, 'Ing. Industrial', 'qwe-151', 96000, 2400000, 96000,324000),
        ('Jose Ignacio', 'Gomez', 'M', '4569034', 'Carrera 29', '1955/8/3', 'Bogota', 41, 'Agronomo', 'qwe-152', 100000, 2500000, 100000,337500),
        ('Francisco', 'Romero', 'M', '4569034', 'Carrera 29', '1955/8/3', 'Bogota', 41, 'Agronomo', 'qwe-153', 100000, 2500000, 100000,337500),
        ('alvaro', 'Romero', 'M', '6142844', 'Calle 15', '1961/9/3', 'Bogota', 45, 'Ingeniero', 'qwe-154', 48000, 1200000, 48000,162000),
        ('Martha', 'Tello Luna', 'F', '6842340', 'Calle 75', '1951/8/9', 'Anapoima', 45, 'Abogada', 'qwe-155', 202279, 5056988, 202279,682693),
        ('Natalia', 'Trujillo', 'F', '6842340', 'Calle 75', '1951/8/9', 'Anapoima', 45, 'Abogada', 'qwe-156', 202279, 5056988, 202279,682693),
        ('Juan', 'Camacho', 'M', '7887889', 'Calle 96', '1967/7/12', 'Bogota', 45, 'Contador', 'qwe-157', 80000, 2000000, 80000,270000),
        ('David', 'Gonzalez', 'M', '56566444', 'Calle 140', '1970/6/24', 'Bogota', 45, 'Adm. Empresas', 'qwe-158', 84000, 2100000, 84000,283500),
        ('Enrique George', 'Martinez', 'M', '87889545', 'Carrera 123', '1976/7/12', 'La Dorada', 45, 'Adm. Empresas', 'qwe-159', 56000, 1400000, 56000,189000),
        ('Luis', 'Restrepo', 'M', '8888877', 'Carrera 105', '1966/3/2', 'Girardot', 52, 'Abogado', 'qwe-160', 52000, 1300000, 52000,175500),
        ('nelly', 'Torres Guzman', 'F', '2122222', 'Calle 80', '1968/8/2', 'Manizalez', 54, 'Agente aduanas', 'qwe-161', 60000, 1500000, 60000,202500),
        ('patty', 'Tello Luna', 'F', '65555555', 'Calle 75', '1951/8/9', 'Anapoima', 65, 'Abogada', 'qwe-162', 68000, 1700000, 68000,229500),
        ('Jose maria', 'Roa', 'M', '855555', 'Carrera 30', '1960/8/12', 'Barranquilla', 23, 'Ing. Industrial', 'qwe-163', 48000, 1200000, 48000,162000),
        ('Ivan', 'Ramirez Ramirez', 'M', '54545645', 'Calle 98', '1973/8/11', 'Bogota', 45, 'Ingeniero Civil', 'qwe-164', 88000, 2200000, 88000,297000);
        

SELECT * FROM Vendedor;


CREATE TABLE Ventas (
        Id_Ventas INT AUTO_INCREMENT PRIMARY KEY,
        Id_Vendedor INT NOT NULL,
        Ano_Venta INT NOT NULL,
        Mes_Venta INT NOT NULL,
        Empresa VARCHAR(50) NOT NULL,
        Ciudad VARCHAR(50) NOT NULL,
        Factura VARCHAR(20) NOT NULL,
        Tipo_Producto INT NOT NULL,
        Codigo_Producto INT NOT NULL,
        Modulo CHAR(1) NOT NULL,
        Cantidad INT NOT NULL,
        Valor FLOAT NOT NULL,
        Total FLOAT NOT NULL,
        Fecha_Creacion DATETIME DEFAULT current_timestamp,
        FOREIGN KEY (Id_Vendedor) REFERENCES Vendedor(Codigo_Vendedor),
        FOREIGN KEY (Tipo_Producto) REFERENCES Tipo_Producto(Id_Tipo_Producto),
        FOREIGN KEY (Codigo_Producto) REFERENCES Producto(codigo_Producto)
    );

INSERT INTO Ventas(Id_Vendedor,Ano_Venta,Mes_Venta, Empresa, Ciudad, Factura, Tipo_Producto, Codigo_Producto,
                    Modulo, Cantidad, Valor, Total)
VALUES (26, 2018, 1, 'ING SISTEMAS', 'Bogota', 'f-0152', 5, 1090, 'c', 9, 95000, 855000),
(16, 2018, 1, 'ING SISTEMAS', 'Bogota', 'f-1165', 4, 1060, 'a', 5, 75000, 375000),
(7, 2018, 1, 'ING SISTEMAS', 'Pereira', 'f-0694', 4, 1015, 'c', 5, 25000, 125000),
(27, 2018, 1, 'IT COLOMBIA PC', 'Cali', 'f-0153', 1, 1000, 'c', 3, 540000, 1620000),
(34, 2018, 1, 'IT COLOMBIA PC', 'Bogota', 'f-0721', 1, 1055, 'c', 5, 286000, 1430000),
(8, 2018, 1, 'IT COLOMBIA PC', 'Pereira', 'f-0050', 1, 1055, 'b', 10, 286000, 2860000),
(25, 2018, 1, 'IT COLOMBIA PC', 'Pereira', 'f-1258', 4, 1050, 'a', 5, 230000, 1150000),
(8, 2018, 1, 'IT COLOMBIA PC', 'Bogota', 'f-0695', 2, 1020, 'c', 4, 400000, 1600000),
(28, 2018, 1, 'IT COLOMBIA PC', 'Bogota', 'f-0883', 5, 1090, 'a', 10, 95000, 950000),
(28, 2018, 1, 'IT COLOMBIA PC', 'Bogota', 'f-0238', 5, 1090, 'a', 0, 95000, 0),
(25, 2018, 1, 'IT COLOMBIA PC', 'Pereira', 'f-0613', 3, 1085, 'c', 0, 266000, 0),
(24, 2018, 4, 'CENTROLAGO', 'Pereira', 'f-0150', 4, 1080, 'c', 7, 120000, 840000),
(14, 2018, 4, 'CENTROLAGO', 'Bello', 'f-1037', 2, 1005, 'b', 6, 85000, 510000),
(5, 2018, 4, 'CENTROLAGO', 'Pereira', 'f-0593', 4, 1080, 'c', 5, 120000, 600000),
(22, 2018, 4, 'CENTROLAGO', 'Cucuta', 'f-0358', 4, 1060, 'b', 2, 75000, 150000),
(34, 2018, 4, 'CENTROLAGO', 'Quindio', 'f-0496', 3, 1085, 'c', 9, 266000, 2394000),
(24, 2018, 4, 'CENTROLAGO', 'Pasto', 'f-0192', 2, 1005, 'c', 0, 85000, 0),
(8, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-0512', 3, 1070, 'c', 2, 2800000, 5600000),
(17, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-0143', 2, 1045, 'b', 3, 1000000, 3000000),
(26, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-0068', 4, 1050, 'b', 0, 230000, 0),
(17, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-0788', 3, 1010, 'b', 2, 350000, 700000),
(8, 2018, 4, 'ING SISTEMAS', 'Pereira', 'f-0428', 1, 1030, 'b', 4, 75000, 300000),
(8, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-1073', 5, 1090, 'b', 0, 95000, 0),
(26, 2018, 4, 'ING SISTEMAS', 'Bogota', 'f-0713', 4, 1015, 'c', 3, 25000, 75000),
(8, 2018, 4, 'ING SISTEMAS', 'Cali', 'f-1157', 2, 1020, 'b', 8, 400000, 3200000),
(9, 2018, 4, 'IT COLOMBIA PC', 'Bogota', 'f-1158', 5, 1025, 'c', 0, 2000000, 0),
(20, 2018, 4, 'IT COLOMBIA PC', 'Cali', 'f-0917', 3, 1070, 'b', 8, 2800000, 22400000),
(28, 2018, 4, 'IT COLOMBIA PC', 'Meta', 'f-1135', 1, 1055, 'a', 0, 286000, 0),
(20, 2018, 4, 'IT COLOMBIA PC', 'Pereira', 'f-0272', 4, 1060, 'a', 1, 75000, 75000);


SELECT * FROM Ventas;
