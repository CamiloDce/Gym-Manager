<%@page import="logic.Rol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="logic.Usuario" %>
<%  
    HttpSession sesion = request.getSession(false);
    Usuario usuario = (sesion != null) ? (Usuario) sesion.getAttribute("usuario") : null;

if (usuario == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <title>HOME</title>
    </head>
    <body>
        <div class="panel">

            <h1>¡Hola, <%= usuario.getNombre() %>!</h1>

            <% if (usuario.getRol() == Rol.STAFF) { %>
            <section class="seccion">
                <form>
                    <a href="panel.jsp">
                        <button type="button" class="button">Panel</button>    
                    </a>
                </form> 
            </section>
            <% } %>

            <% if (usuario.getRol() == Rol.MIEMBRO) { %>
                <p>Anda!</p>
            <% } %>

            <form action="SvLogout" method="GET">
                <a href="logout">
                     <button type="button" class="button">Cerrar sesión</button>    
                </a>
            </form>    
        
        </div> 
    </body>
</html>
