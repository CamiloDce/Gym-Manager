<%@ page import="logica.Usuario" %>
<%
    Usuario usu = (Usuario) session.getAttribute("usuarioLogueado");

    if (usu == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<h1>Bienvenido <%= usu.getNombre() %></h1>

<p>Email: <%= usu.getEmail() %></p>
<p>Estado: <%= usu.getActivo()? "Activo" : "Inactivo" %></p>
<p>Rol: <%= usu.getRol() %></p>
