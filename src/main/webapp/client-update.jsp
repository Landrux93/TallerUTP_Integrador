<%-- 
    Document   : client-update
    Created on : 27 may. 2022, 17:33:43
    Author     : LENOVO
--%>

<%@page import="Entidad.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Actualizar cliente</title>

    <!-- Normalize V8.0.1 -->
    <link rel="stylesheet" href="./css/normalize.css">

    <!-- Bootstrap V4.3 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- Bootstrap Material Design V4.0 -->
    <link rel="stylesheet" href="./css/bootstrap-material-design.min.css">

    <!-- Font Awesome V5.9.0 -->
    <link rel="stylesheet" href="./css/all.css">

    <!-- Sweet Alerts V8.13.0 CSS file -->
    <link rel="stylesheet" href="./css/sweetalert2.min.css">

    <!-- Sweet Alert V8.13.0 JS file-->
    <script src="./js/sweetalert2.min.js" ></script>

    <!-- jQuery Custom Content Scroller V3.1.5 -->
    <link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">

    <!-- General Styles -->
    <link rel="stylesheet" href="./css/style.css">


  </head>
  <body>
    <%
      Cliente cliente = (Cliente) request.getAttribute("cliente");
    %>
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
          <a href="#" class="btn-exit-system">
            <i class="fas fa-power-off"></i>
          </a>
        </nav>

        <!-- Page header -->
        <div class="full-box page-header">
          <h3 class="text-left">
            <i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
          </h3>
          <p class="text-justify">
            El Taller UTP, es una empresa se dedica a la reparación y mantenimiento de aparatos de computo de todas las marcas, cuenta con un servicio técnico que atiende las solicitudes de instalaciones, reparaciones y mantenimiento para brindar la mejor experiencia a los clientes.
          </p>
        </div>
        <div class="container-fluid">
          <ul class="full-box list-unstyled page-nav-tabs">
            <li>
              <a href="client-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR CLIENTE</a>
            </li>
            <li>
              <a href="client-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE CLIENTES</a>
            </li>
            <li>
              <a href="client-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR CLIENTE</a>
            </li>
          </ul>	
        </div>

        <!-- Content here-->
        <div class="container-fluid">
          <form action="ServletCliente" class="form-neon" method="post">
            <input type="hidden" name="opc" value="3">
            <input type="hidden" name="codigo" value=<%=cliente.getIdcliente()%>>
            <fieldset>
              <legend><i class="fas fa-user"></i> &nbsp; Información básica</legend>
              <div class="container-fluid">
                <div class="row">
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_dni" class="bmd-label-floating">DNI</label>
                      <input type="text" pattern="[a-zA-Z0-9-]{1,27}" class="form-control" name="dni" id="cliente_dni" value="<%=cliente.getDni()%>" maxlength="27">
                    </div>
                  </div>
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_nombre" class="bmd-label-floating">Nombre</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_nombre" name="nombre" value="<%=cliente.getNombrecliente()%>" maxlength="40">
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_apellidopa" class="bmd-label-floating">Apellido Paterno</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_apellido" name="apellidopa" value="<%=cliente.getApellidopaternocliente()%>" maxlength="40">
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_apellidoma" class="bmd-label-floating">Apellido Materno</label>
                      <input type="text" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]{1,40}" class="form-control" id="cliente_apellido" name="apellidoma" value="<%=cliente.getApellidopaternocliente()%>" maxlength="40">
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_telefono" class="bmd-label-floating">Teléfono</label>
                      <input type="text" pattern="[0-9()+]{1,20}" class="form-control" id="cliente_telefono" name="celular" value="<%=cliente.getNcelularescliente()%>" maxlength="20">
                    </div>
                  </div>
                  <div class="col-12 col-md-6">
                    <div class="form-group">
                      <label for="cliente_correo" class="bmd-label-floating">Correo</label>
                      <input type="text" class="form-control" id="cliente_nombre" name="correo" value="<%=cliente.getCorreocliente()%>" maxlength="40">
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_nacimiento" class="bmd-label-floating">Nacimiento</label>
                      <input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" id="cliente_direccion" name="nacimiento" value="<%=cliente.getDireccion()%>" maxlength="150">
                    </div>
                  </div>                                                                     
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_direccion" class="bmd-label-floating">Direccion</label>
                      <input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" id="cliente_telefono" name="direccion" value="<%=cliente.getNcelularescliente()%>" maxlength="20">
                    </div>
                  </div>
                  <div class="col-12 col-md-4">
                    <div class="form-group">
                      <label for="cliente_contrasena" class="bmd-label-floating">Contraseña</label>
                      <input type="text" pattern="[a-zA-Z0-9áéíóúÁÉÍÓÚñÑ#- ]{1,150}" class="form-control" id="cliente_contrasena" name="contrasena" value="<%=cliente.getContrasenacliente()%>" maxlength="150">
                    </div>
                  </div>
                </div>
              </div>
            </fieldset>
            <br><br><br>
            <p class="text-center" style="margin-top: 40px;">
              <button type="submit" class="btn btn-raised btn-success btn-sm"><i class="fas fa-sync-alt"></i> &nbsp; ACTUALIZAR</button>
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
