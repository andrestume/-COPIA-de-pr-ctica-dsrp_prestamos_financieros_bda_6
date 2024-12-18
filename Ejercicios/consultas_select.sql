USE dsrp_prestamos_financieros_6

-- IGUALDAD SIMPLE: seleccionar DNI, nombre completo y email de todos los DAVID


SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ', apellido_paterno,' ', apellido_materno) AS 'Nombre Completo',
	email
FROM personas_naturales
WHERE nombres='David'

--Otro ejemplo: los JUAN
SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ', apellido_paterno,' ', apellido_materno) AS 'Nombre Completo',
	email
FROM personas_naturales
WHERE nombres='Juan'

--Encontrar filas que contienen un valor como parte de una cadena
--Seleccionar todas las personas naturales cuyo apellido paterno contengan la cadena 'ez'

SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ',apellido_paterno, ' ', apellido_materno) AS 'Nombre_completo', ---si voy a reutilizar la consulta como un proceso, no dejar espacios
	email
FROM personas_naturales
WHERE apellido_paterno LIKE('%ez%')

--Ahora, los apellidos paternos que empiezan con 'R'
SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ',apellido_paterno,' ',apellido_materno) AS 'Nombre completo',
	email
FROM personas_naturales
WHERE apellido_paterno LIKE ('R%')

--Ahora, los apellidos que terminan con 'S'
SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ',apellido_paterno,' ',apellido_materno) AS 'Nombre_completo',
	email
FROM personas_naturales
WHERE apellido_paterno LIKE ('%s')

--Apellidos paternos que terminen con 'S' y cuyo apellido materno termine en 'A'
SELECT
	numero_documento AS 'DNI',
	CONCAT(nombres,' ',apellido_paterno,' ',apellido_materno) AS 'Nombre completo',
	email
FROM personas_naturales
WHERE apellido_paterno LIKE ('%s') AND apellido_materno LIKE ('%a')

