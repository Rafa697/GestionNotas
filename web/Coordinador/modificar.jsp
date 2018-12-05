<%-- 
    Document   : modificar
    Created on : 11-06-2018, 07:39:47 PM
    Author     : Alumno 08
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/> 
<title>Modificar datos</title>
    
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    
                    <form action="coordinador?action=actualizar" method="POST"  >
                    <c:forEach items="${listar}" var="ver">
                    
                        <label for="label">ID Caoordinador</label>
                        <input class="form-control" type="text" name="id_coordinador" value="${ver.id_coordinador}" readonly="">
                        <label for="label">ID Persona</label>
                        <input class="form-control" type="text" name="id_persona" value="${ver.id_persona}">
                        <label for="label">ID Carrera</label>
                        <input class="form-control" type="text" name="id_carrera" value="${ver.id_carrera}">
                  </c:forEach>
                    
                       <br>
                    <button class="btn btn-success btn-flat" >Enviar</button>            
                    <a href="coordinador?action=consultar" class="btn badge-danger">Cancelar</a>
                    ${msj}
             </form>
               </div>
             
             
             </div>
        </div>
<jsp:include page="../header.jsp"/>