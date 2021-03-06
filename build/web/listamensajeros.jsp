<%-- 
    Document   : listamensajeros
    Created on : 22/08/2020, 05:39:40 PM
    Author     : kjan
--%>

<%@page import="java.util.List"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBMensajero"%>
<%@page import="logica.Mensajero"%>
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
                <a href="registrarmensajero.jsp" class="btn btn-info nav-link text-uppercase text-expanded">Registrar</a>
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
                        <!--<li class="nav-item px-lg-4">
                          <a class="nav-link text-uppercase text-expanded" href="contact.html">Contacto</a>
                        </li>-->
                        <li class="nav-item active px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="listamensajero.jsp">Mensajeros</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <%
            DBMensajero dbr = new DBMensajero();
            ResultSet mensajero = dbr.getMensajero();
        %>
        <div class="container">
            <table  class="mt-5 table table-responsive-md  table-striped table-dark">
                <tr>
                <thead class="thead-dark">                    
                <th scope="col">#Documento</th>
                <th scope="col">Tipo Doc</th>
                <th scope="col">Primer nombre</th>
                <th scope="col">Segundo nombre</th>
                <th scope="col">Primer apellido</th>
                <th scope="col">Segundo apellido</th>
                <th scope="col">Telefono</th>
                <th scope="col">Genero</th>
                <th scope="col">Fecha nacimiento</th>
                <th scope="col">Direccion</th>
                <th scope="col">numero de seguridad </th>
                <th scope="col">Medio de transporte </th>
                </thead>
                </tr>
                <% while (mensajero.next()) {%>
                <tr>
                    <td><%= mensajero.getInt("k_num_documento")%></td>
                    <td><%= mensajero.getString("k_tipo_documento")%></td>
                    <td><%= mensajero.getString("n_primer_nombre")%></td>
                    <td><%= mensajero.getString("n_segundo_nombre")%></td>
                    <td><%= mensajero.getString("n_primer_apellido")%></td>
                    <td><%= mensajero.getString("n_segundo_apellido")%></td>
                    <td><%= mensajero.getString("q_tefefono")%></td>
                    <td><%= mensajero.getString("o_genero")%></td>                        
                    <td><%= mensajero.getString("f_nacimiento")%></td>
                    <td><%= mensajero.getString("d_dir")%></td>
                    <td><%= mensajero.getString("q_num_seguridad_social")%></td>
                    <td><%= mensajero.getString("o_medio_transporte")%></td>
                    <td class="links">
                        <a href="CargarMensajero?opc=edit&num_doc=<%= mensajero.getInt("k_num_documento")%>&tipo_doc=<%= mensajero.getString("k_tipo_documento")%>">Editar</a>
                        <a href="CargarMensajero?opc=delete&num_doc=<%= mensajero.getInt("k_num_documento")%>&tipo_doc=<%= mensajero.getString("k_tipo_documento")%>">Borrar</a>
                    </td>
                </tr>
                <% }%>
                <tr>

                </tr>
                <tr>

                </tr>
            </table>
            <td colspan="5" class="links"><a class="btn btn-success" href="registrarmensajero.jsp">Agregar</a></td>
        </div><br><br>
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