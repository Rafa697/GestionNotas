<%-- 
    Document   : index
    Created on : 10-16-2018, 07:23:10 PM
    Author     : Alumno 08
--%>

 <%@page import="dao.Conexion"%>
<jsp:include page="../header.jsp"/>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <title>Inicio</title>
    
  
  <div class="container">
             <div class="row">
                 <div class="col-4">
                     
                 </div>  
                 <div class="col-4">
                     <form action="../coleccion?action=insertar" method="POST">
                         <h1> Colecciones</h1>
            <label for="nombre">ID Alumno</label>
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
            <label for="nombre">ID Materia</label>
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
            <label for="nombre">ID Ciclo</label>
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

            <br>
            <button class="form-control btn badge-light btn-dark" >Enviar</button>
                     ${msg}
                     <br>
                     <br>
                     <center> <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a> </center>
        </div>
                     
                    
                    
             </div>
        </div>
<jsp:include page="../footer.jsp"/>

