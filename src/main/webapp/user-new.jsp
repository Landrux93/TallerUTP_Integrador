<%-- 
    Document   : user-new
    Created on : 27 may. 2022, 17:45:00
    Author     : LENOVO
--%>

<%@page import="Entidad.TipoTrabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>Nuevo Trabajador</title>

<%@include file="libreria.jsp" %>
<%@page import="java.util.List"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Entidad.Cliente"%>
<%@page import="Entidad.TipoTrabajador"%>
<%@page import="Entidad.Cita"%>
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
						<a class="active" href="user-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVO TRABAJADOR</a>
					</li>
					<li>
						<a href="user-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE TRABAJADOR</a>
					</li>
					<li>
						<a href="user-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR TRABAJADOR</a>
					</li>
				</ul>	
			</div>
			
			<!-- Content -->
			<div class="container-fluid">
                            <form action="ServletTrabajador?opciontrab=1"  method="post" class="form-neon" >
					<fieldset>
						<legend><i class="far fa-address-card"></i> &nbsp; Información trabajador</legend>
                                                                       <div class="container-fluid">
                                                                        <div class="row">
                                                                     <div class="form-group">
                                                                    <label for="tipotrabajador" class="bmd-label-floating">TIPO TRABAJADOR </label>
                                                                    <select class="form-control" name="tipotrabajador" id="tipotrabajador">
                                                                        <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                <%
                                                                List<TipoTrabajador> listatipotrabajador = (List<TipoTrabajador>) request.getAttribute("listatipotrabajador");
                                                                if (listatipotrabajador != null) {
                                                                  for (TipoTrabajador y : listatipotrabajador) {

                                                                %>  
                                                                                    

                                                                                    <option value="<%= y.getIdtipotrabajador()%>"><%= y.getTipotrabajador()%></option>
                                                                                    
                                                                                    
                                                                <%
                                                                                         }
                                                                }%>
                                                                    
                                                                        </select>
                                                                </div>
                                                                            	<br><br><br>

                                                            
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="trabajador_nombre" class="bmd-label-floating">Nombre trabajador</label>
										<input type="text"  class="form-control" name="trabajador_nombre" id="trabajador_nombre" maxlength="50">
									</div>
								</div>
								
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="trabajador_apepat" class="bmd-label-floating">Apellido paterno</label>
										<input type="text"  class="form-control" name="trabajador_apepat" id="trabajador_apepat" maxlength="50">
									</div>
								</div>
								<div class="col-12 col-md-4">
									<div class="form-group">
										<label for="trabajador_apemat" class="bmd-label-floating">Apellido materno</label>
										<input type="text"  class="form-control" name="trabajador_apemat" id="trabajador_apemat" maxlength="50">
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="trabajador_telefono" class="bmd-label-floating">Celular</label>
										<input type="text"  class="form-control" name="trabajador_telefono" id="trabajador_telefono" maxlength="50">
									</div>
								</div>
                                                                            
                                                                <div class="col-12 col-md-6">
									<div class="form-group">
										<label for="trabajador_correo1" class="bmd-label-floating">Correo</label>
										<input type="email" class="form-control" name="trabajador_correo1" id="trabajador_correo1" maxlength="100">
									</div>
								</div>
                                                 
                                              
								<div class="col-12 col-md-6">
									<div class="form-group">
										<label for="trabajador_passwd" class="bmd-label-floating">Contraseña</label>
										<input type="password" class="form-control" name="trabajador_passwd" id="trabajador_passwd" maxlength="20">
									</div>
								</div>
							</div>
						</div>
                                                                <p class="text-center" style="margin-top: 40px;">
						<button type="reset" class="btn btn-raised btn-secondary btn-sm"><i class="fas fa-paint-roller"></i> &nbsp; LIMPIAR</button>
						&nbsp; &nbsp;
						<button type="submit" class="btn btn-raised btn-info btn-sm"><i class="far fa-save"></i> &nbsp; GUARDAR</button>
                                                </p>
					</fieldset>
					<br><br><br>
				
				
                                <!--    <div class="form-group">
                                        <label for="item_estado" class="bmd-label-floating">PERMISO </label>
                                        <select class="form-control" name="item_estado" id="item_estado">
                                            <option value="" selected="" disabled="">Seleccione una opción</option>
                                            <option selected="" value="Habilitado">Control total</option>
                                            <option value="Deshabilitado">Edición</option>
                                            <option value="Deshabilitado">Registrar</option>
                                        </select>
                                    </div>-->
                                
							
					<br><br><br>
					<fieldset>
						<legend><i class="fas fa-medal"></i> &nbsp; Nivel de privilegio</legend>
						<div class="container-fluid">
							<div class="row">
								<div class="col-12">
									<p><span class="badge badge-info">Control total</span> Permisos para registrar, actualizar y eliminar</p>
									<p><span class="badge badge-success">Edición</span> Permisos para registrar y actualizar</p>
									<p><span class="badge badge-dark">Registrar</span> Solo permisos para registrar</p>
									<div class="form-group">
									
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					
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
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>
