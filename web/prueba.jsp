<%-- 
    Document   : consultarservicio
    Created on : 22/08/2020, 08:46:19 PM
    Author     : ASUS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBServicio"%>
<%@page import="logica.Servicio"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inicio | Mensajeria</title>

    <!-- Bootstrap -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Fuentes -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Estilos -->
    <link href="css/business-casual.css" rel="stylesheet">

  </head>

  <body>
      <!-- Menu acceso -->
      <nav class="navbar navbar-expand-lg navbar-dark row justify-content-between">
        <a href="index.jsp" class="navbar-brand pl-3 ">
          <!--<img src="img/logo.png" width="auto" height="40" alt="">-->
        </a>
        <div class="d-flex aling-item-end pr-3 btn-ingreso-registro">
          <!--<a href="login.jsp" class="btn btn-ingreso nav-link text-uppercase text-expanded">Ingresar</a>-->
          <a href="registrarcliente.jsp" class="btn btn-info nav-link text-uppercase text-expanded">Registrar</a>
        </div>
      </nav>
    <!-- Menu acceso -->
    
    <h1 class="site-heading text-center text-white d-none d-lg-block">
      <span class="site-heading-upper text-primary mb-3">Proyecto final</span>
      <span class="site-heading-lower">Mensajería FBD</span>
    </h1>

    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="index.jsp">Mensajería FBD</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item  px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="index.jsp">Inicio</a>
            </li>
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="listaclientes.jsp">Clientes</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="solicitarservicio.jsp">Solicitar Servicio</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="consultarservicio.jsp">Consultar Servicio</a>
            </li>
            
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="listamensajeros.jsp">Mensajeros</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <%Date date = new Date();
      out.println("Bienvenido. Hora actual es " + date);%>
    <div class="container">
    <form id="frmActualizarBlog" action="" method="POST">
        <br><br>
        <table  class="table table-striped table-dark">
            <tr>
                <td>ID Servicio</td>
                <td><input type="text" id="id_servicio" name="id_servicio" value=""></td>
            </tr>
            <tr>
                <td>Tipo Paquete</td>
                <td><input type="text" id="id_tipo_paquete" name="id_tipo_paquete" value=""></td>
            </tr>
            <tr>
                <td colspan="2"><input type="button" class="btn btn-success" value="Buscar" onclick="submit();"></td>
            </tr>            
        </table>
        </form>
        <%if (!request.getParameterMap().isEmpty()) {
          
          try{
                Servicio servicio = new Servicio();
                DBServicio servicioDB = new DBServicio();
                //Convertir el codigo postal a un valor num�rico
                
                
                //Long codPostal = Long.valueOf(request.getParameter("codPostal"));
                /*int k_id_servicio = (Integer.parseInt(request.getParameter("k_id_servicio")));
                int k_id_tipo_paquete = (Integer.parseInt(request.getParameter("k_id_tipo_paquete")));
                int k_num_documento_usuario = (Integer.parseInt(request.getParameter("k_num_documento_usuario")));
                String k_tipo_documento_usuario = (request.getParameter("k_tipo_documento_usuario"));

                String f_fecha = (request.getParameter("f_fecha"));
                String f_hora =  (request.getParameter("f_fecha"));*/
                
                
                int idservicio = Integer.parseInt(request.getParameter("id_servicio"));
                int idtipo_paquete = Integer.parseInt(request.getParameter("id_tipo_paquete"));
                /*int k_num_documento_usuario = 12345678;
                String k_tipo_documento_usuario = "CE";
                int k_num_documento_mensajero = 12345678;
                String k_tipo_documento_mensajero = "CE";

                String f_fecha = "2020/08/10";
                String f_hora =  "08:00:00";*/
                
                
                /*servicio.setK_id_servicio(Integer.parseInt(k_id_servicio));
                servicio.setK_id_tipo_paquete(Integer.parseInt(k_id_tipo_paquete));*/
                /*servicio.setK_num_documento_usuario(k_num_documento_usuario);
                servicio.setK_tipo_documento_usuario(k_tipo_documento_usuario);
                servicio.setK_num_documento_mensajero(k_num_documento_mensajero);
                servicio.setK_tipo_documento_mensajero(k_tipo_documento_mensajero);
                servicio.setF_fecha(f_fecha);
                servicio.setF_hora(f_hora);*/
  
                //servicioDB.getServicioById(idservicio, idtipo_paquete);                
                ResultSet res = servicioDB.getServicioById(2, 4);
                 if(res.next()){
                     
                        servicio.setK_id_servicio(res.getInt("k_id_servicio"));                     
                        servicio.setK_id_tipo_paquete(res.getInt("k_id_tipo_paquete"));
                        servicio.setK_num_documento_usuario(res.getInt("k_num_documento_usuario"));
                        servicio.setK_tipo_documento_usuario(res.getString("k_tipo_documento_usuario"));
                        servicio.setK_num_documento_mensajero(res.getInt("k_num_documento_mensajero"));
                        servicio.setK_tipo_documento_mensajero(res.getString("k_tipo_documento_mensajero"));
                        servicio.setF_fecha(res.getString("f_fecha"));
                        servicio.setF_hora(res.getString("f_hora"));
                }            
                
                
                
                request.getSession().setAttribute("servicio", servicio);              
                response.sendRedirect("resultadobusqueda.jsp");//out.println("ID servicio ["+ servicio.getK_id_servicio()+ "] Incluido exitosamente");
                out.println("Tipo de servicio ["+ servicio.getK_tipo_documento_usuario()+ "] Incluido exitosamente");
                out.println("ID usuario ["+ servicio.getK_num_documento_usuario()+ "] Incluido exitosamente");
                out.println("Tipo de documento ["+ servicio.getK_tipo_documento_usuario()+ "] Incluido exitosamente");
                out.println("Fecha ["+ servicio.getF_fecha()+ "] Incluido exitosamente");
                out.println("Hora ["+ servicio.getF_hora()+ "] Incluido exitosamente");   
            }
            catch(NumberFormatException e ){
                out.println("Tipo de servicio ["+ request.getParameter("k_id_servicio")+ "] <br>");
                out.println("ID usuario ["+ request.getParameter("k_id_tipo_paquete")+ "]  <br>");
                out.println("Error --> " + "El código postal es requerido y debe ser numérico");
            }
            catch(Exception e1){
                out.println("Error --> " + e1 + e1.getMessage());
            }
            
        }%>
    </div>
    <!-- Pié de página -->
    <footer class="footer text-faded text-center py-5">
      <div class="container">
        <p class="m-0">
	        <a href="#" class="link">
	          <span class="fa-stack fa-lg">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	        <a href="#" class="link">
	          <span class="fa-stack fa-lg">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	        <a href="#" class="link">
	          <span class="fa-stack fa-lg">
	            <i class="fa fa-circle fa-stack-2x"></i>
	            <i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
	          </span>
	        </a>
	    </p>
        <p class="m-0 mbt">
        	<a href="#" class="link">Política de privacidad</a> ·
        	<a href="#" class="link">Aviso legal</a> ·
        	<a href="#" class="link">Cookies</a>
		</p>
        <p class="m-0 mbt1">&copy; Mensajería FBD</p>
      </div>
	</footer>

    <!-- Bootstrap -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>




