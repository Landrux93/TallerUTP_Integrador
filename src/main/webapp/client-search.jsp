<%-- 
    Document   : client-search
    Created on : 27 may. 2022, 17:32:45
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Buscar clientes</title>

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
          <a href="#" class="btn-exit-system">
            <i class="fas fa-power-off"></i>
          </a>
        </nav>

        <!-- Page header -->
        <%@include file="client-header.jsp" %>

        <!-- Content here-->
        <div class="container-fluid">
          <form class="form-neon" action="">
            <div class="container-fluid">
              <div class="row justify-content-md-center">
                <div class="col-12 col-md-6">
                  <div class="form-group">
                    <label for="inputSearch" class="bmd-label-floating">¿Qué cliente estas buscando?</label>
                    <input type="text" class="form-control" name="busqueda-" id="inputSearch" maxlength="30">
                  </div>
                </div>
                <div class="col-12">
                  <p class="text-center" style="margin-top: 40px;">
                    <button type="submit" class="btn btn-raised btn-info"><i class="fas fa-search"></i> &nbsp; BUSCAR</button>
                  </p>
                </div>
              </div>
            </div>
          </form>
        </div>


        <div class="container-fluid">
          <form action="">
            <input type="hidden" name="eliminar-busqueda" value="eliminar">
            <div class="container-fluid">
              <div class="row justify-content-md-center">
                <div class="col-12 col-md-6">
                  <p class="text-center" style="font-size: 20px;">
                    Resultados de la busqueda <strong>“Buscar”</strong>
                  </p>
                </div>
                <div class="col-12">
                  <p class="text-center" style="margin-top: 20px;">
                    <button type="submit" class="btn btn-raised btn-danger"><i class="far fa-trash-alt"></i> &nbsp; ELIMINAR BÚSQUEDA</button>
                  </p>
                </div>
              </div>
            </div>
          </form>
        </div>


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
                <tr class="text-center" >
                  <td>1</td>
                  <td>012342567</td>
                  <td>NOMBRE DEL CLIENTE</td>
                  <td>APELLIDO DEL CLIENTE</td>
                  <td>72349874</td>
                  <td>
                    <a href="client-update.jsp" class="btn btn-success">
                      <i class="fas fa-sync-alt"></i>	
                    </a>
                  </td>
                  <td>
                    <form action="">
                      <button type="button" class="btn btn-warning">
                        <i class="far fa-trash-alt"></i>
                      </button>
                    </form>
                  </td>
                </tr>
                <tr class="text-center" >
                  <td>2</td>
                  <td>012342567</td>
                  <td>NOMBRE DEL CLIENTE</td>
                  <td>APELLIDO DEL CLIENTE</td>
                  <td>72349874</td>
                  <td>
                    <a href="client-update.jsp" class="btn btn-success">
                      <i class="fas fa-sync-alt"></i>	
                    </a>
                  </td>
                  <td>
                    <form action="">
                      <button type="button" class="btn btn-warning">
                        <i class="far fa-trash-alt"></i>
                      </button>
                    </form>
                  </td>
                </tr>
                <tr class="text-center" >
                  <td>3</td>
                  <td>012342567</td>
                  <td>NOMBRE DEL CLIENTE</td>
                  <td>APELLIDO DEL CLIENTE</td>
                  <td>72349874</td>
                  <td>
                    <a href="client-update.jsp" class="btn btn-success">
                      <i class="fas fa-sync-alt"></i>	
                    </a>
                  </td>
                  <td>
                    <form action="">
                      <button type="button" class="btn btn-warning">
                        <i class="far fa-trash-alt"></i>
                      </button>
                    </form>
                  </td>
                </tr>
                <tr class="text-center" >
                  <td>4</td>
                  <td>012342567</td>
                  <td>NOMBRE DEL CLIENTE</td>
                  <td>APELLIDO DEL CLIENTE</td>
                  <td>72349874</td>
                  <td>
                    <a href="client-update.jsp" class="btn btn-success">
                      <i class="fas fa-sync-alt"></i>	
                    </a>
                  </td>
                  <td>
                    <form action="">
                      <button type="button" class="btn btn-warning">
                        <i class="far fa-trash-alt"></i>
                      </button>
                    </form>
                  </td>
                </tr>
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
