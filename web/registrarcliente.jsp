<%-- 
    Document   : editarcliente
    Created on : 22/08/2020, 03:25:44 PM
    Author     : ASUS
--%>

<%-- 
    Document   : index.jsp
    Created on : 15-mar-2020, 16.14.30
    Author     : ASUS
--%>
<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBCliente"%>
<%@page import="logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inicio | Registrar cliente</title>

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
              <a class="nav-link text-uppercase text-expanded" href="blog.jsp">Solicitar Servicio</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="store.jsp">Consultar Servicio</a>
            </li>
            <!--<li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="contact.html">Contacto</a>
            </li>-->
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="admin.jsp">Mensajeros</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <div class="container">
        <form id="frmInsertarProducto" action="InsertarCliente" method="POST">
        <table class="table table-striped table-dark">
            
             <tr>
                <thead class="thead-dark">
                <th scope="col" style="text-align: center">INGRESE EL NUEVO CLIENTE</th>                    
                </thead>
            </tr>

            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="numero_usuario">#Usuario</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getK_num_documento()%>"
                           class="form-control" id="txtId" name="txtId" placeholder="Nuemro de identificación">
                </div>
                <div class="form-group">
                    <label for="numero_perfil">#Perfil</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getK_tipo_documento()%>" 
                           class="form-control" id="k_tipo_documento" name="k_tipo_documento" placeholder="Tipo identificacion">
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getN_primer_nombre()%>" 
                           class="form-control" id="n_primer_nombre" name="n_primer_nombre" placeholder="Primer nombre" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getN_segundo_nombre()%>" 
                           class="form-control" id="n_segundo_nombre" name="n_segundo_nombre" placeholder="Segundo nombre" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getN_primer_apellido()%>" 
                           class="form-control" id="n_primer_apellido" name="n_primer_apellido" placeholder="Primer apellido" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getN_segundo_apellido()%>" 
                           class="form-control" id="n_segundo_apellido" name="n_segundo_apellido" placeholder="Segundo apellido" z>
                </div>
                <div class="form-group ">
                    <label for="apellido">Género</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getO_genero()%>" class="form-control" id="o_genero" name="o_genero" placeholder="Género">
                </div>
                <div class="form-group ">
                    <label for="apellido">Género</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getF_nacimiento()%>" 
                           class="form-control" id="f_nacimiento" name="f_nacimiento" placeholder="Fecha nacimiento">
                </div>
                <div class="form-group ">
                    <label for="apellido">Género</label>
                    <input type="text" value="<%= ((Cliente)session.getAttribute("cliente")).getN_correo()%>" 
                           class="form-control" id="n_correo" name="n_correo" placeholder="Correo">
                </div>

            </div>
            
            <tr>
                <td colspan="2"><input type="button" value="Aceptar" onclick="submit();"></td>
            </tr>
            
        </table>
        </form>

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
        	<a href="sample.html" class="link">Política de privacidad</a> ·
        	<a href="sample.html" class="link">Aviso legal</a> ·
        	<a href="sample.html" class="link">Cookies</a>
		</p>
        <p class="m-0 mbt1">&copy; Las Delicias 2020</p>
      </div>
	</footer>

    <!-- Bootstrap -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

