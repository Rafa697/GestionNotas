<%-- 
    Document   : Datos.jsp
    Created on : 10-23-2018, 06:43:42 PM
    Author     : Alumno 08
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
        <title>Datos Carreras</title>
    
        <div class="container">
            <form action="ciclo?action=insertar" method="POST"> 
                    <h1>Carreras </h1>
                    <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a>
                    <a class="btn btn-success " href="carrera/insertar.jsp">➕ Nuevo</a>
                    
                    </br>
                    </br>
        <table class="table table-bordered table-hover ">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ciclo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ver" items="${listar}">
                <tr>
                    <td>${ver.id_carrera}</td>
                    <td>${ver.carrera}</td>
                    <td>
                <center>
                        <a class="btn btn-success " href="carrera?action=consultarById&id_carrera=${ver.id_carrera}" >✎ Editar</a>
                        <a class="btn btn-danger  " href="carrera?action=eliminar&id_carrera=${ver.id_carrera}">✐ Borrar </a>
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
