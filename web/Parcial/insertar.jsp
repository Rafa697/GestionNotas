<%-- 
    Document   : insertar
    Created on : 11-22-2018, 06:41:07 PM
    Author     : Alumno 07
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
        <title>Inicio</title>
   
        <div class="container">
            <div class="row">
                <div class="col-4">
                </div>
                <div class="col-4">
                    <form action="../parcial?action=insertar" method="POST" >
                        <h1> Parciales </h1>
                        <label for="nombre">ID</label>
                        <input class="form-control" name="id_parcial" required="">
                        <label for="nombre">Nombre</label>
                        <input class="form-control" name="nombre" required="">
                        <label for="nombre">Porcentaje</label>
                        <input class="form-control" name="porcentaje" required="" >
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
