<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    
    <%@page import="Entidad.Cliente"%>
    <%@page import="Entidad.Trabajador"%>
    <body>
        <section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
                                            <%
                                            HttpSession misesion= request.getSession();
                                            Cliente cl1= new Cliente();
                                            Trabajador trab1= new Trabajador();
                                            cl1= (Cliente)misesion.getAttribute("usuarioCliente");
                                            trab1= (Trabajador)misesion.getAttribute("usuarioTrabajador");
                                            if (trab1==null) {
                                                    
                                                    cl1.getNombrecliente();
                                                    cl1.getApellidopaternocliente();
                                                  out.print(cl1.getNombrecliente()+' '+cl1.getApellidopaternocliente());
                                                }
                                                else{
                                                    
                                                    trab1.getNombretrabajador();
                                                    trab1.getApellidopaternotrabajador();
                                                    out.print(trab1.getNombretrabajador()+' '+trab1.getApellidopaternotrabajador());
                                                    
                                                }
                                            
                                            
                                           %>
                                           <br><small class="roboto-condensed-light">
                                               <%
                                                if(trab1==null) {
                                                    
                                                    out.print("CLIENTE");
                                                }
                                                else{
                                                    
                                                    out.print(trab1.getIdtipotrabajador());
                                                    
                                                }  
                                               
                                               
                                           
                                           %></small>
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
							<a href="#" class="nav-btn-submenu"><i class="fas fa-pallet fa-fw"></i> &nbsp; Hoja de servicio <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
									<a href="hojaserviciolist.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Servicio</a>
								</li>
                                                                <li>
									<a href="item-list.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Repuesto</a>
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
						</li><li>
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