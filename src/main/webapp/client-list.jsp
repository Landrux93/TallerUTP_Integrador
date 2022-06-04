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
    <title>Lista de clientes</title>

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
              <a class="active" href="client-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE CLIENTES</a>
            </li>
            <li>
              <a href="client-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR CLIENTE</a>
            </li>
          </ul>	
        </div>

        <!-- Content here-->
        <div class="container-fluid">
          <div class="table-responsive">
            <table class="table table-dark table-sm">
              <thead>
                <tr class="text-center roboto-medium">
                  <th>#</th>
                  <th>DNI</th>
                  <th>NOMBRE</th>
                  <th>APELLIDO</th>
                  <th>TELEFONO</th>
                  <th>ACTUALIZAR</th>
                  <th>ELIMINAR</th>
                </tr>
              </thead>
              <tbody>
                <%
                  List<Cliente> lista = (List<Cliente>) request.getAttribute("clientes");
                  if (lista != null) {
                    for (Cliente x : lista) {
                      out.print("<tr class= \"text-center\" ><td>" + x.getIdcliente() + "<td>" + x.getDni() + "<td>" + x.getNombrecliente() + "<td>" + x.getApellidopaternocliente() + "<td>" + x.getNcelularescliente());
                      out.print("<td><a class=\"btn btn-success\" href=\"ServletCliente?opc=5&codigo="+x.getIdcliente()+" \"><i class=\"fas fa-sync-alt\"></i></a></td>");
                      out.print("<td><form action=\"ServletCliente\"><input type=\"hidden\" name=\"opc\" value=\"2\"><input type=\"hidden\" name=\"codigo\" value="+x.getIdcliente()+"><button type=\"button\" class=\"btn btn-warning\"><i class=\"far fa-trash-alt\"></i></button></form> </td>  ");
  }}%>        

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
