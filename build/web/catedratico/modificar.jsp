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
<title>Modificar materias</title>
   
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-4">
                    
                    <form action="catedratico?action=actualizar" method="POST"  >
                    <c:forEach items="${listar}" var="ver">
                    
                        <label for="label">ID Catedratico</label>
                        <input class="form-control" type="text" name="id_catedratico" value="${ver.id_catedratico}" readonly="" >
                        <label for="label">ID PERSONA</label>
                       <select name="id_persona" class="form-control">
            <%
            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select * from tbl_personas where id_rol=2";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(2)+"  "+cn.rs.getString(3)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
             </select><br>
                        
                        <label for="label">Titulo</label>
                        <input class="form-control" type="text" name="titulo" value="${ver.titulo}">
                  </c:forEach>
                    
                       <br>
                    <button class="btn btn-success btn-flat" >Enviar</button>            
                    <a href="catedratico?action=consultar" class="btn badge-danger">Cancelar</a>
                    ${msj}
             </form>
               </div>
             
             
             </div>
        </div>
   <jsp:include page="../footer.jsp"/>
