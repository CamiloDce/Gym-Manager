<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
        <%Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
        
         <h1>Datos del usuario</h1>

    <form action="SvEditar" method="POST">
        
        <p><label>Email:</label><input type="text" name="email" value="<%=usu.getEmail()%>"></p>
        <p><label>Contraseña:</label><input type="text" name="contraseña" value="<%=usu.getContraseña()%>"></p>        
        <p><label>Dni:</label><input type="text" name="dni" value="<%=usu.getDni()%>"></p>        
        <p><label><label>Activo: </label> 
                <input type="checkbox" name="activo" value="true"> value="<%=usu.getRol()%>"</label></p>        
        <p><label>Rol:</label> 
            <select name="rol">
                <option value="Miembro">Miembro</option>
                <option value="Staff">Staff</option>
            </select></p>        
        <p><label>Nombre:</label><input type="text" name="nombre" value="<%=usu.getNombre()%>"></p>        
        <p><label>Apellido:</label><input type="text" name="apellido" value="<%=usu.getApellido()%>"></p>        
        
        <button type="submit">Guardar</button>
    </form>
    </body>
</html>
