<%-- 
    Document   : actualizarmensajero
    Created on : 22/08/2020, 08:45:54 PM
    Author     : kjan
--%>

<%@page import="logica.Mensajero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inicio | Editar Mensajero</title>

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
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="index.jsp">Mensajería FBD</a>
        <div class="d-flex aling-item-end pr-3 btn-ingreso-registro">
          <!--<a href="login.jsp" class="btn btn-ingreso nav-link text-uppercase text-expanded">Ingresar</a>-->
          <a href="registramensajero.jsp" class="btn btn-info nav-link text-uppercase text-expanded">Registrar</a>
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
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="listaclientes.jsp">Clientes</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="solicitarservicio.jsp">Solicitar Servicio</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="consultarservicio.jsp">Consultar Servicio</a>
            </li>
            
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="listamensajeros.jsp">Mensajeros</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="container">
        <div class="pt-5 pb-5 formularioRegistro ">
           < <div class="card-header text-center">
                <h2 class="titulo">Información de registro</h2>
            </div>
           <form id="frmActualizarBlog" action="ActualizarCliente" method="POST">
             
        <table  class="table table-striped table-dark">
 

  
            <tr>
                <td>Número de documento</td>
                <td><input type="text" id="k_num_documento"  name="k_num_documento" value="<%= ((Mensajero)session.getAttribute("mensajero")).getK_num_documento()%>"></td>
            </tr>
            <tr>
                <td>Tipo de documento</td>
                <td><input type="text" id="k_tipo_documento"  name="k_tipo_documento" value="<%= ((Mensajero)session.getAttribute("mensajero")).getK_tipo_documento()%>"></td>
            </tr>
            <tr>
                <td>Primer nombre</td>
                <td><input type="text" id="n_primer_nombre" name="n_primer_nombre" value="<%= ((Mensajero)session.getAttribute("mensajero")).getN_primer_nombre()%>"></td>
            </tr>
            <tr>
                <td>Segundo nombre</td>
                <td><input type="text" id="n_segundo_nombre" name="n_segundo_nombre" value="<%= ((Mensajero)session.getAttribute("mensajero")).getN_segundo_nombre()%>"></td>
            </tr>
            <tr>
                <td>Primer apellido</td>
                <td><input type="text" id="n_primer_apellido" name="n_primer_apellido" value="<%= ((Mensajero)session.getAttribute("mensajero")).getN_primer_apellido()%>"></td>
            </tr>
            <tr>
                <td>Segundo apellido</td>
                <td><input type="text" id="n_segundo_apellido" name="n_segundo_apellido" value="<%= ((Mensajero)session.getAttribute("mensajero")).getN_segundo_apellido()%>"></td>
            </tr>
            <tr>
                <td>Telelfono</td>
                <td><input type="text" id="q_tefefono" name="q_tefefono" value="<%= ((Mensajero)session.getAttribute("mensajero")).getQ_tefefono()%>"></td>
            </tr>
            <tr>
                <td>Genero</td>
                <td><input type="text" id="o_genero" name="o_genero" value="<%= ((Mensajero)session.getAttribute("mensajero")).getO_genero()%>"></td>
            </tr>
            <tr>
                <td>Fecha de nacimiento</td>
                <td><input type="text" id="f_nacimiento" name="f_nacimiento" value="<%= ((Mensajero)session.getAttribute("mensajero")).getF_nacimiento()%>"></td>
            </tr>
            <tr>
                <td>Direccion</td>
                <td><input type="text" id="d_dir" name="d_dir" value="<%= ((Mensajero)session.getAttribute("mensajero")).getD_dir()%>"></td>
            </tr>
            <tr>
                <td>Numero de Seguro</td>
                <td><input type="text" id="d_dir" name="q_num_seguridad_social" value="<%= ((Mensajero)session.getAttribute("mensajero")).getQ_num_seguridad_social()%>"></td>
            </tr>
            <tr>
                <td>Medio Transporte</td>
                <td><input type="text" id="d_dir" name="o_medio_transporte" value="<%= ((Mensajero)session.getAttribute("mensajero")).getO_medio_transporte()%>"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="button" class="btn btn-success" value="Aceptar" onclick="submit();"></td>
            </tr>            
        </table>
        </form>
        </div>

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

          