<%@ page import="logica.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usu = (Usuario) session.getAttribute("usuarioLogueado");

    if (usu == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/miembro.css">
        <title>Bienvenida</title>
    </head>
    <body>
        <div class="card">
            <h1>Bienvenido <%= usu.getNombre() %></h1>
            <p>Email: <%= usu.getEmail() %></p>
            <p class="estado <%= usu.getActivo() ? "activo" : "inactivo" %>">
                Estado: <%= usu.getActivo()? "Activo" : "Inactivo" %>
            </p>
            
            <p>Rol: <%= usu.getRol() %></p>
            
            <div class="concurrencia">
                <p>Concurrencia: 
                    <b><%= application.getAttribute("contador") == null ? 0 : 
                           application.getAttribute("contador") %></b>
                </p>
            </div>
        </div>
    </body>
</html>    