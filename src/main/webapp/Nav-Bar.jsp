<%-- 
    Document   : Nav-Bar
    Created on : Jun 4, 2022, 2:04:58 AM
    Author     : landrux
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
									<a href="ServletCliente?opc=4"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de clientes</a>
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
									<a href="ServletRepuesto?opc=4"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Control de Repuestos</a>
								</li>
								<li>
									<a href="item-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Repuesto</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas  fa-user-secret fa-fw"></i> &nbsp; Trabajador  <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="ServletRutas?ruta=registraTrabajador"><i class="fas fa-plus fa-fw"></i> &nbsp; Nuevo Trabajador</a>
								</li>
								<li>
									<a href="ServletRutas?ruta=listarTrabajadores"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de Trabajador</a>
								</li>
								<li>
									<a href="user-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Trabajador</a>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-file-invoice-dollar fa-fw"></i> &nbsp; Citas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="ServletCitas?opcion=2"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención a domicilio</a>
								</li>

								<li>
									<a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención en el taller</a>
								</li>

								<li>
									<a href="ServletRutas?ruta=listarcitas"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de citas</a>
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
    </body>
</html>
