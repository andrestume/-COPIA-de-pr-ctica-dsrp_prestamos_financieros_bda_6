USE dsrp_prestamos_financieros_6;

-- personas naturales
SELECT*FROM personas_naturales;

INSERT INTO [dbo].[personas_naturales] ([numero_documento], [nombres], [apellido_paterno], [apellido_materno], [email], [celular], [direccion])
VALUES
('12345678', 'Juan', 'P�rez', 'G�mez', 'juan.perez@example.com', '987654321', 'Av. Siempre Viva 123'),
('23456789', 'Mar�a', 'Rodr�guez', 'L�pez', 'maria.rodriguez@example.com', '987654322', 'Calle Falsa 456'),
('34567890', 'Pedro', 'S�nchez', 'Mart�nez', 'pedro.sanchez@example.com', '987654323', 'Plaza Mayor 789'),
('45678901', 'Ana', 'Garc�a', 'Fern�ndez', 'ana.garcia@example.com', '987654324', 'Calle Real 101'),
('56789012', 'Carlos', 'Hern�ndez', 'G�mez', 'carlos.hernandez@example.com', '987654325', 'Av. Libertad 102'),
('67890123', 'Luc�a', 'Mart�nez', 'Gonz�lez', 'lucia.martinez@example.com', '987654326', 'Calle Sol 203'),
('78901234', 'Jos�', 'L�pez', 'P�rez', 'jose.lopez@example.com', '987654327', 'Calle Luna 204'),
('89012345', 'Isabel', 'Gonz�lez', 'S�nchez', 'isabel.gonzalez@example.com', '987654328', 'Av. 9 de Julio 305'),
('90123456', 'Francisco', 'Garc�a', 'Ram�rez', 'francisco.garcia@example.com', '987654329', 'Calle Rosario 406'),
('12323456', 'Marta', 'S�nchez', 'Torres', 'marta.sanchez@example.com', '987654330', 'Calle del R�o 507'),
('23434567', 'Luis', 'Rodr�guez', 'Lozano', 'luis.rodriguez@example.com', '987654331', 'Av. del Sol 608'),
('34545678', 'Carmen', 'Hern�ndez', 'Alvarez', 'carmen.hernandez@example.com', '987654332', 'Plaza Central 709'),
('45656789', 'Ra�l', 'Mart�nez', 'Su�rez', 'raul.martinez@example.com', '987654333', 'Calle San Pedro 810'),
('56767890', 'Patricia', 'Gonz�lez', 'Mart�nez', 'patricia.gonzalez@example.com', '987654334', 'Av. Primavera 911'),
('67878901', 'Juan', 'Alvarez', 'Lopez', 'juan.alvarez@example.com', '987654335', 'Calle Viento 102'),
('78989012', 'Elena', 'Su�rez', 'Jim�nez', 'elena.suarez@example.com', '987654336', 'Calle Monte 203'),
('89090123', 'Javier', 'Garc�a', 'Torres', 'javier.garcia@example.com', '987654337', 'Calle del Sol 304'),
('90101234', 'Rosa', 'Rodr�guez', 'Reyes', 'rosa.rodriguez@example.com', '987654338', 'Plaza Mayor 405'),
('12334567', 'V�ctor', 'Mart�nez', 'D�az', 'victor.martinez@example.com', '987654339', 'Av. Del Mar 506'),
('23445678', 'Claudia', 'L�pez', 'Gonz�lez', 'claudia.lopez@example.com', '987654340', 'Calle Nuevo 607'),
('34556789', 'Felipe', 'Gonz�lez', 'Torres', 'felipe.gonzalez@example.com', '987654341', 'Calle Oeste 708'),
('45667890', 'Ver�nica', 'S�nchez', 'G�mez', 'veronica.sanchez@example.com', '987654342', 'Calle Norte 809'),
('56778901', 'Eduardo', 'Hern�ndez', 'L�pez', 'eduardo.hernandez@example.com', '987654343', 'Av. del Norte 910'),
('67889012', 'Sof�a', 'Garc�a', 'Alonso', 'sofia.garcia@example.com', '987654344', 'Plaza Independencia 1011'),
('78990123', 'Jos�', 'Jim�nez', 'Fern�ndez', 'jose.jimenez@example.com', '987654345', 'Calle Centro 1112'),
('89001234', 'Patricia', 'Torres', 'Mora', 'patricia.torres@example.com', '987654346', 'Calle Europa 1213'),
('90112345', 'David', 'Su�rez', 'Garc�a', 'david.suarez@example.com', '987654347', 'Av. Costanera 1314'),
('12345679', 'Raquel', 'Ram�rez', 'Fern�ndez', 'raquel.ramirez@example.com', '987654348', 'Calle del Carmen 1415'),
('23456780', 'Manuel', 'S�nchez', 'P�rez', 'manuel.sanchez@example.com', '987654349', 'Calle Real 1516'),
('34567891', 'Sara', 'Gonz�lez', 'V�squez', 'sara.gonzalez@example.com', '987654350', 'Av. de la Paz 1617'),
('45678902', 'Oscar', 'L�pez', 'Rivas', 'oscar.lopez@example.com', '987654351', 'Plaza Mayor 1718'),
('56789023', 'M�nica', 'Ram�rez', 'Castro', 'monica.ramirez@example.com', '987654352', 'Calle Libertad 1819'),
('67890134', 'Ricardo', 'Jim�nez', 'Bravo', 'ricardo.jimenez@example.com', '987654353', 'Av. del Sol 1920'),
('78901245', 'Jessica', 'Su�rez', 'Medina', 'jessica.suarez@example.com', '987654354', 'Calle Monte 2021'),
('89012356', 'Mart�n', 'Rodr�guez', 'G�mez', 'martin.rodriguez@example.com', '987654355', 'Av. Viento 2122'),
('90123467', 'Patricia', 'Gonz�lez', 'Navarro', 'patricia.gonzalez@example.com', '987654356', 'Calle Ancha 2223'),
('12334578', 'Carlos', 'Mart�nez', 'Lozano', 'carlos.martinez@example.com', '987654357', 'Plaza del R�o 2324'),
('23445689', 'Ana', 'Rodr�guez', 'Gonz�lez', 'ana.rodriguez@example.com', '987654358', 'Calle Flor 2425'),
('34556790', 'Jos�', 'L�pez', 'Su�rez', 'jose.lopez@example.com', '987654359', 'Av. del Sol 2526'),
('45667891', 'Julia', 'Mart�nez', 'Cruz', 'julia.martinez@example.com', '987654360', 'Calle de la Paz 2627'),
('56778902', 'Antonio', 'Hern�ndez', 'Vega', 'antonio.hernandez@example.com', '987654361', 'Calle Mayor 2728'),
('67889023', 'Claudia', 'Su�rez', 'Morales', 'claudia.suarez@example.com', '987654362', 'Av. Independencia 2829'),
('78990134', 'Francisco', 'Gonz�lez', 'Paredes', 'francisco.gonzalez@example.com', '987654363', 'Calle Sol 2930'),
('89001245', 'Alejandro', 'S�nchez', 'Jim�nez', 'alejandro.sanchez@example.com', '987654364', 'Av. de la Luna 3031'),
('90112356', 'Susana', 'Ram�rez', 'Lopez', 'susana.ramirez@example.com', '987654365', 'Plaza Fuerte 3132'),
('12345680', 'Ricardo', 'Torres', 'N��ez', 'ricardo.torres@example.com', '987654366', 'Calle Fuerte 3233'),
('23456791', 'Jessica', 'Gonz�lez', 'S�nchez', 'jessica.gonzalez@example.com', '987654367', 'Av. del Sol 3334'),
('34567892', 'Alberto', 'S�nchez', 'Lozano', 'alberto.sanchez@example.com', '987654368', 'Calle Mar 3435'),
('45678903', 'Ver�nica', 'Rodr�guez', 'Torres', 'veronica.rodriguez@example.com', '987654369', 'Av. Primavera 3536');

EXEC sp_help personas_naturales;

-- Personas jur�dicas (importar desde un archivo plano)
SELECT*FROM personas_juridicas
SELECT numero_documento, razon_social, email, telefono, domicilio_fiscal as direccion
FROM dsrp_pf_05.dbo.personas_juridicas;


-- Importar SUCURSALES desde otra base de datos
SELECT * FROM sucursales

SELECT * FROM dsrp_pf_05.dbo.sucursales

ALTER TABLE sucursales
ALTER COLUMN direccion NVARCHAR(500);

ALTER TABLE sucursales
ALTER COLUMN codigo NVARCHAR(20);

ALTER TABLE sucursales
ALTER COLUMN nombres VARCHAR(100);


-- Tipos de pr�stamos
SELECT * FROM tipos_prestamos

INSERT INTO tipos_prestamos VALUES('Pr�stamo Personal',''),
('Pr�stamo Hipotecario',''),
('Pr�stamo Personal','');

-- Empleados(Insertar data a partir de otra consulta)
SELECT*FROM personas_naturales;
INSERT INTO [dbo].[personas_naturales] ([numero_documento], [nombres], [apellido_paterno], [apellido_materno], [email], [celular], [direccion])
VALUES
('67890135', 'Andrea', 'Mendoza', 'Rojas', 'andrea.mendoza@example.com', '987654370', 'Calle Jardines 456'),
('78901246', 'Miguel', 'Castro', 'Vega', 'miguel.castro@example.com', '987654371', 'Av. Valle 789'),
('89012357', 'Lorena', 'Vargas', 'Ram�rez', 'lorena.vargas@example.com', '987654372', 'Calle Palmeras 123'),
('90123468', 'Diego', 'Morales', 'Torres', 'diego.morales@example.com', '987654373', 'Plaza Central 890'),
('12334579', 'Cecilia', 'Ramos', 'P�rez', 'cecilia.ramos@example.com', '987654374', 'Av. del Bosque 345'),
('23445690', 'Jorge', 'Figueroa', 'G�mez', 'jorge.figueroa@example.com', '987654375', 'Calle Horizonte 567'),
('34556791', 'Santiago', 'Delgado', 'L�pez', 'santiago.delgado@example.com', '987654376', 'Calle Maravilla 678'),
('45667892', 'Paula', 'Silva', 'Fern�ndez', 'paula.silva@example.com', '987654377', 'Av. del Este 789'),
('56778903', 'Natalia', 'Rivera', 'Mart�nez', 'natalia.rivera@example.com', '987654378', 'Calle Armon�a 910'),
('67889024', 'Fabio', 'Paredes', 'Su�rez', 'fabio.paredes@example.com', '987654379', 'Plaza Uni�n 1011');


SELECT * FROM empleados

EXEC sp_help empleados;

INSERT INTO empleados
SELECT id,
CONCAT(SUBSTRING(apellido_paterno,1,1),SUBSTRING(apellido_materno,1,1),00,ROUND(RAND()*10,0)) AS 'codigo_empleado',
'supervisor' AS 'cargo',
NULL AS 'supervisor_id'
FROM personas_naturales 
WHERE id>=50;


-- Clientes
SELECT*FROM clientes

--- DELETE FROM clientes; -- Eliminamos los registros para volver a crearlos.

--- DBCC CHECKIDENT ('clientes', RESEED, 62); ---reiniciamos el conteo para estar igual que la clase

INSERT INTO clientes
SELECT 'Persona Jur�dica', id
FROM personas_juridicas

INSERT INTO clientes   --- Ingresamos los registros de personas naturales
SELECT 'Persona Natural', id
FROM personas_naturales
WHERE id<=49;

SELECT*FROM clientes

--Empleados con supervisor (insertar en personas naturales primero)
INSERT INTO [dbo].[personas_naturales] ([numero_documento], [nombres], [apellido_paterno], [apellido_materno], [email], [celular], [direccion])
VALUES
('67900136', 'Adriana', 'Villanueva', 'Cruz', 'adriana.villanueva@example.com', '987654380', 'Av. Primavera 345'),
('78911247', 'Luis', 'Soto', 'Carvajal', 'luis.soto@example.com', '987654381', 'Calle Sol Naciente 456'),
('89021358', 'Ver�nica', 'L�pez', 'Ch�vez', 'veronica.lopez@example.com', '987654382', 'Av. Central 789'),
('90131469', 'Julio', 'Reyes', 'Hern�ndez', 'julio.reyes@example.com', '987654383', 'Calle Aurora 234'),
('12344580', 'Elena', 'G�mez', 'Torres', 'elena.gomez@example.com', '987654384', 'Av. Colibr� 567'),
('23455691', 'Renato', 'Herrera', 'Quispe', 'renato.herrera@example.com', '987654385', 'Plaza Mayor 890'),
('34566792', 'Marcela', 'Ch�vez', 'Ramos', 'marcela.chavez@example.com', '987654386', 'Calle Diamante 678'),
('45677893', 'Carlos', 'Salazar', 'L�pez', 'carlos.salazar@example.com', '987654387', 'Av. Pinos 901'),
('56788904', 'Daniela', 'Medina', 'Cordero', 'daniela.medina@example.com', '987654388', 'Calle R�o Azul 123'),
('67899025', 'Oscar', 'Alarc�n', 'Jim�nez', 'oscar.alarcon@example.com', '987654389', 'Plaza de Armas 345'),
('67910136', 'Mar�a', 'Ponce', 'Valverde', 'maria.ponce@example.com', '987654390', 'Av. Amanecer 456'),
('78921247', 'Fabi�n', 'N��ez', 'Arias', 'fabian.nunez@example.com', '987654391', 'Calle San Mart�n 789'),
('89031358', 'Roc�o', 'Campos', 'Luna', 'rocio.campos@example.com', '987654392', 'Av. de las Flores 234'),
('90141469', 'H�ctor', 'Pe�a', 'Guzm�n', 'hector.pena@example.com', '987654393', 'Calle Estrella 567'),
('12354580', 'Ana', 'Benavides', 'Fuentes', 'ana.benavides@example.com', '987654394', 'Av. C�ndor 890'),
('23465691', 'Mauricio', 'Ib��ez', 'Zeballos', 'mauricio.ibanez@example.com', '987654395', 'Calle Mirador 678'),
('34576792', 'Luciana', 'Zambrano', 'Mendoza', 'luciana.zambrano@example.com', '987654396', 'Plaza Bella 901'),
('45687893', 'Javier', 'Estrada', 'Dur�n', 'javier.estrada@example.com', '987654397', 'Av. del Norte 123'),
('56798904', 'Natalie', '�vila', 'Paredes', 'natalie.avila@example.com', '987654398', 'Calle Coral 345'),
('67809025', 'Fernando', 'Zavala', 'Arce', 'fernando.zavala@example.com', '987654399', 'Plaza Sol 567'),
('67920136', 'M�nica', 'Paredes', 'R�os', 'monica.paredes@example.com', '987654400', 'Av. Vista Hermosa 678'),
('78931247', 'Esteban', 'C�rdova', 'Villalobos', 'esteban.cordova@example.com', '987654401', 'Calle Horizonte 890'),
('89041358', 'Patricia', 'Vega', 'Maldonado', 'patricia.vega@example.com', '987654402', 'Av. del Lago 123'),
('90151469', 'Joaqu�n', 'Quinteros', 'Espinoza', 'joaquin.quinteros@example.com', '987654403', 'Calle Rivera 234'),
('12364580', 'Diana', 'Barrios', 'Silva', 'diana.barrios@example.com', '987654404', 'Av. Valle Dorado 456'),
('23475691', 'Ricardo', 'Carranza', 'Vargas', 'ricardo.carranza@example.com', '987654405', 'Calle Nueva Esperanza 567'),
('34586792', 'Paola', 'Rosas', 'Ponce', 'paola.rosas@example.com', '987654406', 'Av. Puente Viejo 678'),
('45697893', 'Andr�s', 'Valencia', 'Morales', 'andres.valencia@example.com', '987654407', 'Plaza de la Paz 901'),
('56708904', 'Victoria', 'Rivas', 'Garc�a', 'victoria.rivas@example.com', '987654408', 'Calle Palmeras 345'),
('67819025', 'Emilio', 'Tello', 'Romero', 'emilio.tello@example.com', '987654409', 'Av. Libertad 678');


--Identificamos que los empleados no ten�an asociada la sucursal correspondiente, as� que editamos la tabla empleados (ver create_databe)


DECLARE @Counter INT
SET @Counter = 0

WHILE @Counter < 30
BEGIN
INSERT INTO empleados
SELECT 
	id AS 'persona_id',
	CONCAT(SUBSTRING(apellido_paterno,1,1),SUBSTRING(apellido_materno,1,1),'00',ROUND(RAND()*10,0)) AS 'codigo_empleado',
	'empleado' AS 'Cargo',
	ROUND(RAND() * 10,0) AS 'supervisor_id',
	ROUND(RAND() * 16,0) AS 'sucursal_id'
FROM personas_naturales
WHERE id=60 + @Counter
ORDER BY NEWID()
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;
    SET @Counter = @Counter + 1
END

SELECT*FROM personas_naturales;
SELECT*FROM empleados;


--Insertar pr�stamos
