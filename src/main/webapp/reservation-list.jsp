<%-- 
    Document   : reservation-list
    Created on : 27 may. 2022, 17:41:12
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Lista de citas</title>
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
                        <a href="ServletCitas?opcion=1"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVA CITA</a>
                    </li>
                    <li>
                        <a class="active" href="reservation-list.html"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE CITAS</a>
                    </li>
                    <li>
                        <a href="reservation-search.jsp"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; BUSCAR CITA</a>
                    </li>
                    <li>
                        <a href="reservation-pending.jsp"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; REPORTE DE CITAS</a>
                    </li>
                </ul>
            </div>
            
            <!--CONTENT-->
            
			 <div class="container-fluid">
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
                                                            <th>FACTURA</th>
                                                            <th>ACTUALIZAR</th>
                                                            <th>PAGOS</th>
                                                            <th>ELIMINAR</th>
								
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
                                                                <td><%= z.getHora()%></td>
                                                                <td><%= z.getEstado()%></td>
                                                                <td><%= z.getFechafinalizacion()%></td>
                                                                <td><%= z.getIdcliente()%></td>
								<td>
									<a href="#" class="btn btn-info">
	  									<i class="fas fa-file-pdf"></i>	
									</a>
								</td>
								<td>
									<a href="reservation-update.jsp" class="btn btn-success">
	  									<i class="fas fa-sync-alt"></i>	
									</a>
								</td>
								<td>
									<a href="payment.jsp" class="btn btn-info">
	  									<i class="fas fa-dollar-sign"></i>	
									</a>
								</td>
								<td>
                                                                    <form action="ServletCitas?opcion=4" method="post">
                                                
                                                                        <input type="text" name="idcita" value="<%= z.getIdcita()%>" hidden="">
                                                                        <button type="submit" class="btn btn-warning">
                                                                            <i class="far fa-trash-alt"></i>
                                                                        </button>
                                                                    </form>
									
								</td>
							</tr>
                                                        <%
                                                            }}
							%> 
							
							
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