/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.35-MariaDB : Database - proyecto_hotelweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proyecto_hotelweb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proyecto_hotelweb`;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `cod_cliente` char(20) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `appaterno` varchar(30) NOT NULL,
  `apmaterno` varchar(30) NOT NULL,
  `direccion` longtext,
  `fono` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dni` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

insert  into `clientes`(`cod_cliente`,`nombres`,`appaterno`,`apmaterno`,`direccion`,`fono`,`email`,`dni`,`estado`) values ('CLI001','ricardo','roa','sullon','av:castilla','837263548','ricardo@gmail.com',76836964,'activo');

/*Table structure for table `detallereserva` */

DROP TABLE IF EXISTS `detallereserva`;

CREATE TABLE `detallereserva` (
  `cod_detallereserva` char(10) NOT NULL,
  `cod_reserva` char(20) NOT NULL,
  `cod_servicio` char(20) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  PRIMARY KEY (`cod_detallereserva`),
  KEY `fkdtrres` (`cod_reserva`),
  KEY `fkdtrser` (`cod_servicio`),
  CONSTRAINT `fkdtrres` FOREIGN KEY (`cod_reserva`) REFERENCES `reservas` (`cod_reserva`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkdtrser` FOREIGN KEY (`cod_servicio`) REFERENCES `servicios` (`cod_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detallereserva` */

insert  into `detallereserva`(`cod_detallereserva`,`cod_reserva`,`cod_servicio`,`precio`) values ('DTR001','RES001','SER001',200.00);

/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `cod_empleado` char(20) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `appaterno` varchar(30) NOT NULL,
  `apmaterno` varchar(30) NOT NULL,
  `fono` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cod_tipoempleado` char(20) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `estado` char(10) NOT NULL,
  PRIMARY KEY (`cod_empleado`),
  KEY `fkemptpe` (`cod_tipoempleado`),
  CONSTRAINT `fkemptpe` FOREIGN KEY (`cod_tipoempleado`) REFERENCES `tipoempleados` (`cod_tipoempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `empleados` */

insert  into `empleados`(`cod_empleado`,`nombres`,`appaterno`,`apmaterno`,`fono`,`email`,`cod_tipoempleado`,`usuario`,`clave`,`estado`) values ('EMP001','RICHARD','ROA','PRADO',987654321,'rroaprado@gmail.com','TPEMP001','roa','123456','ACTIVO'),('EMP002','RONY','AGUILERA','RIVERA',927666740,'rony_aguilera@hotmail.com','TPEMP001','Rony','Peru2018','ACTIVO');

/*Table structure for table `habitaciones` */

DROP TABLE IF EXISTS `habitaciones`;

CREATE TABLE `habitaciones` (
  `cod_habitacion` char(20) NOT NULL,
  `cod_tipohabitacion` char(20) NOT NULL,
  `cod_nivel` char(10) NOT NULL,
  `numero` int(11) NOT NULL,
  `observaciones` longtext NOT NULL,
  `disponible` char(3) NOT NULL,
  `reserva` char(3) NOT NULL,
  PRIMARY KEY (`cod_habitacion`),
  KEY `fkhabtph` (`cod_tipohabitacion`),
  KEY `fkhabniv` (`cod_nivel`),
  CONSTRAINT `fkhabniv` FOREIGN KEY (`cod_nivel`) REFERENCES `niveles` (`cod_nivel`),
  CONSTRAINT `fkhabtph` FOREIGN KEY (`cod_tipohabitacion`) REFERENCES `tipohabitaciones` (`cod_tipohabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `habitaciones` */

insert  into `habitaciones`(`cod_habitacion`,`cod_tipohabitacion`,`cod_nivel`,`numero`,`observaciones`,`disponible`,`reserva`) values ('HAB001','TPH001','NIV001',101,'solo para cuatro personas','si','no');

/*Table structure for table `habitacionimagenes` */

DROP TABLE IF EXISTS `habitacionimagenes`;

CREATE TABLE `habitacionimagenes` (
  `cod_habimagenes` char(20) NOT NULL,
  `cod_habitacion` char(20) NOT NULL,
  `imagen` longtext NOT NULL,
  PRIMARY KEY (`cod_habimagenes`),
  KEY `fkhbitph` (`cod_habitacion`),
  CONSTRAINT `fkhbitph` FOREIGN KEY (`cod_habitacion`) REFERENCES `habitaciones` (`cod_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `habitacionimagenes` */

insert  into `habitacionimagenes`(`cod_habimagenes`,`cod_habitacion`,`imagen`) values ('HBI001','HAB001','4t79286537856295623525');

/*Table structure for table `niveles` */

DROP TABLE IF EXISTS `niveles`;

CREATE TABLE `niveles` (
  `cod_nivel` char(10) NOT NULL,
  `nom_nivel` char(30) NOT NULL,
  PRIMARY KEY (`cod_nivel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `niveles` */

insert  into `niveles`(`cod_nivel`,`nom_nivel`) values ('NIV001','QUINTO NIVEL');

/*Table structure for table `reservas` */

DROP TABLE IF EXISTS `reservas`;

CREATE TABLE `reservas` (
  `cod_reserva` char(20) NOT NULL,
  `cod_empleado` char(20) NOT NULL,
  `cod_cliente` char(20) NOT NULL,
  `cod_habitacion` char(20) NOT NULL,
  `observacion` longtext NOT NULL,
  `horafechares` datetime NOT NULL,
  `diasreserva` int(11) NOT NULL,
  `descuento` decimal(9,2) NOT NULL,
  PRIMARY KEY (`cod_reserva`),
  KEY `fkrescli` (`cod_cliente`),
  KEY `fkresemp` (`cod_empleado`),
  KEY `fkreshab` (`cod_habitacion`),
  CONSTRAINT `fkrescli` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`cod_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkresemp` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkreshab` FOREIGN KEY (`cod_habitacion`) REFERENCES `habitaciones` (`cod_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservas` */

insert  into `reservas`(`cod_reserva`,`cod_empleado`,`cod_cliente`,`cod_habitacion`,`observacion`,`horafechares`,`diasreserva`,`descuento`) values ('RES001','EMP001','CLI001','HAB001','cama con tv','2018-11-04 12:37:50',9,20.00);

/*Table structure for table `servicios` */

DROP TABLE IF EXISTS `servicios`;

CREATE TABLE `servicios` (
  `cod_servicio` char(20) NOT NULL,
  `servicio` varchar(30) NOT NULL,
  `descripcion` longtext,
  `precio` decimal(9,2) NOT NULL,
  PRIMARY KEY (`cod_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `servicios` */

insert  into `servicios`(`cod_servicio`,`servicio`,`descripcion`,`precio`) values ('SER001','deayuno y almuerzo','tv con baño y wi-fi',300.00);

/*Table structure for table `tipoempleados` */

DROP TABLE IF EXISTS `tipoempleados`;

CREATE TABLE `tipoempleados` (
  `cod_tipoempleado` char(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descripcion` longtext,
  PRIMARY KEY (`cod_tipoempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipoempleados` */

insert  into `tipoempleados`(`cod_tipoempleado`,`tipo`,`descripcion`) values ('TPEMP001','administrador','acceso total al sistema');

/*Table structure for table `tipohabitaciones` */

DROP TABLE IF EXISTS `tipohabitaciones`;

CREATE TABLE `tipohabitaciones` (
  `cod_tipohabitacion` char(20) NOT NULL,
  `tipohabitacion` varchar(30) NOT NULL,
  `descripcion` longtext,
  `precio` decimal(9,2) NOT NULL,
  PRIMARY KEY (`cod_tipohabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipohabitaciones` */

insert  into `tipohabitaciones`(`cod_tipohabitacion`,`tipohabitacion`,`descripcion`,`precio`) values ('TPH001','cuatruple','incluye 4 camas y y dos baños',500.00);

/* Procedure structure for procedure `sp_eliminacliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminacliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminacliente`(cod char(20))
BEGIN
	delete from `clientes`
	where `cod_cliente`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminadetallereserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminadetallereserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminadetallereserva`(cod char(20))
BEGIN
	delete from `detallereserva`
	where `cod_detallereserva`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminaempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminaempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaempleados`(cod char(20))
BEGIN
	delete from `empleados`
	where `cod_empleado`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminahabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminahabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminahabitacion`(cod char(20))
BEGIN
	delete from `habitaciones`
	where `cod_habitacion`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminahabitacionimagen` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminahabitacionimagen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminahabitacionimagen`(cod char(20))
BEGIN
	delete from `habitacionimagenes`
	where `cod_habimagenes`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminanivel` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminanivel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminanivel`(cod char(20))
BEGIN
	delete from `niveles`
	where `cod_nivel`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminareserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminareserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminareserva`(cod char(20))
BEGIN
	delete from `reservas`
	where `cod_reserva`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminaservicio` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminaservicio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaservicio`(cod char(20))
BEGIN
	delete from `servicios`
	where `cod_servicio`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminatipocliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminatipocliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminatipocliente`(cod char(20))
BEGIN
	delete from `tipocliente`
	where `cod_tipocliente`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminatipoempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminatipoempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminatipoempleados`(cod char(20))
BEGIN
	delete from `tipoempleados`
	where `cod_tipoempleado`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_eliminatipohabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_eliminatipohabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminatipohabitacion`(cod char(20))
BEGIN
	delete from `tipohabitaciones`
	where `cod_tipohabitacion`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresaclientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresaclientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresaclientes`(`nom`varchar(30),
    `apepa`varchar(30),`apema`varchar(30),dir varchar(200),`cel`char(10),`correo`varchar(50),
    `dni`int,estado varchar(30))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("CLI",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_cliente`,4)+1)),3)) FROM `clientes`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='CLI001';
				END IF;
			END;
		INSERT INTO `clientes`(`cod_cliente`,`nombres`,`appaterno`,`apmaterno`,`direccion`,`fono`,`email`,`dni`,`estado`)
		VALUES(id,nom,apepa,apema,dir,cel,correo,dni,estado);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresadetallereserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresadetallereserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresadetallereserva`(`cod_res`char(20),
    `serv`char(20),`pre`decimal(9,2))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("DTR",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_detallereserva`,4)+1)),3)) FROM `detallereserva`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='DTR001';
				END IF;
			END;
		INSERT INTO `detallereserva`(cod_detallereserva,`cod_reserva`,`cod_servicio`,`precio`)
		VALUES(id,cod_res,serv,pre);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresaempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresaempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresaempleados`(`nom`varchar(30),
    `apepa`varchar(30),`apema`varchar(30),`cel`int,`correo`varchar(50),
    `cod_temp`char(20),`usuario`varchar(20),`pass`varchar(20),`estado`varchar(10))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("EMP",RIGHT(CONCAT("000",
		MAX(SUBSTRING(cod_empleado,4)+1)),3)) FROM empleados);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='EMP001';
				END IF;
			END;
		INSERT INTO `empleados`(`cod_empleado`,`nombres`,`appaterno`,`apmaterno`,`fono`,`email`,`cod_tipoempleado`,
		`usuario`,`clave`,`estado`)
		VALUES(id,nom,apepa,apema,cel,correo,cod_temp,usuario,pass,estado);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresahabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresahabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresahabitacion`(ctph char(20),cniv char(10),
	num int, obs varchar(200),dis char(3),reser char(3))
BEGIN
	DECLARE id CHAR(20);
	
		SET id=(SELECT CONCAT("HAB",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_habitacion`,4)+1)),3)) FROM `habitaciones`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='HAB001';
				END IF;
			END;
		INSERT INTO `habitaciones`(`cod_habitacion`,`cod_tipohabitacion`,`cod_nivel`,`numero`,`observaciones`,
		`disponible`,`reserva`)
		VALUES(id,ctph,cniv,num,obs,dis,reser);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresahabitacionimagenes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresahabitacionimagenes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresahabitacionimagenes`(`cod_hab`char(20),
    `imagen`longtext)
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("HBI",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_habimagenes`,4)+1)),3)) FROM `habitacionimagenes`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='HBI001';
				END IF;
			END;
		INSERT INTO `habitacionimagenes`(`cod_habimagenes`,`cod_habitacion`,`imagen`)
		VALUES(id,cod_hab,imagen);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresanivel` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresanivel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresanivel`(nom char(30))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("NIV",RIGHT(CONCAT("00",
		MAX(SUBSTRING(cod_nivel,4)+1)),3)) FROM niveles);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='NIV001';
				END IF;
			END;
		INSERT INTO `niveles`(`cod_nivel`,`nom_nivel`)
		VALUES(id,nom);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresareserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresareserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresareserva`(cod_emp char(20),cod_cli char(20),cod_hab char(20),
obs varchar(200),fech datetime, dres int,des decimal(9,2))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("RES",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_reserva`,4)+1)),3)) FROM `reservas`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='RES001';
				END IF;
			END;
		INSERT INTO `reservas`(`cod_reserva`,`cod_empleado`,`cod_cliente`,`cod_habitacion`,`observacion`,
		`horafechares`,`diasreserva`,`descuento`)
		VALUES(id,cod_emp,cod_cli,cod_hab,obs,fech,dres,des);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresaservicio` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresaservicio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresaservicio`(serv varchar(30),des varchar(200),pre decimal(9,2))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("SER",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_servicio`,4)+1)),3)) FROM `servicios`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='SER001';
				END IF;
			END;
		INSERT INTO `servicios`(`cod_servicio`,`servicio`,`descripcion`,`precio`)
		VALUES(id,serv,des,pre);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresatipocliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresatipocliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresatipocliente`(tpc varchar(30),descr varchar(200),des decimal(9,2))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("TPC",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_tipocliente`,4)+1)),3)) FROM `tipocliente`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='TCL001';
				END IF;
			END;
		INSERT INTO `tipocliente`(`cod_tipocliente`,`tipoclientes`,`descripcion`,`descuento`)
		VALUES(id,tpc,descr,des);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresatipoempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresatipoempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresatipoempleados`(tip varchar(20),des varchar(250))
BEGIN
	DECLARE id CHAR(20);
	SET id=(SELECT CONCAT("TPEMP",RIGHT(CONCAT("000",
	MAX(SUBSTRING(`cod_tipoempleado`,7)+1)),3)) FROM `tipoempleados`);
		BEGIN 
			IF ISNULL(id) THEN 
				SET id='TPEMP001';
			END IF;
		END;
	INSERT INTO `tipoempleados`(`cod_tipoempleado`,`tipo`,`descripcion`)
	VALUES(id,tip,des);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_ingresatipohabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_ingresatipohabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingresatipohabitacion`(tph varchar(30),descr varchar(200),pre decimal(9,2))
BEGIN
	DECLARE id CHAR(20);
		SET id=(SELECT CONCAT("TPH",RIGHT(CONCAT("000",
		MAX(SUBSTRING(`cod_tipohabitacion`,4)+1)),3)) FROM `tipohabitaciones`);
			BEGIN 
				IF ISNULL(id) THEN 
					SET id='TPH001';
				END IF;
			END;
		INSERT INTO `tipohabitaciones`(`cod_tipohabitacion`,`tipohabitacion`,`descripcion`,`precio`)
		VALUES(id,tph,descr,pre);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificaclientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificaclientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaclientes`(cod char(20),`nom`VARCHAR(30),
    `apepa`VARCHAR(30),`apema`VARCHAR(30),dir VARCHAR(200),`cel`CHAR(10),`correo`VARCHAR(50),
    `ctc`CHAR(20),`dni`INT,estado VARCHAR(30))
BEGIN 
	update `clientes`
	set `nombres`=nom,`appaterno`=apepa,`apmaterno`=apema,`direccion`=dir,`fono`=cel,`email`=correo,
		`cod_tipocliente`=ctc,`dni`=dni,`estado`=estado
	where `cod_cliente`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificadetallereserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificadetallereserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificadetallereserva`(cod char(10),`cod_res`CHAR(20),
    `cod_ser`CHAR(20),`pre`DECIMAL(9,2))
BEGIN 
	update `detallereserva`
	set cod_reserva=cod_res,`cod_servicio`=cod_ser, precio=pre
	where `cod_detallereserva`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificaempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificaempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaempleados`(cod char(10),nom varchar(30),
apepa varchar(30),apema varchar(30),fono int, email varchar(50),codtpe char(20),usuario varchar(20),clave varchar(20),estado char(10))
BEGIN 
	update empleados
	set `nombres`=nom,`appaterno`=apepa,`apmaterno`=apema,`fono`=fono,`email`=email,`cod_tipoempleado`=codtpe,
	`usuario`=usuario,clave=clave,`estado`=estado
	where `cod_empleado`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificahabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificahabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificahabitacion`(cod char(10),cph CHAR(20),cn CHAR(10),
	num INT, obs VARCHAR(200),dis CHAR(3),reser CHAR(3))
BEGIN 
	update `habitaciones`
	set `cod_tipohabitacion`=cph,`cod_nivel`=cn,`numero`=num,`observaciones`=obs,
		`disponible`=dis,`reserva`=reser
	where `cod_habitacion`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificahabitacionimagen` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificahabitacionimagen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificahabitacionimagen`(cod char(20),`cod_hab`CHAR(20),
    `imagen`LONGTEXT)
BEGIN 
	update `habitacionimagenes`
	set `cod_habitacion`=cod_hab,`imagen`=imagen
	where `cod_habimagenes`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificanivel` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificanivel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificanivel`(cod char(10),nom varchar(30))
BEGIN
	update niveles
	set nom_nivel=nom
	where cod_nivel=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificareserva` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificareserva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificareserva`(cod char(20),cod_emp CHAR(20),cod_cli CHAR(20),cod_hab CHAR(20),
obs VARCHAR(200),fech DATETIME, dres INT,des DECIMAL(9,2))
BEGIN 
	update `reservas`
	set `cod_empleado`=cod_emp,`cod_cliente`=cod_cli,`cod_habitacion`=cod_hab,`observacion`=obs,
		`horafechares`=fech,`diasreserva`=dres,`descuento`=des
	where `cod_reserva`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificaservicio` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificaservicio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaservicio`(cod CHAR(20),serv VARCHAR(30),des VARCHAR(200),pre DECIMAL(9,2))
BEGIN 
	UPDATE `servicios`
	SET `servicio`=serv,`descripcion`=des,`precio`=pre
	WHERE `cod_servicio`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificatipocliente` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificatipocliente` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificatipocliente`(cod CHAR(20),tipc CHAR(30),descr varchar(200),des decimal(9,2))
BEGIN 
	UPDATE `tipocliente`
	SET `tipoclientes`=tipc,`descripcion`=descr,`descuento`=des
	WHERE `cod_tipocliente`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificatipoempleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificatipoempleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificatipoempleados`(cod char(10),tip varchar(30),
des varchar(30))
BEGIN 
	update `tipoempleados`
	set `tipo`=tip,`descripcion`=des
	where `cod_tipoempleado`=cod;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_modificatipohabitacion` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_modificatipohabitacion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificatipohabitacion`(cod CHAR(20),tiph CHAR(30),descr varchar(200),pre decimal(9,2))
BEGIN 
	UPDATE `tipohabitaciones`
	SET `tipohabitacion`=tiph,`descripcion`=descr,`precio`=pre
	WHERE `cod_tipohabitacion`=cod;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
