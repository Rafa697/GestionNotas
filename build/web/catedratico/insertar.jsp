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
                 <div class="col-4">
                     <form action="../catedratico?action=insertar" method="POST">
                         <h1> Catedraticos </h1>
            <label for="nombre">ID Catedratico</label>
            <input class="form-control " name="id_catedratico" required="">
            <label for="nombre">ID Persona</label>
            <select name="id_persona" class="form-control">
            <%
            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select id_persona from tbl_personas where id_rol=2";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option>"+cn.rs.getString(1)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
             </select><br>
            <label for="nombre">Titulo</label>
            <input class="form-control " name="titulo" required="">
           
            

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
