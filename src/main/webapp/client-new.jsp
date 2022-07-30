<%-- 
    Document   : client-list
    Created on : 27 may. 2022, 17:30:42
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Nuevo cliente</title>
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
          <a href="user-update.jsp">
            <i class="fas fa-user-cog"></i>
          </a>
          <a href="ServletLogout?logout=1" class="btn-exit-system">
            <i class="fas fa-power-off"></i>
          </a>
        </nav>

        <!-- Page header -->
        <%@include file="client-header.jsp" %>

        <!-- Content here-->
        <div class="container-fluid">
          <form action="ServletCliente" class="form-neon" method="post">
            <input type="hidden" name="opc" value="1">

            <fieldset>
              <legend><i class="fas fa-user"></i> &nbsp; Información básica</legend>
              <div class="container-fluid">
                <div class="row">
                  <div class="col-6 col-md-6">
                    <div class="form-group">
                      <label for="cliente_dni" class="bmd-label-floating">DNI</label>
                      <input type="text" pattern="[0-9()+]{1,8}" class="form-control" name="dni" id="cliente_dni" minlength="8" maxlength="8" required="required">
                    </div>
                  </div>
                  <div class="col-6 col-md-6">
                    <div class="form-group">
                      <label for="cliente_nombre" class="bmd-label-floating">Nombre</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_nombre" name="nombrec" maxlength="40" required="required">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_apellidopa" class="bmd-label-floating">Apellido Paterno</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_apellido" name="apellidopa" maxlength="40" required="required">
                    </div>
                  </div>
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_apellidoma" class="bmd-label-floating">Apellido Materno</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_apellido" name="apellidoma" maxlength="40" required="required">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_telefono" class="bmd-label-floating">Teléfono</label>
                      <input type="tel" pattern="[0-9()+]{1,9}" class="form-control" id="cliente_telefono" name="celular" minlength="9" maxlength="9" required="required">
                    </div>
                  </div>
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_correo" class="bmd-label-floating">Correo</label>
                      <input type="email" pattern ="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control" id="cliente_correo" name="correo" maxlength="40"required="required">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_nacimiento" class="bmd-label-floating">Nacimiento</label>
                      <input type="date" data-date-format="YYYY MM DD" class="form-control" id="cliente_nacimiento" name="nacimiento" required="required">
                    </div>
                  </div>                                                                     
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_direccion" class="bmd-label-floating">Direccion</label>
                      <input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" id="cliente_direccion" name="direccion" maxlength="20" required="required">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_contrasena" class="bmd-label-floating">Contraseña</label>
                      <input type="password" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" id="cliente_contrasena" name="contrasena" maxlength="150" required="required">
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
