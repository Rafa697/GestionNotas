<%-- 
    Document   : Datos.jsp
    Created on : 10-23-2018, 06:43:42 PM
    Author     : Alumno 08
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>Datos</title>
   <jsp:include page="../header.jsp"/>
        <div class="container">
            <form action="coordinador?action=insertar" method="POST"> 
                <h1>Datos de Catedratico </h1>
                <a class="btn btn-dark btn-light" href="index.jsp" >↩ Volver a inicio</a>
                <a class="btn btn-success " href="Coordinador/insertar.jsp">➕ Nuevo</a>

                </br>
                </br>
                <table class="table table-bordered table-hover ">
                    <thead>
                        <tr>
                            <th>Id Coordinador</th>
                            <th>Id Persona</th>
                            <th>Id Carrera</th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ver" items="${listar}">
                            <tr>
                                <td>${ver.id_coordinador}</td>
                                <td>${ver.id_persona}</td>
                                <td>${ver.id_carrera}</td>
                                <td>
                        <center>
                            <a class="btn btn-success " href="coordinador?action=consultarById&id_coordinador=${ver.id_coordinador}" >✎ Editar</a>
                            <a class="btn btn-danger  " href="coordinador?action=eliminar&id_coordinador=${ver.id_coordinador}">✐ Borrar </a>
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
