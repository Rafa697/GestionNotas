<%-- 
    Document   : Inicio
    Created on : 11-12-2018, 09:35:56 AM
    Author     : Alumno 08
--%>
<jsp:include page="header.jsp"/>
<%@page  session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

                    
                
        <div class="container mt-4">
            <div class="row">
                <div class="col-4">
                    
                </div>
                <div class="col-4">
                   
                </div>
                
                </div>
            </div>
          <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Gestion de Notas</a>
            </li>
            <li class="breadcrumb-item active">Estudiante</li>
          </ol>

          <!-- Icon Cards-->
          <div class="row">
             
                <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-success o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-folder-open"></i>
                  </div>
                  <div class="mr-5">Notas  Prueba Intermedia</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="vista?action=consultar">
                  <span class="float-left">Ver listado de Notas PI</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-folder-open"></i>
                  </span>
                </a>
              </div>
                    
            </div>
              
          </div>
        </div>
          

        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
       
<jsp:include page="footer.jsp"/>
