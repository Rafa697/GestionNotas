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
            <form action="rol?action=insertar" method="POST"> 
                    <h1>Roles </h1>
                    <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a>
                    <a class="btn btn-success " href="rol/insertar.jsp">➕ Nuevo</a>
                    
                    </br>
                    </br>
        <table class="table table-bordered table-hover ">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>ROL</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ver" items="${listar}">
                <tr>
                    <td>${ver.id_rol}</td>
                    <td>${ver.rol}</td>
                    <td>
                <center>
                        <a class="btn btn-success " href="rol?action=consultarById&id_rol=${ver.id_rol}" >✎ Editar</a>
                        <a class="btn btn-danger  " href="rol?action=eliminar&id_rol=${ver.id_rol}">✐ Borrar </a>
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

