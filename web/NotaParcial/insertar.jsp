<%-- 
    Document   : insertar
    Created on : 12-04-2018, 02:04:41 PM
    Author     : Luis
--%>

<%@page import="dao.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>  
<title>Notas Parciales</title>

        <div class="container">
            <div class="row">
                <div class="col-4">
                </div>
                <div class="col-4">
                    <form action="../notaP?action=insertar" method="POST" >
                        <h1> Notas Parciales</h1>
                        <label for="nombre">Id_parcial</label>
                        <select name="id_parcial" class="form-control">
            <%
            Conexion cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select * from tbl_parcial";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                    out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(1)+" - "+cn.rs.getString(2)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
                        </select><br>
                        <label for="nombre">Id_coleccion</label>
                        <select name="id_coleccion" class="form-control">
            <%
             cn = new Conexion();
            try {
                    cn.conectar();
                    String sql="select id_coleccion, tp.nombre, tp.apellido from tbl_coleccion tc inner join tbl_alumnos ta on ta.id_alumno=tc.id_alumno inner join tbl_personas tp on tp.id_persona=ta.id_persona";
                    cn.st=cn.conn.createStatement();
                    cn.rs=cn.st.executeQuery(sql);
                    while(cn.rs.next()){
                   out.println("<option value="+cn.rs.getString(1)+">"+cn.rs.getString(1)+" - "+cn.rs.getString(2)+"</option>");
                    }
                } catch (Exception e) {
                    out.print(e.toString());
                }
            %>
                        </select><br>
                        
                        <label for="nombre">Nota</label>
                        <input class="form-control" name="nota" required="">
                        <br>
                        <button class="form-control btn badge-light btn-dark" >Enviar</button>
                    </form>
                    ${msg}
                    <br>
                    <br>
                    <center> <a class="btn btn-dark btn-light" href="../index.jsp" >↩ Volver a inicio</a> </center>
                </div>
            </div>
        </div>
 <jsp:include page="../footer.jsp"/>