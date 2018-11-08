<%-- 
    Document   : modificarnivel
    Created on : 08/11/2018, 12:48:02 AM
    Author     : Richard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="plugins/BOOTSTRAP/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Modificar Nivel</title>
        </head>
    </br>
    </br>
    <body>
        <center>
        <% String ni = request.getParameter("cod");%>
        <% model.Niveles niv = dao.NivelDAO.getIdnivel(ni);%>
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <center><h4>MODIFICAR CATEGORIA</h4></center>

                   <table class="table table-striped">
                        <form name="form1" method="post" action="Servletmodificanivel">
                            <tr>
                                <td><label>C&oacute;digo</label></td>
                                <td><input type="text" name="cod" 
                                           class="form-control"
                                           value="<% out.println(niv.getCod_nivel()); %>" readonly></td>
                            </tr>

                            <tr>
                                <td><label>Nivel</label></td>
                                <td><input type="text" name="niv" 
                                           class="form-control"
                                           value="<% out.println(niv.getNom_nivel()); %>"></td>

                            </tr>


                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="Modificar"
                                           class="btn btn-danger">&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" value="Limpiar"
                                           class="btn btn-primary">  
                                </td>
                        </form>   

                    </table>
                </div>
            </div>
        </div>

        <script src="plugins/DATATABLE/js/popper.min.js" type="text/javascript"></script>
        <script src="plugins/DATATABLE/js/bootstrap.min.js" type="text/javascript"></script>          
    </body>
</html>