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
	<title>Home</title>

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
		<section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
						Alma Valer <br><small class="roboto-condensed-light">Administrador</small>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>
						<li>
							<a href="home.jsp"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Clientes <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="client-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Cliente</a>
								</li>
								<li>
									<a href="client-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de clientes</a>
								</li>
								<li>
									<a href="client-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar cliente</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-pallet fa-fw"></i> &nbsp; Repuestos <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="item-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Repuestos</a>
								</li>
								<li>
									<a href="item-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Control de Repuestos</a>
								</li>
								<li>
									<a href="item-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Repuesto</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas  fa-user-secret fa-fw"></i> &nbsp; Técnicos <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="user-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Nuevo Técnico</a>
								</li>
								<li>
									<a href="user-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de Técnicos</a>
								</li>
								<li>
									<a href="user-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Técnico</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-file-invoice-dollar fa-fw"></i> &nbsp; Citas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención a domicilio</a>
								</li>

								<li>
									<a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención en el taller</a>
								</li>

								<li>
									<a href="reservation-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de citas</a>
								</li>
								<li>
									<a href="reservation-search.jsp"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; Buscar Cita</a>
								</li>
								<li>
									<a href="reservation-pending.jsp"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; Reporte de citas</a>
								</li>
							</ul>
						</li>

						
					</ul>
				</nav>
			</div>
		</section>

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
			
			<!-- Content -->
			<div class="full-box tile-container">

				<a href="client-new.jsp" class="tile">
					<div class="tile-tittle">Clientes</div>
					<div class="tile-icon">
						<i class="fas fa-users fa-fw"></i>
						<p>5 Registrados</p>
					</div>
				</a>

				<a href="item-list.jsp" class="tile">
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
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>
