<%-- 
    Document   : index
    Created on : 27 may. 2022, 17:35:28
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Login</title>

    <%@include file="libreria.jsp" %>
  </head>
  <body>
    <%
      String dato = (String) request.getAttribute("dato");
      String msg = "";
      if (dato == null) {
        msg = "";
      } else {
        msg = dato;
      }
    %>
    <div class="login-container">
      <div class="login-content">
        <p class="text-center">
          <i class="fas fa-user-circle fa-5x"></i>
        </p>
        <p class="text-center">
          Inicia sesión con tu cuenta
        </p>
        <form action="ServletLogin">
          <input type="hidden" name="opc" value="1">
          <p><%=msg%></p>
          <div class="form-group">
            <label for="UserName" class="bmd-label-floating"><i class="fas fa-user-secret"></i> &nbsp; Usuario</label>
            <input type="email" pattern ="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control" id="UserName" name="usuario" maxlength="35"required="required">
          </div>
          <div class="form-group">
            <label for="UserPassword" class="bmd-label-floating"><i class="fas fa-key"></i> &nbsp; Contraseña</label>
            <input type="password" class="form-control" id="UserPassword" name="clave" maxlength="200"required="required">
          </div>
          <button class="btn-login" type="submit">Ingresar</button>
        </form>
      </div>
    </div>


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
