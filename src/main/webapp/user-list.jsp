<%-- 
    Document   : user-list
    Created on : 27 may. 2022, 17:44:28
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Lista Técnicos</title>
<%@include file="libreria.jsp" %>
<%@page import="java.util.List"%>
<%@page import="Entidad.Cliente"%>
<%@page import="Entidad.Trabajador"%>


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
						<a href="user-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVO TRABAJADOR</a>
					</li>
					<li>
						<a class="active" href="user-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE TRABAJADORES</a>
					</li>
					<li>
						<a href="user-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR TRABAJADOR</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content -->
			<div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
						<thead>
							<tr class="text-center roboto-medium">
								
								<th>DNI</th>
								<th>NOMBRES Y APELLIDOS</th>
								<th>TELÉFONO</th>
								<th>CORREO</th>
								<th>CONTRASEÑA</th>
								<th>ACTUALIZAR</th>
								<th>ELIMINAR</th>
							</tr>
						</thead>
						<tbody>
                                                                <%
                                                                List<Trabajador> listaTrabajador = (List<Trabajador>) request.getAttribute("listatrabajadores");
                                                                if (listaTrabajador != null) {
                                                                  for (Trabajador y : listaTrabajador) {

                                                                %> 
							<tr class="text-center" >
								<td><%= y.getIdtrabajador()%></td>
								<th><%= y.getNombretrabajador()%> <%= y.getApellidopaternotrabajador()%> <%= y.getApellidomaternotrabajador()%></th>
								<th><%= y.getCelularestrabajador()%></th>
								<th><%= y.getCorreotrabajador()%></th>
								<th><%= y.getContrasenatrabajador()%></th>
								<td>
									<a href="user-update.jsp" class="btn btn-success">
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
							<%
                                                                                         }
                                                                }%>
							
							
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
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>
