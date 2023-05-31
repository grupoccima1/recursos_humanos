
--EMPLEADOS
INSERT INTO empleados (
                    nombre,
                    ap_paterno,
                    ap_materno,
                    fecha_nac, 
                    edad, 
                    nacionalidad, 
                    originario, 
                    sexo, 
                    celular, 
                    correo, 
                    domicilio
                    )
VALUES 
                    ('Alejandro',
                    'Cabello', 
                    'De Jesus',
                    '1990-01-01',
                    '30',
                    'Venezolano',
                    'M',
                    '4422362956', 
                    'cabeloagape@gmail.com', 
                    'Los Sauces, Lisboa 130')

DELETE FROM empleados WHERE id_empleado = id_empleado


UPDATE empleados
SET nombre = 'Viviana', correo= 'vv2023@gmail.com'
WHERE id_empleado = 1;

-----------------------------------------------------------------------------------
--DEPARTAMENTO


drop procedure if exists insert_departamento;

DELIMITER $$

        CREATE PROCEDURE insert_departamento(
               
                departamento varchar(20),
                puesto varchar(30),
                sueldo_semanal float,
                sueldo_mensual float,
                id_empleado int (4))
        BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO departamento(departamento, puesto,sueldo_semanal,sueldo_mensual,id_empleado) VALUES(departamento,puesto,sueldo_semanal,sueldo_mensual,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END; $$
DELIMITER ;

CALL insert_departamento ('depa','puesto', 20, 5, 2)


DELETE FROM departamento WHERE departamento= 'Sistemas'

UPDATE departamento
SET puesto = 'Auxiliar de compras', departamento = 'Auxiliar administrativo' 
WHERE id_departamento = 138

---------------------------------------------------------------------------

--DATOS FISCALES

drop procedure if exists insert_datosFiscales;

DELIMITER $$

        CREATE PROCEDURE insert_datosFiscales(
            curp varchar(18),
            rfc VARCHAR (13),
            cuenta_hsbc int(20),
            infonavit int(20),
            fonacot int(20),
            id_empleado int(4)
        )
        BEGIN
            DECLARE empleado_existe int;
            DECLARE id int;
            SET empleado_existe = (SELECT id_empleado from empleados order by id_empleado DESC limit 1 );
            IF empleado_existe = empleado_existe THEN
                    INSERT INTO datos_fiscales(curp,rfc,cuenta_hsbc,infonavit,fonacot,id_empleado) VALUES (curp,rfc,cuenta_hsbc,infonavit,fonacot,id_empleado);
                    SET id = LAST_INSERT_ID();
            ELSE
                    SET id = 0;
            END IF;
            SELECT id;


        END; $$
DELIMITER ;

CALL insert_datosFiscales('prueba','prueba',03,04,05,15)


DELETE FROM datos_fiscales WHERE id_datosFiscales = id_datosFiscales

UPDATE datos_fiscales
SET curp = 'edit', rfc = 'edit' 
WHERE id_datosFiscales = id_datosFiscales

-----------------------------------------------------------------------------

--CONTRATO

drop procedure if exists insert_contrato;

DELIMITER $$

        CREATE PROCEDURE insert_contrato(
               
                tipo varchar(15),
                fecha_ingreso date,
                fecha_baja date,
                antiguedad float,
                id_empleado int (4))
        BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO contrato(tipo, fecha_ingreso,fecha_baja,antiguedad,id_empleado) VALUES(tipo,fecha_ingreso,fecha_baja,antiguedad,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END; $$
DELIMITER ;

CALL insert_contrato ('tipo', 0000-00-00, 0000-00-00, 1, 200)


--actualizar
UPDATE contrato
SET fecha_ingreso='2023-05-15', fecha_baja='0000-00-00', antiguedad='1'
WHERE id_contrato='136' 

--borrar
DELETE contrato 
FROM contrato
INNER JOIN empleados
ON contrato.id_contrato=empleados.id_empleado
where contrato.id_contrato='136'


-----------------------------------------------------------------------

--CONTACTO EMERGENCIA


drop procedure if exists insert_contacto;

DELIMITER $$

        CREATE PROCEDURE insert_contacto(
               
                nomC varchar(60),
                celC int(10),
                id_empleado INT (4))
        BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1 );
                IF empleado_existe = 1 THEN
                        INSERT INTO contacto_emergencia(nombre, celular, id_empleado) VALUES(nomC,celC,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END; $$
DELIMITER ;

CALL insert_contacto ('nuevo', 1234567890, 147)

-- borrar
DELETE contacto_emergencia 
FROM contacto_emergencia
INNER JOIN empleados
ON contacto_emergencia.id_contacto=empleados.id_empleado
where contacto_emergencia.id_contacto='136'

--actualizar
UPDATE contacto_emergencia
SET nombre='actualizado', celular='1234567890'
WHERE id_contacto='137'
--------------------------------------------------------------------------

--beneficiario 


drop procedure if exists insert_beneficiario;

DELIMITER $$

        CREATE PROCEDURE insert_beneficiario(
               
                nombre varchar(60),
                ap_paterno varchar(30),
                ap_materno varchar(30),
                celular int(10),
                parentesco varchar(10),
                id_empleado int(4))
        BEGIN
                DECLARE empleado_existe INT;
                DECLARE id INT;
                SET empleado_existe = (SELECT id_empleado FROM empleados order by id_empleado DESC limit 1);
                IF empleado_existe = empleado_existe THEN
                        INSERT INTO beneficiario(nombre, ap_paterno,ap_materno,celular,parentesco,id_empleado) VALUES(nombre, ap_paterno,ap_materno,celular,parentesco,id_empleado);
                        SET id = LAST_INSERT_ID();
                ELSE
                        SET id = 0;
                END IF;
                SELECT id;

        END; $$
DELIMITER ;

CALL insert_beneficiario ('prueba', 'prueba', 'prueba', 1234567890, 'prueba',4)

DELETE beneficiario 
FROM beneficiario
INNER JOIN empleados
ON beneficiario.id_datosFiscales=empleados.id_empleado
where beneficiario.id_datosFiscales='136'

--actualizar
UPDATE beneficiario
SET nombre='actualizado', celular='1234567890'
WHERE id_contacto='137'

