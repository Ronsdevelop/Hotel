<%-- 
    Document   : ingresanivel
    Created on : 03/11/2018, 01:01:11 AM
    Author     : Richard
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
                    <h4>Registro de Niveles</h4>

                    <form name="form1" method="post" action="ingresanivel" >
                        <table class="table" >
                            <tr>
                                <td><label>Ingresar Nivel</label></td>
                                <td><input type="text" class="form-control" name="nivel" placeholder="Nivel.." required /></td>
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