<%-- 
    Document   : actualizarmensajero
    Created on : 22/08/2020, 08:45:54 PM
    Author     : kjan
--%>

<%@page import="logica.Servicio"%>
<%@page import="database.DBServicio"%>
<%@page import="logica.Mensajero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inicio | Solicitar servicio</title>

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
          <a href="solicitarservicio.jsp" class="btn btn-info nav-link text-uppercase text-expanded">Registrar</a>
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
            <li class="nav-item  px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="listaclientes.jsp">Clientes</a>
            </li>
            <li class="nav-item  active px-lg-4">
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
        <form id="nuevoPedido" method="GET" enctype="multipart/form-data" class="pt-3 pb-5" >
            <div class="row ">
                <!-- Datos basicos-->			
                <div class="col-sm-12 col-md-6">
                    <div class="form-group">
                        <label for="name1">Número de documento Usuario</label>
                        <input type="number" class="form-control" id="num_documento" name="num_documento" placeholder="Numero usuario">
                    </div>
                    <div class="form-group">
                        <label for="name1">Tipo de documento Usuario</label>
                        <input type="text" class="form-control" id="tipo_documento" name="tipo_documento" placeholder="Tipo de documento">
                     </div>
                      <!--<div class="form-group">
                        <label for="name1">Número de documento Mensajero</label>
                        <input type="number" class="form-control" id="num_documento" name="num_documento" placeholder="Numero documento Mensajero">
                    </div>
                    <div class="form-group">
                        <label for="name1">Tipo de documento Mensajero</label>
                        <input type="text" class="form-control" id="tipo_documento" name="tipo_documento" placeholder="Tipo de documento">
                    </div>
                   -->
                    
                </div>
              
                  
                <!-- Salida y llegada--><!--
                <div class="col-sm-12 col-md-6">
                     <br> <br> <br> <br>-->
                     <div class="form-group ">
                        <label for="pass1">Tipo de paquete</label>
                        <input type="number" id="k_id_tipo_paquete" name="k_id_tipo_paquete" value="">
                    </div>
                     <div class="form-group ">
                        <label for="pass1">Fecha</label>
                        <input type="text" id="fecha_envio" name="fecha_envio" placeholder="24/08/2020">
                    </div>
                    <div class="form-group ">
                        <label for="pass1">Hora</label>
                        <input type="text" id="hora_envio" name="hora_envio" placeholder="14:00">
                    </div>
                    -->
                    <!-- ./Direcciones-->
                    <!--
                    <div class="form-group ">
                        <label for="direccion1">Direccion de salida</label>
                        <input type="text" class="form-control"  id="direccion_1" name="direccion1" placeholder="Carrera 1 #18-03">
                    </div>
                    <div class="form-group ">
                        <label for="direccion2">Direccion de entrga</label>
                        <input type="text" class="form-control" id="direccion_2" name="direccion2" placeholder="Calle 72 #37-12">
                    </div>
                    -->
                </div> 
            </div>
    
            <input type="button" value="Aceptar" class="btn btn-info btn-lg btn-block" onclick="submit();">  
        </form> 
    </div>
     <%if (!request.getParameterMap().isEmpty()) {
          
                DBServicio servicioDB = new DBServicio();
                
          try{
                Servicio c = new Servicio();
                //Convertir el codigo postal a un valor num�rico
                /*long K_num_documento=(Integer.parseInt(request.getParameter("num_documento")));
                String K_tipo_documento=(request.getParameter("tipo_documento"));
                String N_primer_nombre=(request.getParameter("primer_nombre"));
                String N_segundo_nombre=(request.getParameter("segundo_nombre"));
                String N_primer_apellido=(request.getParameter("primer_apellido"));
                String N_segundo_apellido=(request.getParameter("segundo_apellido"));
                String O_genero=(request.getParameter("genero"));
                String F_nacimiento=(request.getParameter("nacimiento"));
                String N_correo=(request.getParameter("correo"));  */ 
  

                
                //c.setK_id_servicio(Integer.parseInt(request.getParameter("k_id_servicio")));
                c.setK_id_tipo_paquete(Integer.parseInt(request.getParameter("k_id_tipo_paquete")));
                c.setK_num_documento_usuario(Integer.parseInt(request.getParameter("num_documento")));
                c.setK_tipo_documento_usuario(request.getParameter("tipo_documento"));
               // c.setK_num_documento_mensajero(Integer.parseInt(request.getParameter("num_documento")));
                //c.setK_tipo_documento_mensajero(request.getParameter("tipo_documento"));
                c.setF_fecha(request.getParameter("fecha_envio"));
                c.setF_hora(request.getParameter("hora_envio"));
                /*c.setV_valor_servicio(Integer.parseInt(request.getParameter("v_valor_servicio")));
                */
                
                servicioDB.insertarServicio(c);
               // out.println("id servicio ["+ c.getK_id_servicio()+"] <br>");
                out.println("Tipo de paquete ["+ c.getK_id_tipo_paquete()+ "] <br>");
                out.println("documento usuario ["+ c.getK_num_documento_usuario()+ "] <br>");
                out.println("tipo de documento de usuario ["+ c.getK_tipo_documento_usuario()+ "] <br>");
                out.println("documento mensajero ["+ c.getK_num_documento_mensajero()+ "] <br>");
                out.println("tipo de documento de mensajero ["+ c.getK_tipo_documento_mensajero()+ "] <br>");
                out.println("fecha  ["+ c.getF_fecha()+ "] <br>");
                out.println("hora  ["+ c.getF_hora()+ "] <br>");
                /*out.println("valor del servicio  ["+ c.getV_valor_servicio()+ "] <br>");
                   */
            //response.sendRedirect("listaclientes.jsp");
            }
            catch(NumberFormatException e ){
                out.println("Municipio ["+ request.getParameter("num_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("tipo_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("k_id_tipo_paquete")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("primer_apellido")+ "] <br>");
                out.println("Error --> " + "El código postal es requerido y debe ser numérico");
            }
            catch(Exception e1){
                out.println("Municipio ["+ request.getParameter("num_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("tipo_documento")+ "] <br>");
                out.println("Municipio ["+ request.getParameter("k_id_tipo_paquete")+ "] <br>");
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

