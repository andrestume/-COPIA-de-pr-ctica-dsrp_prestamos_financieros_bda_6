USE dsrp_prestamos_financieros_6

-- Igualdad simple: seleccionar DNI, nombre completo y email de todos los DAVID


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