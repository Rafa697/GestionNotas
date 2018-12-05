<%-- 
    Document   : index
    Created on : 10-16-2018, 07:23:10 PM
    Author     : Alumno 08
--%>

 <jsp:include page="../header.jsp"/>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <title>Inicio</title>
    
  
  <div class="container">
             <div class="row">
                 <div class="col-4">
                     
                 </div>
                 <div class="col-4">
                     <form action="../rol?action=insertar" method="POST">
                         <h1> Roles De Sistema</h1>
            <label for="nombre">Rol</label>
            <input class="form-control " name="rol" required="">

            <br>
            <button class="form-control btn badge-light btn-dark" >Enviar</button>
                     ${msg}
                     <br>
                     <br>
                     <center> <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a> </center>
        </div>
                     
                    
                    
             </div>
        </div>
<jsp:include page="../footer.jsp"/>

