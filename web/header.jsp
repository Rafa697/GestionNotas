<%-- 
    Document   : header
    Created on : 12-04-2018, 02:52:00 PM
    Author     : Carlos Solis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/gn.png" />
        <link rel="icon" type="image/png" href="../img/gn.png" />
        <link rel="icon" type="image/png" href="../../img/gn.png" />
    </head>
    <body>
        
<%@page  session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="img/gn.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="css/sb-admin.css" rel="stylesheet">
        <title>Notas</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            <a style="color: white"class="navbar" href="#" ><span class="navbar"></span>Home</a>
            <div class="dropdown">
                <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesion</a>
                <div class="dropdown-menu text-center">
                   
                    <a>
                        <%
                        HttpSession sesion = request.getSession();
                        String usuario;
                        if(sesion.getAttribute("txtcorreo")!=null){
                        usuario =sesion.getAttribute("txtcorreo").toString();
                        out.print(usuario);
                        }
                        
                          %>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="login.jsp" class="dropdown-item" >Salir</a>
                  
                 
                   
                </div>
            </div>
        </nav> 
    
