<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Prueba</title>
</head>
<body>

    <h1>Datos del usuario</h1>

    <form action="SvUsuarios" method="POST">
        
        <p>
            <label>Email:</label> <!--Nombre-->
            <input type="text" name="email">
        </p>

        <p>
            <label>Contraseña:</label> <!<!--telefono-->
            <input type="text" name="contraseña">
        </p>

        <button type="submit">Enviar</button>
    </form>

</body>
</html>
