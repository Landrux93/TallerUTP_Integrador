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
							<a href="homecli.jsp"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
						</li>
                                                <li>
							<a href="#" class="nav-btn-submenu"><i class="fas fa-file-invoice-dollar fa-fw"></i> &nbsp; Citas <i class="fas fa-chevron-down"></i></a>
							<ul>
								<li>
                                                                    <a href="reservation-newcli.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención a domicilio</a>
								</li>

								<li>
									<a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención en el taller</a>
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