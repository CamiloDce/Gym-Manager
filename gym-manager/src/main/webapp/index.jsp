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
            <label>Email:</label> 
            <input type="text" name="email">
        </p>

        <p>
            <label>Contraseña:</label> 
            <input type="text" name="contraseña">
        </p>
        
        <p>
            <label>Dni:</label> 
            <input type="text" name="dni">
        </p>
        
        <p>
            <label>
               <label>Activo: </label> <input type="checkbox" name="activo" value="true">
            </label> 
            
        </p>
        
        <p>
            <label>Rol:</label> 
            <select name="rol">
                <option value="Miembro">Miembro</option>
                <option value="Staff">Staff</option>
            </select>
        </p>
        
        <p>
            <label>Nombre:</label> 
            <input type="text" name="nombre">
        </p>
        
        <p>
            <label>Apellido:</label> 
            <input type="text" name="apellido">
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
