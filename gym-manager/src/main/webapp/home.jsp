<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="logic.Usuario" %>
<%  
    HttpSession sesion = request.getSession(false);
    Usuario usuario = (sesion != null) ? (Usuario) sesion.getAttribute("usuario") : null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <title>HOME</title>
    </head>
    <body>    
        <h1>¡Hola, <%= usuario.getNombre() %>!</h1>
        <a href="index.jsp">
            <button type="button" class="button">Cerrar sesión</button>
        </a>
    </body>
</html>
