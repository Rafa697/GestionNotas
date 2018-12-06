<%-- 
    Document   : index
    Created on : 10-16-2018, 07:23:10 PM
    Author     : Alumno 08
--%>
<%@page import="dao.Conexion"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../header.jsp"/>

<title>Inicio</title>
   
        <div class="container"> <h1> Datos de Personas</h1>
             <div class="row">
                 <div class="col-2">
                     
                 </div>
                 <div class="col-4">  
                    
                     <form action="../personas?action=insertar" method="POST" >
                      <label for="nombre">ID</label>
            <input class="form-control " name="id_persona" required="">
            <label for="nombre">Nombre</label>
            <input class="form-control " name="nombre" required="">
            <label for="nombre">Apellido</label>
            <input class="form-control " name="apellido" required="">
            <label for="nombre">DUI</label>
            <input class="form-control " name="dui" required="">
            <label for="nombre">NIT</label>
            <input class="form-control " name="nit" required="">
                 </div>
                 <div class="col-4">
                     
            <label for="nombre">Direccion</label>
            <input class="form-control " name="direccion" required="">
            <label for="nombre">Telefono</label>
            <input class="form-control " name="telefono" required="">
            <label for="nombre">Correo</label>
            <input class="form-control " name="correo" required="" type="email">
            <label for="nombre">Rol</label>
             <select name="id_pi" class="form-control">
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
         </div>
                     
                  
                    
             </div>  <br>
                     <button class="form-control btn badge-light btn-dark" >Enviar</button>
                     </form>
                       ${msg}
                     <br>
                     <br>
                      <center> <a class="btn btn-dark btn-light" href="/Gestion_notas/index.jsp" >↩ Volver a inicio</a> </center>
     
        </div>
<jsp:include page="../footer.jsp"/>

