<%-- 
    Document   : probando
    Created on : 03/11/2018, 02:12:28 PM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="plugins/DATATABLE/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="plugins/DATATABLE/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <link href="plugins/BOOTSTRAP/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="plugins/BOOTSTRAP/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="plugins/DATATABLE/js/jquery-3.3.1.js" type="text/javascript"></script>
        <script src="plugins/DATATABLE/js/dataTables.buttons.min.js" type="text/javascript"></script>

        <script src="js/popper.min.js" type="text/javascript"></script>
        <script src="js/buttons.flash.min.js" type="text/javascript"></script>
        <script src="js/pdfmake.min.js" type="text/javascript"></script>     
        <link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
        <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
        <link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=19472395a2969da78c8a4c707e72123a">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
        <style type="text/css" class="init"></style>
        <script type="text/javascript" src="/media/js/site.js?_=5e8f232afab336abc1a1b65046a73460"></script>
        <script type="text/javascript" src="/media/js/dynamic.php?comments-page=extensions%2Fbuttons%2Fexamples%2Finitialisation%2Fexport.html" async></script>
        <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
        <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
        <script type="text/javascript" language="javascript" src="../../../../examples/resources/demo.js"></script>
    </head>
    <body>

        <script type="text/javascript" class="init">
            $(document).ready(function () {
                $('#example').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        'copy','excel','csv','pdf','print'
                    ]
                });
            });

        </script>
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <form name="form1" method="post" action="Servletpro">
                        <h1>Tabla de Multiplicar</h1>
                        <table>

                            <thead>
                                <tr>
                                    <th colspan="2" bgcolor="black"><font color="white">Tabla de Multiplicar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><label>Tabla: </label></td>
                                    <td><input type="text" name="txttabla" class="form-control" placeholder="12" required></td>
                                    <td rowspan="3"></td>

                                </tr>
                                <tr>
                                    <td><label>Cantidad de Terminos </label></td>
                                    <td><input type="text" name="txtter" class="form-control" placeholder="5" required></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" value="Enviar Datos" class="btn btn-outline-warning"></td>
                                    &nbsp;&nbsp;
                                    <td><input type="reset" value="Eliminar Datos" class="btn btn-outline-dark"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>

                    </form>
                </div>
                <div class="col-lg-7">
                    <table border="1" id="example" class="display nowrap" style="width:100%">
                        <thead>
                            <tr>
                                <th>C&oacute;digo</th>
                                <th>Curso</th>
                                <th>Ciclo</th>
                                <th>Cr&eacute;dito</th>
                                <th>Costo</th>
                                <th>Observaci&oacute;n</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>COD1</td>
                                <td>INGLES</td>
                                <td>4</td>
                                <td>6</td>
                                <td>20</td>
                                <td>ACTIVO</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
    </body>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
    <script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
