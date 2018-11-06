<%-- 
    Document   : Menuprincipal
    Created on : 02/11/2018, 10:56:32 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="robots" content="noindex, nofollow">

<title>Menu Principal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="menu/inicio/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="menu/inicio/menu.css" rel="stylesheet" type="text/css"/>
<script src="menu/inicio/jquery-1.js" type="text/javascript"></script>
<script src="menu/inicio/bootstrap.js" type="text/javascript"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
    <div class="row">
    <div class="container-fluid">
    <div class="col-lg-2">
    <div class="nav-side-menu">
        <div class="brand">HOTEL LAS AMERICAS</div>
        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

        <div class="menu-list">

            <ul id="menu-content" class="menu-content collapse out">
                <li>
                    <a href="#">
                        <i class="fa fa-calendar fa-lg"></i> Reserva
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-sign-in fa-lg"></i> Recepcion
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-sign-out fa-lg"></i> Check Out
                    </a>
                </li>

                <li data-toggle="collapse" data-target="#new" class="collapsed">
                    <a href="#"><i class="fa fa-cube fa-lg"></i> Modulo Caja <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new">
                    <li>Apertura Caja</li>
                    <li>Cierre caja</li>
                    <li>Resumen Liquidacion</li>
                </ul>

                <li data-toggle="collapse" data-target="#new1" class="collapsed">
                    <a href="#"><i class="fa fa-shopping-cart fa-lg"></i> Punto de venta <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new1">
                    <li>Productos</li>
                    <li>Vender</li>
                </ul>

                <li>
                    <a href="#">
                        <i class="fa fa-arrow-circle-o-left fa-lg"></i> Egresos
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-wechat fa-lg"></i> Mensajes
                    </a>
                </li>

                <li data-toggle="collapse" data-target="#new2" class="collapsed">
                    <a href="#"><i class="fa fa-database fa-lg"></i>Configuracion <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new2">
                    <li>Habitaciones</li>
                    <li>Categorias</li>
                    <a href="probando.jsp"><li>Niveles</li><a>
                </ul>

                <li>
                    <a href="#">
                        <i class="fa fa-users fa-lg"></i> Clientes
                    </a>
                </li>

                <li data-toggle="collapse" data-target="#new3" class="collapsed">
                    <a><i class="fa fa-file-text-o fa-lg"></i>Reportes <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new3">
                    <li>Reporte Diario</li>
                    <li>Reporte Recepcionista</li>
                    <li>Reporte de Caja</li>
                    <li>Reporte Mensual</li>
                </ul>


                <li data-toggle="collapse" data-target="#new4" class="collapsed">
                    <a><i class="fa fa-gear fa-lg"></i>Administraci&oacute;n<span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new4">
                    <li>Empleados</li>
                </ul>
            </ul>
        </div>
        <div class="row">
        <div class="container">
        <div class="col-lg-10">
    <script src="plugins/BOOTSTRAP/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="plugins/BOOTSTRAP/js/popper.min.js" type="text/javascript"></script>
</body>
</html>