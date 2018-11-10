<%-- 
    Document   : RegistrarCliente
    Created on : 07/11/2018, 02:54:08 PM
    Author     : Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIS JAVA</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <h4>Registro de Cliente</h4>

                    <form name="form1" method="post" action="ServletCliente" >
                        <table class="table" >
                            <tr>
                                <td><label>Nombres</label></td>
                                <td><input type="text" class="form-control" name="nom" placeholder="Nombre..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Apellido Paterno</label></td>
                                <td><input type="text" class="form-control" name="apepa" placeholder="Apellido Paterno..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Apellido Materno</label></td>
                                <td><input type="text" class="form-control" name="apema" placeholder="Apellido Materno..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Direccion</label></td>
                                <td><input type="text" class="form-control" name="dir" placeholder="Direccion..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Telefono</label></td>
                                <td><input type="text" class="form-control" name="fono" placeholder="Telefono..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Email</label></td>
                                <td><input type="text" class="form-control" name="email" placeholder="Email..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Dni</label></td>
                                <td><input type="text" class="form-control" name="dni" placeholder="Dni..." required /></td>
                            </tr>
                            <tr>
                                <td><label>Estado</label></td>
                                <td><input type="text" class="form-control" name="est" placeholder="Estado..." required /></td>
                            </tr>

                            <tr>                               
                                <td><input type="submit" value="Grabar" class="btn btn-primary" ></td>
                                <td><input type="reset" value="Limpiar" class="btn btn-danger" ></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <h5>
                                        <font color="red">
                                        <%=request.getAttribute("mensaje")!=null?request.getAttribute("mensaje"):""%>
                                        </font>
                                    </h5>
                                </td>
                            </tr>


                        </table>
                    </form>


                </div>

            </div>

        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>
