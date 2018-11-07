<%-- 
    Document   : ListarCliente
    Created on : 07/11/2018, 02:25:16 PM
    Author     : Rony
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/rowreorder/1.2.3/js/dataTables.rowReorder.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/rowreorder/1.2.3/css/rowReorder.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.dataTables.min.css">
<link rel="stylesheet" href=https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css>

<script>
$(document).ready(function() {
    var table = $('#tabla').DataTable( {
        rowReorder: {
            selector: 'td:nth-child(2)'
        },
        responsive: true
    } );
} );

</script>

        <title>Listar Clientes</title>
    </head>
    <body>
        <div class="container">
     
            <div class="row" >
                   <div class="col-lg-8">
                    
                     
                    <table class="table-striped display" id="tabla">
                        <thead>
                            <tr class="bg-warning" border="1">
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Email</th>
                                <th>Dni</th>
                                <th>Estado</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <%-- <%for(model.Cliente Cli:dao.CategoriaDAO.listar()){%> 
                             <tr>
                                 <td width='5'><%= Cli.getCod_cliente()%></td>
                                 <td width='5'><%= Cli.getNombres() %></td>
                                
                             
                                 
                            
                             </tr>
                             
                            
                            <%}%>  --%>
                        </tbody>
                    </table>
                </div>
            </div>
                        
             <div class="row">
                 <div class="col-lg-8">
              <!-- Button trigger modal -->
                <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">
                  Registrar Nueva Cliente
                </button>
                 </div>
             </div>
                
        </div>
        
       
                        
                        
                        
                        
                        
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registrar Cliente</h5>
         </div>
      <div class="modal-body">
        <!-- 4:3 aspect ratio -->
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item" src="RegistrarCliente.jsp"></iframe>
                </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal" onclick= "self.location.href = 'ListarCliente.jsp'">Salir de la ventana modal</button>
        <!--<button type="button" class="btn btn-primary">Save changes</button>-->
      </div>
    </div>
  </div>
</div>
      
      
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>

