<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="logic.Rol"%>
<%@page import="java.util.List"%>
<%@page import="logic.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession(false);
    Usuario usuario = (sesion != null) ? (Usuario) sesion.getAttribute("usuario") : null;

    if (usuario == null || !usuario.getRol().name().equals("STAFF")) {
        response.sendRedirect("index.jsp");
    return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <title>Lista Usuarios</title>
    </head>
    <body>
        <div class="panel">
        
            <section class="seccion">
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
            </section>
            
        </div>
        <div>
                <form>
                    <a href="panel.jsp">
                         <button type="button" class="button">Volver</button>    
                    </a>
                </form> 
            </div>
    </body>
</html>
