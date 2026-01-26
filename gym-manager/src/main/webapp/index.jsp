


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>

        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/login.css">

    </head>
    <body>

        <h1>Datos del usuario</h1>

    <form action="SvLogin" method="POST">
        
        <p><label>Email:</label><input type="text" name="email"></p>
        <p><label>Contraseña:</label><input type="password" name="contraseña"></p>
        <p><input type="checkbox" name="staff" value="true"><label>Staff</label></p>
        
        <button type="submit">Iniciar Sesión</button>
    </form>

    </body>
</html>
