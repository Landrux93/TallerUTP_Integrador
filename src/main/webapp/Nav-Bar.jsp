<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <% String id = (String) request.getAttribute("id");
      String nombre = (String) request.getAttribute("nombre");
      String apellido = (String) request.getAttribute("apellido");
      String privilegio = (String) request.getAttribute("priv");
      String rol = "";
      String navHome = "", navCliente = "", navRepuesto = "", navTrabajador = "", navCitas = "", navServicio = "";
      String Home = "<li> <a href=\"ServletRutas?ruta=home&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fab fa-dashcube fa-fw\"></i> &nbsp; Dashboard</a> </li>";
      String Cliente = "<li>"
              + "<a href=\"#\" class=\"nav-btn-submenu\"><i class=\"fas fa-users fa-fw\"></i> &nbsp; Clientes <i class=\"fas fa-chevron-down\"></i></a>"
              + "<ul>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=clientenew&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Agregar Cliente</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletCliente?opc=4&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-clipboard-list fa-fw\"></i> &nbsp; Lista de clientes</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=clientesearch&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-search fa-fw\"></i> &nbsp; Buscar cliente</a>"
              + "</li>"
              + "</ul>"
              + "</li>";
      String Repuesto = "<li>"
              + "<a href=\"#\" class=\"nav-btn-submenu\"><i class=\"fas fa-pallet fa-fw\"></i> &nbsp; Repuestos <i class=\"fas fa-chevron-down\"></i></a>"
              + "<ul>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=itemnew&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Agregar Repuestos</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletRepuesto?opc=4&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-clipboard-list fa-fw\"></i> &nbsp; Control de Repuestos</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=itemsearch&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-search fa-fw\"></i> &nbsp; Buscar Repuesto</a>"
              + "</li>"
              + "</ul>"
              + "</li>";

      String Trabajador = "<li>"
              + "<a href=\"#\" class=\"nav-btn-submenu\"><i class=\"fas  fa-user-secret fa-fw\"></i> &nbsp; Trabajador  <i class=\"fas fa-chevron-down\"></i></a>"
              + "<ul>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=registraTrabajador&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Nuevo Trabajador</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=listarTrabajadores&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-clipboard-list fa-fw\"></i> &nbsp; Lista de Trabajador</a>"
              + "</li>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=usersearch&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-search fa-fw\"></i> &nbsp; Buscar Trabajador</a>"
              + "</li>"
              + "</ul>"
              + "</li>";

      String Citas = "<li>"
              + "<a href=\"#\" class=\"nav-btn-submenu\"><i class=\"fas fa-file-invoice-dollar fa-fw\"></i> &nbsp; Citas <i class=\"fas fa-chevron-down\"></i></a>"
              + "<ul>"
              + "<li>"
              + " <a href=\"ServletCitas?opcion=2&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Atención a domicilio</a>"
              + " </li>"
              + "<li>"
              + "<a href=\"ServletRutas?ruta=reservationnew&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Atención en el taller</a>"
              + " </li>"
              + "<li>"
              + "   <a href=\"ServletRutas?ruta=listarcitas&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-clipboard-list fa-fw\"></i> &nbsp; Lista de citas</a>"
              + " </li>"
              + "  <li>"
              + "    <a href=\"ServletRutas?ruta=reservationsearch&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-search-dollar fa-fw\"></i> &nbsp; Buscar Cita</a>"
              + "  </li>"
              + "  <li>"
              + "    <a href=\"ServletRutas?ruta=reservationpending&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-hand-holding-usd fa-fw\"></i> &nbsp; Reporte de citas</a>"
              + "    </li>"
              + "    </ul>"
              + "  </li>";

      String Servicio = "<li>"
              + "<a href=\"#\" class=\"nav-btn-submenu\"><i class=\"fas fa-file-invoice-dollar fa-fw\"></i> &nbsp; SERVICIO <i class=\"fas fa-chevron-down\"></i></a>"
              + "<ul>"
              + " <li>"
              + " <a href=\"ServletRutas?ruta=hojaservicionew&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; HOJA DE SERVICIO</a>"
              + " </li>"
              + " <li>"
              + " <a href=\"ServletRutas?ruta=equiponew&id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&priv=" + privilegio + "\"><i class=\"fas fa-plus fa-fw\"></i> &nbsp; Equipo</a>"
              + "</li>"
              + " </ul>"
              + " </li>";
      switch (privilegio) {
        case "TR0000":
          rol = "Cliente";
          navHome = Home;
          navCitas = Citas;
          navServicio = Servicio;
          break;
        case "TR0001":
          rol = "Tecnico";
          navHome = Home;
          navRepuesto = Repuesto;
          navCitas = Citas;
          navServicio = Servicio;
          break;
        case "TR0002":
          rol = "Administrador";
          navHome = Home;
          navCliente = Cliente;
          navRepuesto = Repuesto;
          navTrabajador = Trabajador;
          navCitas = Citas;
          navServicio = Servicio;
          break;
        case "TR0003":
          rol = "Encargado";
          break;
        default:
      }
    %>

    <section class="full-box nav-lateral">
      <div class="full-box nav-lateral-bg show-nav-lateral"></div>
      <div class="full-box nav-lateral-content">
        <figure class="full-box nav-lateral-avatar">
          <i class="far fa-times-circle show-nav-lateral"></i>
          <img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
          <figcaption class="roboto-medium text-center">
            <%=nombre%> <br><small class="roboto-condensed-light"><%=rol%></small>
          </figcaption>
        </figure>
        <div class="full-box nav-lateral-bar"></div>
        <nav class="full-box nav-lateral-menu">
          <ul>
            <%=navHome%>
            <%=navCliente%>
            <%=navRepuesto%>
            <%=navTrabajador%>
            <%=navCitas%>
            <%=navServicio%>
          </ul>
        </nav>
      </div>
    </section>
  </body>
</html>