<%-- 
    Document   : index
    Created on : 10-16-2018, 07:23:10 PM
    Author     : Alumno 08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <title>Inicio</title>
   <jsp:include page="../header.jsp"/>
        <div class="container">
             <div class="row">
                 <div class="col-4">
                     
                 </div>
                 <div class="col-4">
                     <form action="../ciclo?action=insertar" method="POST">
                         <h1> Roles De Sistema</h1>
            <label for="nombre">ID Ciclo</label>
            <input class="form-control " name="id_ciclo" required="">
            <label for="nombre">Ciclo</label>
            <input class="form-control " name="ciclo" required="">

            <br>
            
            <button class="form-control btn badge-light btn-dark" >Enviar</button>
                     </form>
                     ${msg}
                     <br>
                     <br>
                     <center> <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a> </center>
        </div>
                     
                    
                    
             </div>
        </div>
<jsp:include page="../footer.jsp"/>
