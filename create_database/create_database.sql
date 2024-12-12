CREATE DATABASE dsrp_prestamos_financieros_6;
GO

USE dsrp_prestamos_financieros_6;
GO

--Creación de tabla personas_naturales
CREATE TABLE personas_naturales(
id INT PRIMARY KEY IDENTITY(1,1),
numero_documento VARCHAR(20) UNIQUE NOT NULL,
nombres VARCHAR(255) NOT NULL,
apellido_paterno VARCHAR(255) NOT NULL,
apellido_materno VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
celular VARCHAR(20) NOT NULL,
direccion VARCHAR(255) NOT NULL
);
GO

SELECT * FROM personas_naturales;

EXEC sp_help personas_naturales;

--Creación de tabla personas_juridicas
CREATE TABLE personas_juridicas(
id INT PRIMARY KEY IDENTITY(1,1),
numero_documento VARCHAR(255) UNIQUE NOT NULL,
razon_social VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
direccion VARCHAR(255) NOT NULL
);
GO

--Creación de tabla clientes
CREATE TABLE clientes(
id INT PRIMARY KEY IDENTITY(1,1),
tipo_persona VARCHAR(55) NOT NULL,
persona_id INT NOT NULL
);
GO

--Renombramos la columna tipo_cliente por tipo_persona. Debajo, la función usada:
--EXEC sp_rename 'clientes.tipo_cliente','tipo_persona','COLUMN';

ALTER TABLE clientes
ADD CONSTRAINT check_tipo_persona CHECK (tipo_persona IN ('Persona Natural','Persona Jurídica'));

SELECT*FROM clientes;
INSERT INTO clientes VALUES('Persona Natural','1');

--Creación de tabla sucursales
CREATE TABLE sucursales(
id INT PRIMARY KEY IDENTITY(1,1),
codigo CHAR(6) NOT NULL,
nombres VARCHAR(100) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL
);

--Creación de tabla pagos
CREATE TABLE pagos(
id INT PRIMARY KEY IDENTITY(1,1),
codigo_operacion VARCHAR(20) NOT NULL,
fecha_pago DATETIME DEFAULT GETDATE() NOT NULL,
monto_abonado MONEY NOT NULL
);

--Forma 1 para ingresar valores: campos específicos dentro de una tabla
INSERT INTO pagos(codigo_operacion,monto_abonado) VALUES('0000000001',100.00)
--Forma 2 para ingresar valores: completando todos los campos según la tabla
INSERT INTO pagos VALUES('0000000002',DEFAULT,200.00)

SELECT * FROM pagos