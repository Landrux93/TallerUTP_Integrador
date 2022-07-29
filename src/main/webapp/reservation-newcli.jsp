<%-- 
    Document   : reservation-new
    Created on : 27 may. 2022, 17:41:53
    Author     : LENOVO
--%>

<%@page import="Entidad.TipoCita"%>
<%@include file="libreria.jsp" %>
<%@page import="java.util.List"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Entidad.Cliente"%>
<%@page import="Entidad.TipoCita"%>
<%@page import="Entidad.Cita"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Entidad.Trabajador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Nueva cita</title>



</head>


<body>
    <!-- Main container -->
    <main class="full-box main-container">
        <!-- Nav lateral -->
             <%@include file="navbar1.jsp" %>
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
                        <a class="active" href="ServletCita?opcion=1"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA CITA</a>
                    </li>
                    
                </ul>
            </div>
            
            <!--CONTENT-->
            <div class="container-fluid">
            	<div class="container-fluid form-neon">
                    <div class="container-fluid">
                        <p class="text-center roboto-medium">AGREGAR CITAS</p>
                        <p class="text-center">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalCliente"><i class="fas fa-user-plus"></i> &nbsp; Agregar cita a domicilio</button>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalItem"><i class="fas fa-box-open"></i> &nbsp; Agregar cita en taller</button>
                        </p>
                        <div>
                            
                  			<form action="" style="display: inline-block !important;">
                            	
                                
                            </form>
                        </div>
                        
                    </div>
                    <form action="ServletCitas?opcion=2"  method="post">
						<fieldset>
							<legend><i class="far fa-plus-square"></i> &nbsp; Programación de cita</legend>
							<div class="container-fluid">
								<div class="row">
									<div class="col-12 col-md-4">
										<div class="form-group">
											<label for="fecha_inicio">Fecha de cita</label>
											<input type="date" class="form-control" name="fecha_inicio" id="fecha_inicio" >
										</div>
									</div>
									
									<div class="col-12 col-md-4">
										<div class="form-group">
											<label for="fecha_final">Fecha de finalización</label>
                                                                                        <input type="date" class="form-control" name="fecha_final" id="fecha_final" data-date-format="YYYY MM DD" readonly="">
										</div>
									</div>
                                                                        <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_tipocita" class="bmd-label-floating">LUGAR DE ATENCIÓN:</label>
                                                                                <select class="form-control" name="item_tipocita" id="item_tipocita">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                                    <option value="TC0002">TALLER</option>
                                                                                    <option value="TC0001">DOMICILIO</option>
                                                                                    
                                                                                    
                                                                                </select>
                                                                            </div>
                                                                        </div>
									
								</div>
                                                            <div class="row">
									
									
									
                                                                        <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_hora" class="bmd-label-floating">HORA DE CITA</label>
                                                                                <select class="form-control" name="item_hora" id="item_hora">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                                    <option value="09:00 AM">09:00 AM</option>
                                                                                    <option value="10:00 AM">10:00 AM</option>
                                                                                    <option value="11:00 AM">11:00 AM</option>
                                                                                    <option value="12:00 PM">12:00 PM</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_cliente" class="bmd-label-floating">CLIENTE</label>
                                                                                <select class="form-control" name="item_cliente" id="item_cliente">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                                <%
                                                                               if (trab1==null) {
                                                    
                                                                                    cl1.getNombrecliente();
                                                                                    cl1.getApellidopaternocliente();%>
                                                                                    <option value="<%= cl1.getIdcliente()%>"><%= cl1.getNombrecliente()%> <%= cl1.getApellidopaternocliente()%></option>
                                                                                  
                                                                                  <%
                                                                                }
                                                                                else{

                                                                                    trab1.getNombretrabajador();
                                                                                    trab1.getApellidopaternotrabajador();
                                                                                    %>
                                                                                    <option value="<%= trab1.getIdtrabajador()%>">trab1.getNombretrabajador()   trab1.getApellidopaternotrabajador()</option>
                                                                                  
                                                                                  <%

                                                                                }  
                                                                            %>
                                                                        
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                                 <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_estado" class="bmd-label-floating" hidden>ESTADO CITA</label>
                                                                                <select class="form-control" name="item_estado" id="item_estado">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                                    <option value="PP" selected="">PROG. PENDIENTE</option>
                                                                                </select>
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