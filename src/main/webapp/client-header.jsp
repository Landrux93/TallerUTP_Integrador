<%-- 
    Document   : header-client
    Created on : Jun 4, 2022, 4:46:29 AM
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
                    <div class="full-box page-header">
                    <h3 class="text-left">
                        <i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
                    </h3>
                    <p class="text-justify">
                        El Taller UTP, es una empresa se dedica a la reparación y mantenimiento de aparatos de computo de todas las marcas, 
                        cuenta con un servicio técnico que atiende las solicitudes de instalaciones, reparaciones y mantenimiento para brindar 
                        la mejor experiencia a los clientes.
                    </p>
                </div>

                <div class="container-fluid">
                    <ul class="full-box list-unstyled page-nav-tabs">
                        <li>
                            <a href="client-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; AGREGAR CLIENTE</a>
                        </li>
                        <li>
                            <a href="ServletCliente?opc=4"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE CLIENTES</a>
                        </li>
                        <li>
                            <a href="client-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; BUSCAR CLIENTE</a>
                        </li>
                    </ul>	
                </div>
  </body>
</html>
