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

--- DELETE FROM clientes   --- Identifiqué que el primer ID designado en la tabla clientes era 2, por lo que eliminé la información y reinicié el contador.
--- DBCC CHECKIDENT ('clientes', RESEED, 0);


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

--Creación de tabla tipos_prestamos
CREATE TABLE tipos_prestamos(
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(100) NOT NULL,
descripcion TEXT NULL --Si un campo puede ser NULL, se especifica y no hay necesidad de colocar cantidad de caracteres
);

--Creación de tabla empleados (con dependencia)
CREATE TABLE empleados(
id INT PRIMARY KEY IDENTITY(1,1),
persona_id INT NOT NULL,
codigo_empleado VARCHAR(6) NOT NULL,
cargo VARCHAR(100) NOT NULL,
supervisor_id INT NULL,
CONSTRAINT FK_persona_natural_empleados FOREIGN KEY (persona_id) REFERENCES personas_naturales(id),  --Se coloca el código FK_tabladereferencia_tabla actual y se hace REFERENCIA tablareferencia(camporeferencia)
CONSTRAINT FK_supervisor_id FOREIGN KEY (supervisor_id) REFERENCES empleados(id)
);

--Creación de tabla prestamos (con dependencia)
CREATE TABLE prestamos(
id INT PRIMARY KEY IDENTITY (1,1),
cliente_id INT NOT NULL,
sucursal_id INT NOT NULL,
empleado_id INT NOT NULL,
tipo_prestamo_id INT NOT NULL,
monto_otorgado MONEY NOT NULL,
tasa_interes FLOAT NOT NULL,
plazo INT NOT NULL,
fecha_inicio DATE NOT NULL,
fecha_vencimiento DATE NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
deleted_at DATETIME NOT NULL,
created_by INT NOT NULL,
updated_by INT NOT NULL,
deleted_by INT NOT NULL
CONSTRAINT FK_clientes_prestamos FOREIGN KEY (cliente_id) REFERENCES clientes(id),
CONSTRAINT FK_sucursales_prestamos FOREIGN KEY (sucursal_id) REFERENCES sucursales(id),
CONSTRAINT FK_empleados_prestamos FOREIGN KEY (empleado_id) REFERENCES empleados(id),
CONSTRAINT FK_tipos_prestamos_id FOREIGN KEY (tipo_prestamo_id) REFERENCES tipos_prestamos(id)
);

--Creación de tabla cuotas
CREATE TABLE cuotas(
id INT PRIMARY KEY IDENTITY (1,1),
prestamo_id INT NOT NULL,
numero_cuota INT NOT NULL,
monto MONEY NOT NULL,
fecha_vencimiento DATE NOT NULL,
estado VARCHAR(20) NOT NULL,
monto_pendiente MONEY NOT NULL
CONSTRAINT FK_prestamos_cuotas FOREIGN KEY (prestamo_id) REFERENCES prestamos(id),
);

--Creación de tabla detalles_pagos
CREATE TABLE detalles_pagos(
id INT PRIMARY KEY IDENTITY(1,1),
cuota_id INT NOT NULL,
pago_id INT NOT NULL,
monto_afectado MONEY NOT NULL,
CONSTRAINT FK_cuotas_detalles_pagos FOREIGN KEY (cuota_id) REFERENCES cuotas(id),
CONSTRAINT FK_pagos_detalles_pagos FOREIGN KEY (pago_id) REFERENCES pagos(id)
);