<%-- 
    Document   : client-list
    Created on : 27 may. 2022, 17:30:42
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Entidad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Lista</title>
<%@include file="libreria.jsp" %>

  </head>
  <body>
    <!-- Main container -->
    <main class="full-box main-container">
      <!-- Nav lateral -->
      <%@include file="Nav-Bar.jsp" %>
      <!-- Page content -->
      <section class="full-box page-content">
        <nav class="full-box navbar-info">
          <a href="#" class="float-left show-nav-lateral">
            <i class="fas fa-exchange-alt"></i>
          </a>
           <a href="#" class="btn-exit-system">
            <i class="fas fa-power-off"></i>
          </a>
        </nav>

        <!-- Page header -->
        <%@include file="hojaservicioheader.jsp" %>

        <!-- Content here-->
        <div class="container-fluid">
          <div class="table-responsive">
            <table class="table table-dark table-sm">
              <thead>
                <tr class="text-center roboto-medium">
                  <th>#</th>
                  <th>ID</th>
                  <th>Tipo de hoja de servicio</th>
                  <th>Usuario</th>
                  <th>Serie</th>
                  <th>Pago</th>
                  <th>ELIMINAR</th>
                </tr>
              </thead>
              <tbody>
            

              </tbody>
            </table>
          </div>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">Previous</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#">Next</a>
              </li>
            </ul>
          </nav>
        </div>

      </section>
    </main>


    <!--=============================================
    =            Include JavaScript files           =
    ==============================================-->
    <!-- jQuery V3.4.1 -->
    <script src="./js/jquery-3.4.1.min.js" ></script>

    <!-- popper -->
    <script src="./js/popper.min.js" ></script>

    <!-- Bootstrap V4.3 -->
    <script src="./js/bootstrap.min.js" ></script>

    <!-- jQuery Custom Content Scroller V3.1.5 -->
    <script src="./js/jquery.mCustomScrollbar.concat.min.js" ></script>

    <!-- Bootstrap Material Design V4.0 -->
    <script src="./js/bootstrap-material-design.min.js" ></script>
    <script>$(document).ready(function () {
        $('body').bootstrapMaterialDesign();
      });</script>

    <script src="./js/main.js" ></script>
  </body>
</html>
