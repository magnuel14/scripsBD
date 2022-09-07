--***********************************************************
-- insercion de datos en la tabla cliente
INSERT INTO cliente (
    id_cliente, 
    Cedula, 
    nombre,
    apellido, 
    direccion, 
    telefono, 
    correo, 
    fecha_registro, 
    fecha_modificacion) VALUES 
 (001, '1105219248', 'Manuel', 'Vicente', 'Moscu y Estonia','0993324055','manuelv@gmail.com','2022-08-31 21:27:00','2022-08-31 21:27:00'),
 (002, '1222364758', 'Steven', 'Cueva', 'Avenida 1, 2','0993324056','steven@gmail.com','2022-08-31 12:25:00','022-08-31 12:25:00'),
 (003, '1305219248', 'Jack', 'Rojas', 'Avenida 3, 4','0993324057','jack@gmail.com','2022-08-31 13:27:00','2022-08-31 13:27:00'),
 (004, '1405219248', 'Cristiano', 'Ronaldo', 'Moscu y Boston','0993324058','bicho@gmail.com','2022-08-31 15:27:00','2022-08-31 15:27:00');  
--***********************************************************
-- insercion de datos en la tabla empleado
INSERT INTO empleado (
    id_empleado, 
    nombre, 
    apellido, 
    usuario, 
    contraseña, 
    fecha_registro, 
    fecha_modificacion) VALUES 
(001,'Daniel','Calle','dani001','12345','2022-08-31 07:30:00','2022-08-31 07:30:00'),
(002,'David','Rios','davi002','6789','2022-08-31 08:30:00','2022-08-31 08:30:00');
--***********************************************************
-- insercion de datos en la tabla servicio
INSERT INTO servicio(
    id_servicio, 
    tipo_servicio, 
    nombre_institucion, 
    fecha_registro, 
    fecha_modificacion ) VALUES
(001,'Prestamo','Banco de Pichincha','2022-08-31 08:30:00','2022-08-31 08:30:00'),
(002,'Prestamo','Banco de Loja','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(003,'Servicio de Agua potable','UMAPAL','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(004,'Servicio de Luz Electrica','ERSSA','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(005,'Servicio de TV Satelital','TVCable','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(006,'Servicio de Telefonia','CNT','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(007,'Colegiatura','San Gerardo','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(008,'Colegiatura','San Ignacio','2022-08-31 10:35:00','2022-08-31 10:35:00'),
(009,'Colegiatura','San Jose','2022-08-31 10:35:00','2022-08-31 10:35:00');
--***********************************************************
-- insercion de datos en la tabla servicio
-- se omite el atributo descripcion
INSERT INTO convenio(
    id_convenio, 
    provincia,
    valor, 
    fecha_inicio, 
    fecha_fin, 
    fecha_registro, 
    fecha_modificacion, 
    id_servicio) VALUES 
(001,'Loja',5000.00,'2021-02-24','2021-07-24','2021-02-24 21:27:00','2021-02-24 21:27:00',001),
(002,'Zamora Chimchipe',24.50,'2021-10-14','2021-12-14','2021-10-14 21:27:00','2021-10-14 21:27:00',003),
(003,'Zamora Chimchipe',35.60,'2021-09-06','2022-11-06','2021-09-06 21:27:00','2021-09-06 21:27:00',003),
(004,'El Oro',46.80,'2021-07-17','2021-09-17','2021-09-17 21:27:00','2021-09-17 21:27:00',003),
(005,'Loja',32.67,'2021-06-12','2021-08-12','2021-06-12 21:27:00','2021-06-12 21:27:00',003),
(006,'Guayas',87.40,'2022-01-06','2022-03-06','2022-01-06 21:27:00','2022-01-06 21:27:00',004),
(007,'Azuay',15.45,'2022-05-14','2023-07-14','2022-05-14 21:27:00','2022-05-14 21:27:00',006),
(008,'Loja',27.80,'2022-01-07','2022-03-07','2022-01-07 21:27:00','2022-01-07 21:27:00',006),
(009,'Cañar',100.25,'2022-09-08','2023-06-08','2022-09-08 21:27:00','2022-09-01 21:27:00',008),
(010,'Cañar',100.25,'2022-09-15','2023-06-15','2022-09-15 21:27:00','2022-09-02 21:27:00',008);
--***********************************************************
-- insercion de datos en la tabla factura
INSERT INTO factura(
id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(001,'2021-03-24','2021-03-05','Pago una cuota de mil dólares americanos',1000.00,0.00,'parcial',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',003,001,001),
(002,'2021-04-24','2021-04-06','Pago una cuota de mil dólares americanos',1000.00,0.00,'parcial',0,'2022-04-06 23:11:00','2022-04-06 23:11:00',003,001,001),
(003,'2021-05-24','2021-05-04','Pago una cuota de mil dólares americanos',1000.00,0.00,'parcial',0,'2022-05-04 23:11:00','2022-05-04 23:11:00',003,001,001),
(004,'2021-06-24','2021-06-03','Pago una cuota de mil dólares americanos',1000.00,0.00,'parcial',0,'2022-06-03 23:11:00','2022-06-03 23:11:00',003,001,001),
(005,'2021-07-24','2021-07-26','Pago una cuota de mil dólares americanos',1000.00,10.00,'parcial',1,'2022-07-26 23:11:00','2022-07-26 23:11:00',003,001,001),
(006,'2021-11-14','2021-11-09','Pago mensual de veinticuatro dolares y cincuenta centavos americanos',24.50,0.00,'total',0,'2021-11-09 23:11:00','2021-11-09 23:11:00',001,002,001),
(007,'2021-12-14','2021-12-06','Pago mensual de veinticuatro dolares y cincuenta centavos americanos',24.50,0.00,'total',0,'2021-12-06 23:11:00','2021-12-06 23:11:00',001,002,001),
(008,'2021-10-06','2021-10-04','Pago mensual de treinta y cinco dolares con sesenta centavos centavos americanos',35.60,0.00,'total',0,'2021-10-04 23:11:00','2021-10-04 23:11:00',001,003,001),
(009,'2021-11-06','2021-11-03','Pago mensual de treinta y cinco dolares con sesenta centavos centavos americanos',35.60,0.00,'total',0,'2021-10-03 23:11:00','2021-10-03 23:11:00',001,003,001),
(010,'2021-08-17','2021-08-10','Pago mensual de cuarenta y seis dolares con ochenta centavos americanos',46.80,0.00,'total',0,'2021-08-10 23:11:00','2021-08-10 23:11:00',002,004,001),
(011,'2021-09-17','2021-09-11','Pago mensual de cuarenta y seis dolares con ochenta centavos americanos',46.80,0.00,'total',0,'2021-09-11 23:11:00','2021-09-11 23:11:00',002,004,001),
(012,'2021-07-12','2021-07-03','Pago mesual de treinta y dos dolares con sesenta y siente centavos americanos',32.67,0.00,'total',0,'2021-07-03 23:11:00','2021-07-03 23:11:00',004,005,002),
(013,'2021-08-12','2021-08-07','Pago mesual de treinta y dos dolares con sesenta y siente centavos americanos',32.67,0.00,'total',0,'2021-08-07 23:11:00','2021-08-07 23:11:00',004,005,002),
(014,'2022-02-06','2022-02-03','Pago mesual de ochenta y siente dolares con cuarenta centavos americanos',87.40,0.00,'total',0,'2022-02-03 23:11:00','2022-02-03 23:11:00',004,006,002),
(015,'2022-03-06','2022-03-05','Pago mesual de ochenta y siente dolares con cuarenta centavos americanos',87.40,0.00,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',004,006,002),
(016,'2022-06-14','2022-06-10','Pago mesual de quince dolares con cuarenta y cinco centavos americanos',15.45,0.00,'total',0,'2022-06-10 23:11:00','2022-06-10 23:11:00',003,007,001),
(017,'2022-07-14','2022-07-10','Pago mesual de quince dolares con cuarenta y cinco centavos americanos',15.45,0.00,'total',0,'2022-07-10 23:11:00','2022-07-10 23:11:00',003,007,001),
(018,'2022-02-07','2022-02-05','Pago mesual de veinte y siente dolares con cuarenta centavos americanos',27.40,0.00,'total',0,'2022-02-05 23:11:00','2022-02-05 23:11:00',001,008,001),
(019,'2022-03-07','2022-03-05','Pago mesual de veinte y siente dolares con cuarenta centavos americanos',27.40,0.00,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',001,008,001),
(020,'2022-10-08','2022-10-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-10-05 23:11:00','2022-10-05 23:11:00',002,009,001),
(021,'2022-11-08','2022-11-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-11-05 23:11:00','2022-11-05 23:11:00',002,009,001),
(022,'2022-12-08','2022-12-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-12-05 23:11:00','2022-12-05 23:11:00',002,009,001),
(023,'2023-01-08','2022-01,05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-01-05 23:11:00','2022-01-05 23:11:00',002,009,001),
(024,'2023-02-08','2022-02-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-02-05 23:11:00','2022-02-05 23:11:00',002,009,001),
(025,'2023-03-08','2022-03-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',002,009,001),
(026,'2023-04-08','2022-04-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-04-05 23:11:00','2022-04-05 23:11:00',002,009,001),
(027,'2023-05-08','2022-05-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-05-05 23:11:00','2022-05-05 23:11:00',002,009,001),
(028,'2023-06-08','2022-06-05','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-06-05 23:11:00','2022-06-05 23:11:00',002,009,001),
(029,'2022-10-15','2022-10-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-10-11 23:11:00','2022-10-11 23:11:00',003,010,002),
(030,'2022-11-15','2022-11-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-11-11 23:11:00','2022-11-11 23:11:00',003,010,002),
(031,'2022-12-15','2022-12-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-12-11 23:11:00','2022-12-11 23:11:00',003,010,002),
(032,'2022-01-15','2022-01-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-01-11 23:11:00','2022-01-11 23:11:00',003,010,002),
(033,'2022-02-15','2022-02-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-02-11 23:11:00','2022-02-11 23:11:00',003,010,002),
(034,'2022-03-15','2022-03-11','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',0,'2022-03-11 23:11:00','2022-03-11 23:11:00',003,010,002),
(035,'2022-04-15','2022-04-17','Pago mesual de cien dolares con veinte centavos americanos',100.20,1.00,'total',1,'2022-04-11 23:11:00','2022-04-11 23:11:00',003,010,002),
(036,'2022-05-15','2022-05-18','Pago mesual de cien dolares con veinte centavos americanos',100.20,5.01,'total',2,'2022-05-11 23:11:00','2022-05-11 23:11:00',003,010,002),
(037,'2022-06-15','2022-06-19','Pago mesual de cien dolares con veinte centavos americanos',100.20,10.02,'total',3,'2022-06-11 23:11:00','2022-06-11 23:11:00',003,010,002);
--***********************************************************
-- insercion de datos en la tabla factura, para comprobar el historial y las notificaciones
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(038,'2022-08-15','2022-08-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-08-14 23:11:00','2022-08-14 23:11:00',003,010,002);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(039,'2022-09-15','2022-09-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-09-14 23:11:00','2022-09-14 23:11:00',003,010,002);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(040,'2022-10-15','2022-10-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-10-14 23:11:00','2022-10-14 23:11:00',003,010,002);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(041,'2022-10-15','2019-10-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-10-14 23:11:00','2022-10-14 23:11:00',003,010,002),
(042,'2022-10-15','2018-10-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-10-14 23:11:00','2022-10-14 23:11:00',003,010,002);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(043,'2022-11-15','2022-11-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-11-14 23:11:00','2022-11-14 23:11:00',003,010,002);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(044,'2022-12-15','2022-12-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2022-12-14 23:11:00','2022-12-14 23:11:00',003,010,001);
INSERT INTO factura(id_factura, 
fecha_vencimiento,
fecha_pago, 
detalle, 
abono,              
recargo, 
estado,
n_recargos,
fecha_registro, 
fecha_modificacion, 
id_cliente, 
id_convenio, 
id_empleado) VALUES
(045,'2023-01-15','2023-01-14','Pago mesual de cien dolares con veinte centavos americanos',100.20,0.00,'total',3,'2023-01-14 23:11:00','2023-01-14 23:11:00',003,010,001);
--***********************************************************
---Consultas
desc cliente;
SELECT * FROM cliente;
desc empleado;
SELECT * FROM empleado;
desc servicio;
SELECT * FROM servicio;
desc convenio;
SELECT * FROM convenio;
desc factura;
SELECT * FROM factura;
--Tablas de vistas
desc ST_recuperacion;
SELECT * FROM ST_recuperacion;
desc list_empleados;
SELECT * FROM list_empleados;
desc ser_recuperacion;
SELECT * FROM ser_recuperacion;
--Tablas de triggers
desc Historial;
SELECT * FROM Historial;
desc notificacion;
SELECT * FROM notificacion;  

--Consultas relacionando tablas 
SELECT factura.id_empleado,factura.detalle, factura.abono,empleado.nombre,empleado.apellido
from factura
INNER JOIN empleado ON factura.id_empleado = empleado.id_empleado;
--***********************************************************
--Vista servicio con mas convenios
-- consulta

SELECT id_servicio, COUNT(*) FROM convenio 
GROUP BY id_servicio HAVING COUNT(*)>1;
--Creacion de la vista
drop view ser_recuperacion;
Create view ser_recuperacion AS
SELECT convenio.id_servicio, servicio.tipo_servicio,servicio.nombre_institucion, 
COUNT(*) FROM convenio INNER JOIN servicio ON convenio.id_servicio= servicio.id_servicio 
GROUP BY convenio.id_servicio HAVING COUNT(*)>1;


Create view ser_recuperacion AS
SELECT servicio.tipo_servicio,servicio.nombre_institucion, COUNT(*) 
FROM convenio INNER JOIN servicio ON convenio.id_servicio= servicio.id_servicio 
GROUP BY convenio.id_servicio HAVING COUNT(*)>1;

select * from ser_recuperacion;

--***********************************************************
-- Vista del servicio con mas recuperacion
--suma los abonos recuperado por cada tipo de servicio
-- ordena de mayor a menor por el monto recuperado
drop view ST_recuperacion;
Create view ST_recuperacion AS
SELECT S.nombre_institucion,S.tipo_servicio,
SUM(F.abono) AS TOTAL_Recuperado,
SUM(F.recargo) AS TOTAL_Recargo
FROM factura AS F
inner JOIN convenio AS C ON F.id_convenio = C.id_convenio 
inner JOIN servicio AS S ON S.id_servicio = C.id_servicio GROUP BY(S.id_servicio)
ORDER BY TOTAL_Recuperado DESC; 

select * from ST_recuperacion;


--***********************************************************
-- Vista del empleado con mayor recuperacion en un periodo de tiempo
-- empleado y monto recuperado
-- consultas
SELECT id_empleado, SUM(abono) FROM factura 
where factura.id_empleado=2;

SELECT empleado.nombre, SUM(abono) AS factura
FROM (factura,empleado) where factura.id_empleado = 1;

SELECT E.id_empleado AS id_empleado, 
  E.nombre AS NOMBRE_empleado, 
  E.apellido AS APELLIDO_empleado, 
  SUM(F.abono) AS TOTAL_ABONO,
  SUM(F.recargo) AS TOTAL_RECARGO
    FROM factura AS F
    INNER JOIN empleado AS E
    ON E.id_empleado = F.id_empleado AND YEAR(F.fecha_pago) BETWEEN 2018 AND 2019
    GROUP BY(E.id_empleado);


-- view de lista de emepleados y montos recuperados
-- lista de empleados y montos recuperados
drop view list_empleado;
Create view list_empleados AS 
SELECT E.id_empleado AS id_empleado, 
  E.nombre AS NOMBRE_empleado, 
  E.apellido AS APELLIDO_empleado, 
  SUM(F.abono) AS TOTAL_ABONO,
  SUM(F.recargo) AS TOTAL_RECARGO
    FROM factura AS F
    INNER JOIN empleado AS E
    ON E.id_empleado = F.id_empleado AND YEAR(F.fecha_pago) BETWEEN 2018 AND 2019
    GROUP BY(E.id_empleado);

SELECT * from list_empleados;
--***********************************************************
--trigger  historial
--Crear la tabla Historiales
create table Historial (id_historial int primary key auto_increment, accion_realizada varchar(250), 
id_factura int, fecha timestamp default now());

--Trigger para historial
drop trigger historial_movimiento;
delimiter //
create TRIGGER historial_movimiento 
AFTER INSERT ON factura 
FOR EACH ROW 
    insert into Historial 
    values(0, CONCAT('Se ha realizado el siguiente movimiento: ' , ' ' , NEW.detalle), NEW.id_factura, now());
//
delimiter ;

--Comprobar
insert into factura ...
--Se debe disparar el triger y luego consultar la tabla
select * from historial;
--***********************************************************
--Crear la tabla notificacion
create table notificacion (id_notificacion int primary key auto_increment, mensaje varchar(250), 
id_factura int, fecha timestamp default now());

-- trigger notifcacion
drop trigger T_notifcacion;
delimiter //
create TRIGGER T_notifcacion 
AFTER INSERT ON factura 
FOR EACH ROW 
    insert into notificacion 
    values(0,'Usted ha generado una nueva factura,Se le enviara al cliente una notificacion: ', NEW.id_factura, now());
//
delimiter ;
--Comprobar
insert into factura ...
--Se debe disparar el triger y luego consultar la tabla
select * from T_notifcacion;

--***********************************************************
--Procedimiento almacenado para calcular el recargo
delimiter //

CREATE PROCEDURE cal_recargo()
BEGIN
SELECT detalle, (abono*0.01) recargo FROM factura WHERE fecha_pago > fecha_vencimiento AND n_recargos=1;
SELECT detalle, (abono*0.05) recargo FROM factura WHERE fecha_pago > fecha_vencimiento AND n_recargos=2;
SELECT detalle, (abono*0.10) recargo FROM factura WHERE fecha_pago > fecha_vencimiento AND n_recargos>=3;

END 
//
delimiter ;
--probar procedimiento
call cal_recargo();
--***********************************************************





















