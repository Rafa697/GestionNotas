<%-- 
    Document   : modificar
    Created on : 11-26-2018, 03:39:42 PM
    Author     : Alumno 35
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>
        <title>Notas Prueba Intermedia</title>
   
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    <form action="notaPI?action=actualizar" method="POST"  >
                        <c:forEach items="${listar}" var="ver">
                            <label for="label">ID Nota PI</label>
                            <input class="form-control" type="text" name="id_notapi" value="${ver.id_notapi}" readonly="">
                            <label for="label">ID_PI</label>
                            <input class="form-control" type="text" name="id_pi" value="${ver.id_pi}" >
                            <label for="label">ID_COLECCION</label>
                            <input class="form-control" type="text" name="id_coleccion" value="${ver.id_coleccion}">
                            <label for="label">NOTA</label>
                            <input class="form-control" type="text" name="nota" value="${ver.nota}">
                        </c:forEach>
                        <br>
                        <button class="btn btn-success btn-flat" >Enviar</button>            
                        <a href="notaPI?action=consultar" class="btn badge-danger">Cancelar</a>
                        ${msj}
                    </form>
                </div>
            </div>
        </div>
   <jsp:include page="../footer.jsp"/>