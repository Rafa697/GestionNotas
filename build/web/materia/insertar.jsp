<%-- 
    Document   : index
    Created on : 10-16-2018, 07:23:10 PM
    Author     : Alumno 08
--%>

<%@page import="dao.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
      <jsp:include page="../header.jsp"/>
<title>Inicio</title>
    
        <div class="container">
             <div class="row">
                 <div class="col-4">
                     
                 </div>
                 <div class="col-5">
                     <form action="../materia?action=insertar" method="POST">
                         <h1> Maaterias </h1>
            <label for="nombre">Id Materia</label>
            <input class="form-control " name="id_materia" required="">
            <label for="nombre">Materia</label>
            <input class="form-control " name="materia" required="">
            <label for="nombre">Id Catedratico</label>
            <select name="id_catedratico" class="form-control">
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
            </select>
            

            <br>
            <button class="form-control btn badge-light btn-dark" >Enviar</button>
                     </form>
                     ${msg}
                     <br>
                     <br>
                     <center> <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a> </center>
        </div>
                     
                    
                    
             </div>
        </div>
<jsp:include page="../footer.jsp"/>
