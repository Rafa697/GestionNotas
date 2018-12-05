<%-- 
    Document   : datos
    Created on : 11-26-2018, 03:39:17 PM
    Author     : Alumno 35
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../header.jsp"/> 
<title>Notas Pruebas Intermedias</title>
  
        <div class="container">
            <form action="notaPI?action=insertar" method="POST"> 
                <h1> Notas Pruebas Intermedias </h1>
                <a class="btn btn-dark btn-light" href="index_estudiante.jsp" >↩ Volver a inicio</a>
                <a class="btn btn-success " href="alumno/NotaPruebaIntermedia/insertar.jsp">➕ Nuevo</a>
                </br>
                </br>
                <table class="table table-bordered table-hover ">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID_PI</th>
                            <th>ID_COLECCION</th>
                            <th>Nota</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ver" items="${listar}">
                            <tr>
                                <td>${ver.id_notapi}</td>
                                <td>${ver.id_pi}</td>
                                <td>${ver.id_coleccion}</td>
                                <td>${ver.nota}</td>
                               
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
            ${msg}
        </div>
   <jsp:include page="../../footer.jsp"/>
