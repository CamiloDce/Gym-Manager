<%@page import="java.util.List"%>
<%@page import="logic.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <%
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
                for(Usuario usu : listaUsuarios) {
                           
         %>
         <p><b>Usuario n: <%=cont%></b></p>
         <p>ID: <%=usu.getId()%></p>
         <p>DNI: <%=usu.getDni()%></p>
         <p>Nombre: <%=usu.getNombre()%></p>
         <p>Apellido: <%=usu.getApellido ()%></p>
         <p>Email: <%=usu.getEmail()%></p>
         <p>Contraseña: <%=usu.getPassword()%></p>
         <p>Rol: <%=usu.getRol ()%></p>
         <p>Activo: <%=usu.getActivo ()%></p>
         <% cont = cont + 1;%>
        <% } %>
    </body>
</html>
