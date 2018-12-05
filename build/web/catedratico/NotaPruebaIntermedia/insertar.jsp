<%-- 
    Document   : insertar
    Created on : 11-26-2018, 03:39:30 PM
    Author     : Alumno 35
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../header.jsp"/>
<title>Insertar</title>
    
        <div class="container">
            <div class="row">
                <div class="col-4">
                </div>
                <div class="col-4">
                    <form action="../../notaPI?action=insertar" method="POST" >
                        <h1> Notas Pruebas Intermedias</h1>
                        <label for="nombre">Id_pi</label>
                        <input class="form-control " name="id_pi" required="">
                        <label for="nombre">Id_coleccion</label>
                        <input class="form-control" name="id_coleccion" required="">
                        <label for="nombre">Nota</label>
                        <input class="form-control" name="nota" required="">
                        <br>
                        <button class="form-control btn badge-light btn-dark" >Enviar</button>
                    </form>
                    ${msg}
                    <br>
                    <br>
                    <center> <a class="btn btn-dark btn-light" href="../../index_catedratico.jsp" >↩ Volver a inicio</a> </center>
                </div>
            </div>
        </div>
<jsp:include page="../../footer.jsp"/>