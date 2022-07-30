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
    <title>Nueva hoja de servicio</title>
    <%@include file="libreria.jsp" %>
    <%@page import="java.util.List"%>
    <%@page import="Modelo.ModeloTrabajador"%>
    <%@page import="Entidad.Trabajador"%>
    <%@page import="Modelo.ModeloEquipo"%>
    <%@page import="Entidad.Equipo"%>
    <%@page import="Modelo.ModeloTipoHojaServicio"%>
    <%@page import="Entidad.TipoHojaServicio"%>
    <%@page import="Entidad.TipoCita"%>
    <%@page import="Entidad.Cita"%>


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
            <a href="ServletLogout?logout=1" class="btn-exit-system">
              <i class="fas fa-power-off"></i>
            </a>
          </nav>

          <!-- Page header -->
          <%@include file="hojaservicioheader.jsp" %>


          <!--CONTENT-->
          <div class="container-fluid">
            <form action="ServletRutas?ruta=insertahojaservicionew" class="form-neon" method="post">
              <input type="hidden" name="opc" value="1">
              <fieldset>
                <legend><i class="far fa-plus-square"></i> &nbsp; HOJA DE SERVICIO</legend>
                <div class="container-fluid">
                  <div class="row">

                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="tipohojaservicio" class="bmd-label-floating">Tipo Hoja de Servicio</label>
                        <select class="form-control" name="tipohojaservicio" id="tipohojaservicio">
                          <option value="" selected="" disabled="">Seleccione una opción</option>
                          <%                                                                     List<TipoHojaServicio> listatipohojaserv = (List<TipoHojaServicio>) request.getAttribute("listatipohojaserv");
                            if (listatipohojaserv != null) {
                              for (TipoHojaServicio y : listatipohojaserv) {

                          %>  


                          <option value="<%= y.getIdtiposervicio()%>"><%= y.getTipohojaservicio()%></option>


                          <%
                                                                                        }
                                                                                      }%>
                        </select>
                      </div>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="usuario" class="bmd-label-floating">Usuario</label>
                        <select class="form-control" name="usuario" id="usuario">
                          <option value="" selected="" disabled="">Seleccione una opción</option>
                          <%
                            List<Trabajador> listacliente = (List<Trabajador>) request.getAttribute("listacliente");
                            if (listacliente != null) {
                              for (Trabajador y : listacliente) {

                          %>  


                          <option value="<%= y.getIdtrabajador()%>"><%= y.getNombretrabajador()%> <%= y.getApellidopaternotrabajador()%></option>


                          <%
                                                                                        }
                                                                                      }%>
                        </select>
                      </div>
                    </div>
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="numeroserie" class="bmd-label-floating">Numero de Serie</label>
                        <select class="form-control" name="numeroserie" id="numeroserie">
                          <option value="" selected="" disabled="">Seleccione una opción</option>
                          <%
                            List<Equipo> listaequipo = (List<Equipo>) request.getAttribute("listaequipo");
                            if (listaequipo != null) {
                              for (Equipo y : listaequipo) {

                          %>  


                          <option value="<%= y.getNserie()%>"><%= y.getMarca()%> <%= y.getModelo()%></option>


                          <%
                                                                                        }
                                                                                      }%>
                        </select>
                      </div>
                    </div><!-- comment -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="diagnostico" class="bmd-label-floating">Diagnostico</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="diagnostico" id="diagnostico" maxlength="140" required="required>
                      </div>
                    </div><!-- comment -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="pagoneto" class="bmd-label-floating">pago neto</label>
                        <input type="text" pattern="[a-zA-záéíóúÁÉÍÓÚñÑ0-9 ]{1,140}" class="form-control" name="pagoneto" id="pagoneto" maxlength="140" required="required>
                      </div>
                    </div><!-- comment -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label for="igv" class="bmd-label-floating">IGV</label>
                        <input type="text"  class="form-control" name="igv" id="igv" maxlength="140" required="required>
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
