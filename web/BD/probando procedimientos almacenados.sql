CALL`sp_ingresaclientes`('ricardo','roa','sullon','av:castilla','837263548','ricardo@gmail.com','TIPCLI002',76836964,'activo');
CALL`sp_modificaclientes`('CLI001','OMAR EDUARDO','VILLEGAS','CORDOVA','av: miraflores','82433600','ocarmona07@gmail.com','TIPCLI001',12345678,'ACTIVO');
CALL`sp_eliminacliente`('CLI002');

CALL`sp_ingresadetallereserva`('RES001','SERV001','200');
CALL`sp_modificadetallereserva`('DTR001','RES001','SERV001','500');
CALL`sp_eliminadetallereserva`('DTR001');

CALL`sp_ingresaempleados`('RONNY','AGUILERA','RIVERA','987654321','RONNY@GAMIL.COM','TPEMP001','ROONY','9876','ACTIVO');
CALL`sp_modificaempleados`('EMP004','ronny','aguilera','rivera','98765432','ronnyaguilera@gammil.com','TPEMP001','ronny','123456','inactivo');
CALL`sp_eliminaempleados`('EMP004');

CALL`sp_ingresahabitacion`('TIPHAB0003','NIV004',4001,'solo para cuatro personas','si','no');
CALL`sp_modificahabitacion`('HAB013','TIPHAB0003','NIV004',4002,'solo para dos personas','no','si');
CALL`sp_eliminahabitacion`('HAB013');

CALL`sp_ingresahabitacionimagenes`('HAB013','4t79286537856295623525');
CALL`sp_modificahabitacionimagen`('HBI001','HAB013','IMAGEN');
CALL`sp_eliminahabitacionimagen`('HBI001');

CALL`sp_ingresanivel`('QUINTO NIVEL');
CALL`sp_modificanivel`('NIV005','quinto nivel');
CALL`sp_eliminanivel`('NIV005');

CALL`sp_ingresareserva`('EMP001','CLI001','HAB002','cama con tv','2018-11-04 12:37:50','9','20');
CALL`sp_modificareserva`('RES002','EMP001','CLI001','HAB002','cama con baño','2018-11-04 12:37:50','8','30');
CALL`sp_eliminareserva`('RES002');

CALL`sp_ingresaservicio`('deayuno y almuerzo','tv con baño y wi-fi','300');
CALL`sp_modificaservicio`('SER001','desayuno y almuerzo','baño, wi-fi, tv','500');
CALL`sp_eliminaservicio`('SER001');

CALL`sp_ingresatipocliente`('habitu','cliente frecuente','50');
CALL`sp_modificatipocliente`('TPC001','habitual','cliente frecuentemente','60');
CALL`sp_eliminatipocliente`('TPC001');

CALL`sp_ingresatipoempleados`('administrador','acceso total al sistema');
CALL`sp_modificatipoempleados`('TPEMP003','recepcionista','acceso recepcion');
CALL`sp_eliminatipoempleados`('TPEMP003');

CALL`sp_ingresatipohabitacion`('cuatruple','incluye 4 camas y y dos baños','500');
CALL`sp_modificatipohabitacion`('TPH001','cuatuplex','incluye 5 camas y y 3 baños','550');
CALL`sp_eliminatipohabitacion`('TPH001');