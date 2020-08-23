<%-- 
    Document   : registramensajero
    Created on : 22/08/2020, 07:37:30 PM
    Author     : kjan
--%>
<%@page import="logica.Mensajero"%>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inicio | Registrar mensajero</title>

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
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="index.jsp">Mensajer�a FBD</a>
        <div class="d-flex aling-item-end pr-3 btn-ingreso-registro">
          <!--<a href="login.jsp" class="btn btn-ingreso nav-link text-uppercase text-expanded">Ingresar</a>-->
          <a href="registramensajero.jsp" class="btn btn-info nav-link text-uppercase text-expanded">Registrar</a>
        </div>
      </nav>
    <!-- Menu acceso -->
    
    <h1 class="site-heading text-center text-white d-none d-lg-block">
      <span class="site-heading-upper text-primary mb-3">Proyecto final</span>
      <span class="site-heading-lower">Mensajer�a FBD</span>
    </h1>

    <!-- Navegaci�n -->
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
              <a class="nav-link text-uppercase text-expanded" href="listamensajero.jsp">Clientes</a>
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
    
    <div class="container">
        <form id="frmInsertarProducto" action="InsertarMensajero" method="POST">
        <table class="table table-striped table-dark">
            
             <tr>
                <thead class="thead-dark">
                <th scope="col" style="text-align: center">INGRESE EL NUEVO MENSAJERO</th>                    
                </thead>
            </tr>

            <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="numero_usuario">#Usuario</label>
                    <input type="text"
                           class="form-control" id="txtId" name="txtId" placeholder="Nuemro de identificaci�n">
                </div>
                <div class="form-group">
                    <label for="numero_perfil">#Perfil</label>
                    <input type="text"
                           class="form-control" id="k_tipo_documento" name="k_tipo_documento" placeholder="Tipo identificacion">
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text"  
                           class="form-control" id="n_primer_nombre" name="n_primer_nombre" placeholder="Primer nombre" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" 
                           class="form-control" id="n_segundo_nombre" name="n_segundo_nombre" placeholder="Segundo nombre" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" 
                           class="form-control" id="n_primer_apellido" name="n_primer_apellido" placeholder="Primer apellido" z>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" 
                           class="form-control" id="n_segundo_apellido" name="n_segundo_apellido" placeholder="Segundo apellido" z>
                </div>
                <div class="col-sm-12 col-md-6">
                <div class="form-group">
                    <label for="apellido">#Usuario</label>
                    <input type="text" 
                           class="form-control" id="q_tefefono" name="q_tefefono" placeholder="Numero de Telefono">
                </div>
                <div class="form-group ">
                    <label for="apellido">G�nero</label>
                    <input type="text" class="form-control" id="o_genero" name="o_genero" placeholder="G�nero">
                </div>
                <div class="form-group ">
                    <label for="apellido">G�nero</label>
                    <input type="text"
                           class="form-control" id="f_nacimiento" name="f_nacimiento" placeholder="Fecha nacimiento">
                </div>
                <div class="form-group ">
                    <label for="apellido">G�nero</label>
                    <input type="text"
                           class="form-control" id="n_correo" name="d_dir" placeholder="direccion">
                </div>
                           
                <div class="form-group ">
                    <label for="apellido">G�nero</label>
                    <input type="text"
                           class="form-control" id="f_nacimiento" name="q_num_seguridad_social" placeholder="seguridad social">
                </div>

                <div class="form-group ">
                    <label for="apellido">G�nero</label>
                    <input type="text"
                           class="form-control" id="f_nacimiento" name="o_medio_transporte" placeholder="medio de transporte">
                </div>
            </div>
            
            <tr>
                <td colspan="2"><input type="button" value="Aceptar" onclick="submit();"></td>
            </tr>
            
        </table>
        </form>

    </div>
    <!-- Pi� de p�gina -->
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
        	<a href="#" class="link">Pol�tica de privacidad</a> �
        	<a href="#" class="link">Aviso legal</a> �
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
