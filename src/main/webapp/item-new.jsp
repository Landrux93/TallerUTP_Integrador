<%-- 
    Document   : item-new
    Created on : 27 may. 2022, 17:38:25
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Nuevo item</title>
<%@include file="libreria.jsp" %>


  </head>


  <body>
    <!-- Main container -->
    <main class="full-box main-container">
      <!-- Nav lateral -->
      <main class="full-box main-container">
        <!-- Nav lateral -->
        <%@include file="Nav-Bar.jsp" %>

        <!-- Page content -->
        <section class="full-box page-content">
          <nav class="full-box navbar-info">
            <a href="#" class="float-left show-nav-lateral">
              <i class="fas fa-exchange-alt"></i>
            </a>
            <a href="user-update.jsp">
              <i class="fas fa-user-cog"></i>
            </a>
            <a href="#" class="btn-exit-system">
              <i class="fas fa-power-off"></i>
            </a>
          </nav>

          <!-- Page header -->
          <%@include file="item-header.jsp" %>


          <!--CONTENT-->
          <div class="container-fluid">
            <form action="ServletRepuesto" class="form-neon">
              <input type="hidden" name="opc" value="1">
              <fieldset>
                <legend><i class="far fa-plus-square"></i> &nbsp; Información del repuesto</legend>
                <div class="container-fluid">
                  <div class="row">

                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_nombre" class="bmd-label-floating">Nombre</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="nombre" id="nombre" maxlength="140">
                      </div>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_marca" class="bmd-label-floating">Marca</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="marca" id="marca" maxlength="140">
                      </div>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_serie" class="bmd-label-floating">Serie</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="serie" id="serie" maxlength="140">
                      </div>
                    </div><!-- comment -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_modelo" class="bmd-label-floating">Modelo</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="modelo" id="modelo" maxlength="140">
                      </div>
                    </div><!-- comment -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_costo" class="bmd-label-floating">Costo</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="costo" id="costo" maxlength="140">
                      </div>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="item_stock" class="bmd-label-floating">Stock</label>
                        <input type="num" pattern="[0-9]{1,9}" class="form-control" name="stock" id="stock" maxlength="9">
                      </div>
                    </div>
                  </div>
                </div>
              </fieldset>
              <br><br><br>
              <p class="text-center" style="margin-top: 40px;">
                <button type="reset" class="btn btn-raised btn-secondary btn-sm"><i class="fas fa-paint-roller"></i> &nbsp; LIMPIAR</button>
                &nbsp; &nbsp;
                <button type="submit" class="btn btn-raised btn-info btn-sm"><i class="far fa-save"></i> &nbsp; GUARDAR</button>
              </p>
            </form>
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
