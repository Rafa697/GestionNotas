<%-- 
    Document   : datos
    Created on : 11-22-2018, 06:42:44 PM
    Author     : Alumno 07
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
        <title>Parciales</title>
   
        <div class="container">
            <form action="parcial?action=insertar" method="POST"> 
                <h1> Parciales </h1>
                <a class="btn btn-dark btn-light" href="index.jsp" >↩ Volver a inicio</a>
                <a class="btn btn-success " href="Parcial/insertar.jsp">➕ Nuevo</a>
                </br>
                </br>
                <table class="table table-bordered table-hover ">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Porcentaje</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ver" items="${listar}">
                            <tr>
                                <td>${ver.id_parcial}</td>
                                <td>${ver.nombre}</td>
                                <td>${ver.porcentaje}</td>
                                <td>
                        <center>
                            <a class="btn btn-success " href="parcial?action=consultarById&id_parcial=${ver.id_parcial}" >✎ Editar</a>
                            <a class="btn btn-danger  " href="parcial?action=eliminar&id_parcial=${ver.id_parcial}">✐ Borrar </a>
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
