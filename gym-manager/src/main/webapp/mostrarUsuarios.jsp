<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/mostrarUsuarios.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios registrados</h1>
        
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
                for(Usuario usu : listaUsuarios){
        %>
        
                    <div class="usuario-card">

    <div class="usuario-header">
        <%=usu.getNombre()%> <%=usu.getApellido()%> -
        <span class="<%=usu.getActivo() ? "activo" : "inactivo"%>">
            <%=usu.getActivo() ? "Activo" : "Inactivo"%>
        </span>
    </div>

    <div class="usuario-datos">
        <p><b>ID:</b> <%=usu.getId()%></p>
        <p><b>Rol:</b> <%=usu.getRol()%></p>
        <p><b>DNI:</b> <%=usu.getDni()%></p>
        <p><b>Email:</b> <%=usu.getEmail()%></p>
        <p><b>Contraseña:</b> <%=usu.getContraseña()%></p>
    </div>

    <div class="divisor"></div>

</div>

                    <% cont = cont + 1; %>
                    
        <% } %>  
        
    </body>
</html>
