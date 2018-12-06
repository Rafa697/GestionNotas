<%-- 
    Document   : modificar
    Created on : 11-06-2018, 07:39:47 PM
    Author     : Alumno 08
--%>

<%@page import="dao.Conexion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../header.jsp"/>

<!DOCTYPE html>
  <title>Modificar Colecciones</title>
    
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    
                    <form action="coleccion?action=actualizar" method="POST"  >
                    <c:forEach items="${listar}" var="ver">
                    
                        <label for="label">ID</label>
                        <input class="form-control" type="text" name="id_rol" value="${ver.id_coleccion}" readonly="" >
                        <label for="label">ID Alumno</label>
                       <select name="id_alumno" class="form-control" required="">
            <%
            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select ta.id_alumno, tp.nombre, tp.apellido from tbl_alumnos ta INNER JOIN tbl_personas tp on tp.id_persona=ta.id_persona";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(2)+cn.rs.getString(3)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
             </select><br>
                        <label for="label">ID Materia</label>
                    <select name="id_materia" class="form-control" required="">
            <%
             cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select * from tbl_materia";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(2)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
             </select><br>
                        <label for="label">ID Ciclo</label>
                       <select name="id_ciclo" class="form-control" required="">
            <%
             cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select * from tbl_ciclo";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(2)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
             </select><br>
                  </c:forEach>
                    
                       <br>
                    <button class="btn btn-success btn-flat" >Enviar</button>            
                    <a href="coleccion?action=consultar" class="btn badge-danger">Cancelar</a>
                    ${msj}
             </form>
               </div>
             
             
             </div>
        </div>
    <jsp:include page="../footer.jsp"/>

