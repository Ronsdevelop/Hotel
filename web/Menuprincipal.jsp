<%-- 
    Document   : Menuprincipal
    Created on : 02/11/2018, 10:56:32 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="plugins/ANGULAR/js/angular.min.js" type="text/javascript"></script>
        <link href="plugins/BOOTSTRAP/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="menu/inicio/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="menu/inicio/menu.css" rel="stylesheet" type="text/css"/>
        <script src="menu/inicio/jquery-1.js" type="text/javascript"></script>
        <script src="menu/inicio/bootstrap.js" type="text/javascript"></script>

        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="https:https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <link rel="https:https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

        <script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/rowreorder/1.2.3/js/dataTables.rowReorder.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

        <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/rowreorder/1.2.3/css/rowReorder.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
        <script src="plugins/DATATABLE/js/imprimir.js" type="text/javascript"></script>


    </head>
    <title>JSP Page</title>
</head>
<body>
    <div class="row">
        <div class="col-lg-3">
            <div class="nav-side-menu">
                <div class="brand">
                    HOTEL LAS AMERICAS
                </div>
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
                            <li data-toggle="collapse" data-target="#niveles">
                                <a>Niveles <span></span></a>
                            </li>
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
            </div>
        </div>
        
        <div class="col-lg-9">
                        <div class="sub-menu collapse" id="niveles">

            <h1>Niveles</h1>
               <div class="container">
                <div class="row" >
                        <table class="table-striped display nowrap" id="tabla">
                            <thead>
                                <tr class="bg-primary" border="1">
                                    <th>C&oacute;digo</th>
                                    <th>Descipci&oacute;n</th>
                                    <th>Operaciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (model.Niveles car : dao.NivelDAO.listarniveles()) {%>
                                <tr>
                                    <td width='5'><%= car.getCod_nivel()%></td>
                                    <td width='5'><%= car.getNom_nivel()%></td>
                                    <td>
                                        <a href="Servleteliminarcargo?cod=<%= car.getCod_nivel()%>">
                                        <input type="submit" value="Eliminar"
                                               class="btn btn-danger btn-sm"></a>
                                        &nbsp;&nbsp;
                                        <a href="modificarcargo.jsp?cod=<%= car.getCod_nivel()%>">
                                        <input type="submit" value="Modificar"
                                               class="btn btn-success btn-sm"></a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                        </form>
                    </div>
            </body>
            
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                            Registrar Nivel
                        </button>
                    </div>
                </div>

            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Registrar Nivel</h5>
                        </div>
                        <div class="modal-body">
                            <!-- 4:3 aspect ratio -->
                            <div class="embed-responsive embed-responsive-4by3">
                                <iframe class="embed-responsive-item" src="registrarnivel.jsp"></iframe>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-info btm-sm" data-dismiss="modal" onclick= "self.location.href = 'Menuprincipal.jsp'">Salir de la ventana modal</button>
                            <!--<button type="button" class="btn btn-primary">Save changes</button>-->
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>

            <!--fin de mi ventana modal-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        </body>
    </html>