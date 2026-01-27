
<%@page import="logic.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    HttpSession sesion = request.getSession(false);
    Usuario usuario = (sesion != null) ? (Usuario) sesion.getAttribute("usuario") : null;

if (usuario == null) {
    response.sendRedirect("index.jsp");
    return;
}

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
        <title>JSP Page</title>
    </head>
    <body>
        <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEdit"); %>
        
        <div class="panel">      
            <section class="seccion">
                <h1>Editar Miembros!</h1>
                <form action="SvEdit" method="POST">
                    <p><label>DNI: </label> <input type="text" name="dni" value="<%=usu.getDni()%>"></p>
                    <p><label>Nombre: </label> <input type="text" name="nombre" value="<%=usu.getNombre()%>"></p>
                    <p><label>Apellido: </label> <input type="text" name="apellido" value="<%=usu.getApellido()%>"></p>
                    <p><label>Email: </label> <input type="email" name="email" value="<%=usu.getEmail()%>"></p>
                    <p><label>Contraseña: </label> <input type="password" name="password"></p>
                    <p><label>Rol: </label> 
                        <select name="rol" required>
                        <option value="">-- Seleccionar rol --</option>
                        <option value="MIEMBRO">Miembro</option>
                        <option value="STAFF">Staff</option>
                    </select> value="<%=usu.getRol() %>"</p>
                    <p><label>Activo: </label> <input type="checkbox" name="activo" value="true" value="<%=usu.getActivo()%>"></p>
                    <button class="button" type="submit">Guardar</button>
                </form>
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
