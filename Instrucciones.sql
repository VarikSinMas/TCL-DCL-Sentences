-- --------------------------------------------------------------
-- Actividad: AA5. Sentencias DCL Y TCL
--
-- Estudiante: Antoni Fernández Almécija
--
-- Database: [gym]
-- --------------------------------------------------------------

-- SECCION B. PARTE PRÁCTICA
-- USUARIOS Y PRIVILEGIOS

--
-- 1. Crear un usuario llamado GymAdmin con permisos completos para crear nuevos usuarios y otorgarles privilegios.
--
use gym;
CREATE USER 'GymAdmin'@'%' IDENTIFIED BY 'uoc123';
GRANT ALL PRIVILEGES ON gym.* TO 'GymAdmin'@'%';
FLUSH PRIVILEGES;

--
-- 2. Utiliza la sentencia SQL pertinente para mostrar los privilegios del usuario administrador.
--
SHOW GRANTS FOR 'GymAdmin'@'%';

--
-- 3. Accede a la Base de Datos con el usuario GymAdmin.
-- /*Tras crear el usuario GymAdmin y otorgarle los privilegios pertinentes, creamos una nueva instancia con dicho usuario y ejecutamos la table "gym"./ 

--
-- 4. Crea un usuario denominado Supervisor y otorgale los permisos pertinentes.
--
CREATE USER 'Supervisor'@'%' IDENTIFIED BY 'uoc123';
GRANT SELECT, INSERT, UPDATE, DELETE ON gym.actividad TO 'Supervisor'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON gym.horario TO 'Supervisor'@'%';

--
-- 5. Crea otro usuario denominado Contable y otorgale los permisos pertinentes.
--
CREATE USER 'Contable'@'%' IDENTIFIED BY 'uoc123';
GRANT SELECT, INSERT, UPDATE, DELETE ON gym.plan TO 'Contable'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON gym.socio TO 'Contable'@'%';


-- TRANSACCIONES

--
-- 6. Transacción para ingresar un nuevo socio corporativo
--
START TRANSACTION;
INSERT INTO gym.corporativo (id_socio, nif) VALUES (1, 'nif_empresa');
COMMIT;

--
-- 7. Transacción que permita ingresar un nuevo socio, ingresar sus datos bancarios, realizar un SAVEPOINT, insertar un seguimiento, y realizar un ROLLBACK al SAVEPOINT.
--
START TRANSACTION;
INSERT INTO gym.socio (documento_identidad, nombre, apellido1, apellido2, sexo, fecha_nacimiento, id_plan, fecha_alta, activo, tarjeta_acceso, telefono_contacto, email, codigo_postal, enfermedades, observaciones)
VALUES ('123456789', 'Juan', 'Perez', 'Gomez', 'M', (CURRENT_TIMESTAMP), 1, (CURRENT_TIMESTAMP), 1, '1234567890', '1234567890', 'antoni@uoc.com', '12345', 'Ninguna', 'Sin observaciones');
INSERT INTO gym.principal (idsocio, cuenta, banco) VALUES (14, 'cuenta', 'banco');
SAVEPOINT my_savepoint;
INSERT INTO gym.seguimiento (id_socio, anno, semana, estatura_cm, peso, tension_arterial, pulsaciones_reposo, saturacion_oxigeno, porcentaje_grasa_corporal, recomendaciones) VALUES (13, 2023, 2, 182, 85, '80', 103, 20, 21, 'valor_recomendaciones');
ROLLBACK TO SAVEPOINT my_savepoint;
COMMIT;