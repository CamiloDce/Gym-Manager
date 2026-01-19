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
        
    <h1>Ver lista de usuarios</h1>
    <p>Para ver datos de usuarios cargados, click en el siguiente botón</p>
    <form action="SvUsuarios" method="GET">
        <button type="submit" > Mostrar Usuarios </button>
    </form>
        
</body>
</html>
