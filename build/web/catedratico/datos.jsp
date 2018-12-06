<%-- 
    Document   : Datos.jsp
    Created on : 10-23-2018, 06:43:42 PM
    Author     : Alumno 08
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
        <title>Catedraticos</title>
   
        <div class="container">
            <form action="catedratico?action=insertar" method="POST"> 
                    <h1>Catedraticos </h1>
                    <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a>
                    <a class="btn btn-success " href="catedratico/insertar.jsp">➕ Nuevo</a>
                    
                    </br>
                    </br>
        <table class="table table-bordered table-hover ">
            <thead>
                <tr>
                    <th>ID Catedratico</th>
                    <th>ID Persona</th>
                    <th>Titulo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ver" items="${listar}">
                <tr>
                    <td>${ver.id_catedratico}</td>
                    <td>${ver.id_persona}</td>
                    <td>${ver.titulo}</td>
                    <td>
                <center>
                        <a class="btn btn-success " href="catedratico?action=consultarById&id_catedratico=${ver.id_catedratico}" >✎ Editar</a>
                        <a class="btn btn-danger  " href="catedratico?action=eliminar&id_catedratico=${ver.id_catedratico}">✐ Borrar </a>
                </center>    
                </td>
                </tr>
                </c:forEach>
            </tbody>
                    </table>
                    </form>
                    ${msg}
            
        
                      </div>
        
<jsp:include page="../footer.jsp"/>
