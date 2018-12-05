<%-- 
    Document   : Datos.jsp
    Created on : 10-23-2018, 06:43:42 PM
    Author     : Alumno 08
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>

        <div class="container">
            <form action="vista?action=consultar" method="POST"> 
                    <h1>Roles </h1>
                    <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a>
                    
                    
                    </br>
                    </br>
        <table class="table table-bordered table-hover ">
            <thead>
                <tr>
                    <th>Coleccion</th>
                    <th>Prueba Intermedia 1</th>
                    <th>Prueba Intermedia 2</th>
                    <th>Prueba Intermedia 3</th>
                    <th>Parcial 1</th>
                    <th>Parcial 2</th>
                    <th>Parcial 3</th>
                    <th>Nota Final</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ver" items="${listar}">
                <tr>
                    <td>${ver.coleccion}</td>
                    <td>${ver.pi1}</td>
                    <td>${ver.pi2}</td>
                    <td>${ver.pi3}</td>
                    <td>${ver.p1}</td>
                    <td>${ver.p2}</td>
                    <td>${ver.p3}</td>
                    <td>${ver.notafinal}</td>
                </tr>
                </c:forEach>
            </tbody>
                    </table>
                    </form>
                    
            
      
                      </div>
          <jsp:include page="../footer.jsp"/>

