<%-- 
    Document   : modificar
    Created on : 11-06-2018, 07:39:47 PM
    Author     : Alumno 08
--%>

<%@page import="dao.Conexion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>

<title>Modificar roles</title>
    
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    
                    <form action="personas?action=actualizar" method="POST"  >
                    <c:forEach items="${listar}" var="ver">
                    
                        <label for="label">ID</label>
                        <input class="form-control" type="text" name="id_persona" value="${ver.id_persona}" readonly="">
                        <label for="label">Nombre</label>
                        <input class="form-control" type="text" name="nombre" value="${ver.nombre}">
                        <label for="label">Apellido</label>
                        <input class="form-control" type="text" name="apellido" value="${ver.apellido}">
                        <label for="label">DUI</label>
                        <input class="form-control" type="text" name="dui" value="${ver.dui}">
                        <label for="label">NIT</label>
                        <input class="form-control" type="text" name="nit" value="${ver.nit}">
                        <label for="label">Direccion</label>
                        <input class="form-control" type="text" name="direccion" value="${ver.direccion}">
                        <label for="label">Telefono</label>
                        <input class="form-control" type="text" name="telefono" value="${ver.telefono}">
                        <label for="label">Correo</label>
                        <input class="form-control" type="text" name="correo" value="${ver.correo}">
                        <label for="label">ROL</label>
                        <select name="id_rol" class="form-control" >
            <%
            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select * from tbl_rol";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(2)+" - "+cn.rs.getString(1)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
                        </select><br>
                        
                  </c:forEach>
                    
                       <br>
                    <button class="btn btn-success btn-flat" >Enviar</button>            
                    <a href="personas?action=consultar" class="btn badge-danger">Cancelar</a>
                    ${msj}
             </form>
               </div>
             
             
             </div>
        </div>
                    <jsp:include page="../footer.jsp"/>
   