<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <title>Registro</title>
</head>
<body>

  <div>
    <form action="SvUsers" method="POST">
        <p><label>DNI: </label> <input type="text" name="dni"></p>
        <p><label>Nombre: </label> <input type="text" name="nombre"></p>
        <p><label>Apellido: </label> <input type="text" name="apellido"></p>
        <p><label>Email: </label> <input type="email" name="email"></p>
        <p><label>Contraseña: </label> <input type="password" name="password"></p>
        <p><label>Rol: </label> 
            <select name="rol" required>
            <option value="">-- Seleccionar rol --</option>
            <option value="MIEMBRO">Miembro</option>
            <option value="STAFF">Staff</option>
        </select></p>
        <p><label>Activo: </label> <input type="checkbox" name="activo" value="true"></p>
        <button type="submit">Mandar</button>
    </form>
  </div>

    
    <h1>Mostrar usuarios</h1>
    <form action="SvUsers" method="GET">
        <button type="submit">Mostrar Usuarios</button>
    </form>
    
    
    <h1>Eliminar usuarios</h1>
    <form action="SvDelete" method="POST">
        <p><label>Id: </label> <input type="text" name="id_user"></p>
        <button type="submit">ELIMINAR Usuario</button>
    </form>
    
    <h1>EDITAR usuarios</h1>
    <form action="SvEdit" method="GET">
        <p><label>Id: </label> <input type="text" name="id_editUser"></p>
        <button type="submit">Editar Usuario</button>
    </form>
    
    
</body>
</html>

