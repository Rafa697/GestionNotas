<%-- 
    Document   : datos
    Created on : 12-04-2018, 02:05:31 PM
    Author     : Luis
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <title>Notas Parciales</title>
    <jsp:include page="../header.jsp"/>
        <div class="container">
            <form action="notaP?action=insertar" method="POST"> 
                <h1> Notas Parciales </h1>
                <a class="btn btn-dark btn-light" href="index.jsp" >↩ Volver a inicio</a>
                <a class="btn btn-success " href="NotaParcial/insertar.jsp">➕ Nuevo</a>
                </br>
                </br>
                <table class="table table-bordered table-hover ">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>ID_PARCIAL</th>
                            <th>ID_COLECCION</th>
                            <th>Nota</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ver" items="${listar}">
                            <tr>
                                <td>${ver.id_notaparcial}</td>
                                <td>${ver.id_parcial}</td>
                                <td>${ver.id_coleccion}</td>
                                <td>${ver.nota}</td>
                                <td>
                        <center>
                            <a class="btn btn-success " href="notaP?action=consultarById&id_notaparcial=${ver.id_notaparcial}" >✎ Editar</a>
                            <a class="btn btn-danger  " href="notaP?action=eliminar&id_notaparcial=${ver.id_notaparcial}">✐ Borrar </a>
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