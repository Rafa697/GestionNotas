<%-- 
    Document   : modificar
    Created on : 11-22-2018, 06:47:56 PM
    Author     : Alumno 07
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../../header.jsp"/>
<title>Modificar Parciales</title>
   
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    <form action="parcial?action=actualizar" method="POST"  >
                        <c:forEach items="${listar}" var="ver">
                            <label for="label">ID</label>
                            <input class="form-control" type="text" name="id_parcial" value="${ver.id_parcial}" readonly="">
                            <label for="label">Nombre</label>
                            <input class="form-control" type="text" name="nombre" value="${ver.nombre}">
                        </c:forEach>
                        <br>
                        <button class="btn btn-success btn-flat" >Enviar</button>            
                        <a href="parcial?action=consultar" class="btn badge-danger">Cancelar</a>
                        ${msj}
                    </form>
                </div>
            </div>
        </div>
   <jsp:include page="../../footer.jsp"/>
