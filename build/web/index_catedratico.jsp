<%-- 
    Document   : Inicio
    Created on : 11-12-2018, 09:35:56 AM
    Author     : Alumno 08
--%>
<jsp:include page="header.jsp"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
                    <div class="dropdown-divider"></div>
                    <a href="login.jsp" class="dropdown-item">Salir</a>
                </div>
            </div>
        </nav> 
        
        <div class="container mt-4">
            <div class="row">
                <div class="col-4">
                    
                </div>
                <div class="col-4">
                   
                </div>
                
                </div>
            </div>
    <center>
          <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="#">Gestion de Notas</a>
            </li>
            <li class="breadcrumb-item active">Catedratico</li>
          </ol>

          <!-- Icon Cards-->
          
           
               <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-list-alt"></i>
                  </div>
                  <div class="mr-5">Pruebas Intermedias</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="catedratico/PruebaIntermedia/insertar.jsp">
                  <span class="float-left">Agregar Prueba Intermedia</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-list"></i>
                  </span>
                </a>
              </div>
            </div>
              <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-list-alt"></i>
                  </div>
                  <div class="mr-5">Pruebas Intermedias</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="pruebaIntermedia?action=consultar">
                  <span class="float-left">Ver listado de Pruebas Intermedias</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-file-archive"></i>
                  </span>
                </a>
              </div>
            </div>
               <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-file-alt"></i>
                  </div>
                  <div class="mr-5">Parciales</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="catedratico/Parcial/insertar.jsp">
                  <span class="float-left">Agregar Parcial</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-file"></i>
                  </span>
                </a>
              </div>
            </div>
              <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-file-alt"></i>
                  </div>
                  <div class="mr-5">Parciales</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="parcial?action=consultar">
                  <span class="float-left">Ver listado de Parciales</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-file-code"></i>
                  </span>
                </a>
              </div>
            </div>
                
            </div>
              <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-folder-plus"></i>
                  </div>
                  <div class="mr-5">Notas Prueba Intermedia</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="catedratico/NotaPruebaIntermedia/insertar.jsp">
                  <span class="float-left">Agregar Notas de Pruebas Intermedia</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-folder-plus"></i>
                  </span>
                </a>
              </div>
            </div>
                <div class="col-xl-3 col-sm-6 mb-3">
              <div class="card text-white bg-info o-hidden h-100">
                <div class="card-body">
                  <div class="card-body-icon">
                    <i class="fas fa-fw fa-folder-open"></i>
                  </div>
                  <div class="mr-5">Notas  Prueba Intermedia</div>
                </div>
                <a class="card-footer text-white clearfix small z-1" href="notaPI?action=consultar">
                  <span class="float-left">Ver listado de Notas PI</span>
                  <span class="float-right">
                    <i class="fas fa-angle-right fa-folder-open"></i>
                  </span>
                </a>
              </div>
                    
            </div>
              
          </div>
        </center>
        </div>
          

        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
       <jsp:include page="footer.jsp"/>
