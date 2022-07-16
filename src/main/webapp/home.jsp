<%-- 
    Document   : home
    Created on : 27 may. 2022, 17:34:59
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>INICIO</title>
    <%@include file="libreria.jsp" %>

  </head>
  <body>

    <!-- Main container -->
    <main class="full-box main-container">
      <!-- Nav lateral -->
      <%@include file="Nav-Bar.jsp" %>
      <!-- Page content -->
      <section class="full-box page-content">
        

        <!-- Page header -->
        <div class="full-box page-header">
          <h3 class="text-left">
            <i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
          </h3>
          <p class="text-justify">
            El Taller UTP, es una empresa se dedica a la reparación y mantenimiento de aparatos de computo de todas las marcas, cuenta con un servicio técnico que atiende las solicitudes de instalaciones, reparaciones y mantenimiento para brindar la mejor experiencia a los clientes.
          </p>
        </div>

        <!-- Content -->
        <div class="full-box tile-container">

          <a href="ServletCliente?opc=4" class="tile">
            <div class="tile-tittle">Clientes</div>
            <div class="tile-icon">
              <i class="fas fa-users fa-fw"></i>
              <p>5 Registrados</p>
            </div>
          </a>

          <a href="ServletRepuesto?opc=4" class="tile">
            <div class="tile-tittle">Repuestos</div>
            <div class="tile-icon">
              <i class="fas fa-pallet fa-fw"></i>
              <p>9 Registrados</p>
            </div>
          </a>

          <a href="reservation-list.jsp" class="tile">
            <div class="tile-tittle">CITAS</div>
            <div class="tile-icon">
              <i class="fas fa-file-invoice-dollar fa-fw"></i>
              <p>10 Registrados</p>
            </div>
          </a>

          <a href="user-list.jsp" class="tile">
            <div class="tile-tittle">Técnicos</div>
            <div class="tile-icon">
              <i class="fas fa-user-secret fa-fw"></i>
              <p>5 Registrados</p>
            </div>
          </a>

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
