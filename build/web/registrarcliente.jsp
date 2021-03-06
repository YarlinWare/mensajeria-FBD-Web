<%-- 
    Document   : index.jsp
    Created on : 15-mar-2020, 16.14.30
    Author     : ASUS
--%>
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
        <form id="nuevoRegistro" method="get" enctype="multipart/form-data" class="pt-3 pb-5" >
            <div class="row ">
                <!-- Datos basicos-->			
                <div class="col-sm-12 col-md-6">
                    <div class="form-group">
                        <label for="name1">Número de documento</label>
                        <input type="number" class="form-control" id="num_documento" name="num_documento" placeholder="Numero usuario">
                    </div>
                    <div class="form-group">
                        <label for="name1">Tipo de documento</label>
                        <input type="text" class="form-control" id="tipo_documento" name="tipo_documento" placeholder="Numero Perfil">
                    </div>
                    <div class="form-group">
                        <label for="email1">Primer nombre</label>
                        <input type="text" class="form-control" id="primer_nombre" name="primer_nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group">
                        <label for="email1">Segundo nombre</label>
                        <input type="text" class="form-control" id="segundo_nombre" name="segundo_nombre" placeholder="Nombre">
                    </div>
                    <div class="form-group ">
                        <label for="pass1">Primer apellido</label>
                        <input type="text" class="form-control" id="primer_apellido" name="primer_apellido" placeholder="Apellido">
                    </div>
                    <div class="form-group ">
                        <label for="pass1">Segundo apellido</label>
                        <input type="text" class="form-control" id="segundo_apellido" name="segundo_apellido" placeholder="Apellido">
                    </div>
                    
                </div>
                <!-- ./Datos basicos-->

                <!-- Información médica-->
                <div class="col-sm-12 col-md-6">
                    <div class="form-group ">
                        <label for="pass2">Correo</label>
                        <input type="email" class="form-control"  id="correo" name="correo" placeholder="ejemplo@restaurante.com">
                    </div>
                    <div class="form-group ">
                        <label for="celphone">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="nacimiento" name="nacimiento" placeholder="99-12-12">
                    </div>
                    <div class="form-group ">
                        <label for="edad">Genero</label>
                        <input type="text" class="form-control" id="genero" name="genero" placeholder="Género">
                    </div>				
                </div> 
            </div>
            <input type="button" value="Agregar" class="btn btn-info btn-lg btn-block" onclick="submit();">  
        </form>
        <%if (!request.getParameterMap().isEmpty()) {
          
                DBCliente clienteDB = new DBCliente();
                
          try{
                Cliente c = new Cliente();//Convertir el codigo postal a un valor num�rico
                /*long K_num_documento=(Integer.parseInt(request.getParameter("num_documento")));
                String K_tipo_documento=(request.getParameter("tipo_documento"));
                String N_primer_nombre=(request.getParameter("primer_nombre"));
                String N_segundo_nombre=(request.getParameter("segundo_nombre"));
                String N_primer_apellido=(request.getParameter("primer_apellido"));
                String N_segundo_apellido=(request.getParameter("segundo_apellido"));
                String O_genero=(request.getParameter("genero"));
                String F_nacimiento=(request.getParameter("nacimiento"));
                String N_correo=(request.getParameter("correo"));  */ 

                
                c.setK_num_documento(Integer.parseInt(request.getParameter("num_documento")));
                c.setK_tipo_documento(request.getParameter("tipo_documento"));
                c.setN_primer_nombre(request.getParameter("primer_nombre"));
                c.setN_segundo_nombre(request.getParameter("segundo_nombre"));
                c.setN_primer_apellido(request.getParameter("primer_apellido"));
                c.setN_segundo_apellido(request.getParameter("segundo_apellido"));
                c.setO_genero(request.getParameter("genero"));
                c.setF_nacimiento(request.getParameter("nacimiento"));
                c.setN_correo(request.getParameter("correo"));
            
                clienteDB.insertarCliente(c);
                out.println("Numero documento ["+ c.getK_num_documento()+"] <br>");
                out.println("Tipo de documento ["+ c.getK_tipo_documento()+ "] <br>");
                out.println("Primer nombre ["+ c.getN_primer_nombre()+ "] <br>");
                out.println("Primer apellido ["+ c.getN_primer_apellido()+ "] <br>");
                out.println("Fecha ["+ c.getF_nacimiento()+ "] <br>");
                
            //response.sendRedirect("listaclientes.jsp");
            }
            catch(NumberFormatException e ){
                out.println("Municipio ["+ request.getParameter("num_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("tipo_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("primer_nombre")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("primer_apellido")+ "] <br>");
                out.println("Error --> " + "El código postal es requerido y debe ser numérico");
            }
            catch(Exception e1){
                out.println("Municipio ["+ request.getParameter("num_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("tipo_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("primer_nombre")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("primer_apellido")+ "] <br>");
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

