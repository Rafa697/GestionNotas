<%-- 
    Document   : validarusuario
    Created on : 27-nov-2018, 23:43:14
    Author     : Rafita Jr
--%>



     <%@ page import ="java.sql.*" %>
<%
    HttpSession sesion = request.getSession();
    String usuario = request.getParameter("txtcorreo");    
    String clave = request.getParameter("txtclave");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_notas",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tbl_personas where correo='" + usuario + "' and id_persona='" + clave + "' and id_rol=1 or id_rol=4");
    if (rs.next()) {
        session.setAttribute("txtcorreo", usuario);
         response.sendRedirect("index.jsp");
    }
    rs = st.executeQuery("select * from tbl_personas where correo='" + usuario + "' and id_persona='" + clave + "' and id_rol=2");
    if(rs.next()){
        
        session.setAttribute("txtcorreo", usuario); 
        response.sendRedirect("index_catedratico.jsp");
            }
       
    rs = st.executeQuery("select * from tbl_personas where correo='" + usuario + "' and id_persona='" + clave + "' and id_rol=3");
     if(rs.next()){
        
        session.setAttribute("txtcorreo", usuario); 
        response.sendRedirect("index_estudiante.jsp");
            }
     else{
     response.sendRedirect("login.jsp");
     }
     
    }catch(Exception e){
        e.printStackTrace();
    }
      
    
    
    
%>
    </body>
</html>
