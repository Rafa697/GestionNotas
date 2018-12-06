<%-- 
    Document   : modificar
    Created on : 12-04-2018, 02:05:03 PM
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
<title>Notas Parciales</title>
   
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    <form action="notaP?action=actualizar" method="POST" >
                        <c:forEach items="${listar}" var="ver">
                            <label for="label">ID</label>
                            <input class="form-control" type="text" name="id_notaparcial" value="${ver.id_notaparcial}" readonly="">
                            <label for="label">ID_PARCIAL</label>
                            <input class="form-control" type="text" name="id_parcial" value="${ver.id_parcial}">
                            <label for="label">ID_COLECCION</label>
                            <input class="form-control" type="text" name="id_coleccion" value="${ver.id_coleccion}">
                            <label for="label">NOTA</label>
                            <input class="form-control" type="text" name="nota" value="${ver.nota}">
                        </c:forEach>
                        <br>
                        <button class="btn btn-success btn-flat" >Enviar</button>            
                        <a href="notaP?action=consultar" class="btn badge-danger">Cancelar</a>
                        ${msj}
                    </form>
                </div>
            </div>
        </div>
 <jsp:include page="../footer.jsp"/>