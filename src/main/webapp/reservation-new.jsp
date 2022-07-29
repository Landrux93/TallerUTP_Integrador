<%-- 
    Document   : reservation-new
    Created on : 27 may. 2022, 17:41:53
    Author     : LENOVO
--%>

<%@page import="Entidad.TipoCita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Nueva cita</title>
<%@include file="libreria.jsp" %>
<%@page import="java.util.List"%>
<%@page import="Modelo.ModeloCliente"%>
<%@page import="Entidad.Cliente"%>
<%@page import="Entidad.TipoCita"%>
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
                    <li>
                        <a href="reservation-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE CITAS</a>
                    </li>
                    <li>
                        <a href="reservation-search.jsp"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; BUSCAR CITAS</a>
                    </li>
                    <li>
                        <a href="reservation-pending.jsp"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; REPORTES DE CITAS</a>
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
                        <div class="table-responsive">
                            <table class="table table-dark table-sm">
                                <thead>
                                    <tr class="text-center roboto-medium">
                                        <th># CITA</th>
                                        <th>TIPO</th>
                                        <th>FECHA CITA</th>
                                        <th>HORA CITA</th>
                                        <th>FECHA FIN</th>
                                        <th>ESTADO CITA</th>
                                        <th>CLIENTE</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>                   
                                    <%                                           
                  List<Cita> listacitas = (List<Cita>) request.getAttribute("listacita");
                  if (listacitas != null) {
                    for (Cita z : listacitas) {
                      
                    %> 
                                    <tr class="text-center" >
                                 
                                        <td><%= z.getIdcita()%></td>
                                        <td><%= z.getIdtipocita()%></td>
                                        <td><%= z.getFechacita()%></td>
                                        <td><%= z.getFechafinalizacion()%></td>
                                        <td><%= z.getEstado()%></td>
                                        
                                        <td><%= z.getHora()%></td>
                                        <td><%= z.getIdcliente()%></td>
                                        <td>
                                            <form action="ServletCitas?opcion=41" method="post">
                                                            
                                                
                                                <input type="text" name="idcita" value="<%= z.getIdcita()%>" hidden="">
                                                <button type="submit" class="btn btn-warning">
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
											<input type="date" class="form-control" name="fecha_final" id="fecha_final" data-date-format="YYYY MM DD">
										</div>
									</div>
                                                                        <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_tipocita" class="bmd-label-floating">TIPO CITA</label>
                                                                                <select class="form-control" name="item_tipocita" id="item_tipocita">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>
                                                                   <%
                                                                List<TipoCita> listatipocitas = (List<TipoCita>) request.getAttribute("listatipocita");
                                                                if (listatipocitas != null) {
                                                                  for (TipoCita y : listatipocitas) {

                                                                  %>  
                                                                                    

                                                                                    <option value="<%= y.getIdtipocita()%>"><%= y.getTipocita()%></option>
                                                                                    
                                                                                    
                                                                                    <%
                                                                                         }
                  }%>
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
                                                                                List<Cliente> listaclientes = (List<Cliente>) request.getAttribute("listacliente");
                                                                                if (listaclientes != null) {
                                                                                  for (Cliente x : listaclientes) {

                                                                                  %>  
                                                                                    

                                                                                    <option value="<%= x.getIdcliente()%>"><%= x.getNombrecliente()%> <%= x.getApellidopaternocliente()%></option>
                                                                                    
                                                                                    
                                                                                    <%
                                                                                         }
                                                                                }%>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                                 <div class="col-12 col-md-4">
                                                                            <div class="form-group">
                                                                                <label for="item_estado" class="bmd-label-floating">ESTADO CITA</label>
                                                                                <select class="form-control" name="item_estado" id="item_estado">
                                                                                    <option value="" selected="" disabled="">Seleccione una opción</option>

                                                                                    <option value="P">PROGRAMADO</option>
                                                                                    <option value="EP">EN PROCESO</option>
                                                                                    <option value="PP">PROG. PENDIENTE</option>
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


            <!-- MODAL CLIENTE -->
            <div class="modal fade" id="ModalCliente" tabindex="-1" role="dialog" aria-labelledby="ModalCliente" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalCliente">Agregar cliente</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="form-group">
                                    <label for="agregar_cliente" class="bmd-label-floating">DNI, Nombre, Apellido, Telefono</label>
                                    <input type="text" pattern="[a-zA-z0-9áéíóúÁÉÍÓÚñÑ#() ]{1,30}" class="form-control" name="agregar_cliente" id="agregar_cliente" maxlength="30">
                                </div>
                            </div>
                            <br>
                            <div class="container-fluid">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered table-sm">
                                        <tbody>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-user-plus"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-user-plus"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-user-plus"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-user-plus"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- MODAL CLIENTE -->
            <div class="modal fade" id="ModalItem" tabindex="-1" role="dialog" aria-labelledby="ModalItem" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalItem">Agregar cliente</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="form-group">
                                    <label for="agregar_item" class="bmd-label-floating">Código, Nombre</label>
                                    <input type="text" pattern="[a-zA-z0-9áéíóúÁÉÍÓÚñÑ#() ]{1,30}" class="form-control" name="agregar_item" id="agregar_item" maxlength="30">
                                </div>
                            </div>
                            <br>
                            <div class="container-fluid">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered table-sm">
                                        <tbody>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-box-open"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-box-open"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-box-open"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr class="text-center">
                                                <td>000000000000 - Nombre del cliente</td>
                                                <td>
                                                    <form action="">
                                                        <button type="button" class="btn btn-primary"><i class="fas fa-box-open"></i></button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
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