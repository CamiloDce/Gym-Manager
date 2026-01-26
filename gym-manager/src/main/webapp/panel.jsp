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
  <title>Registro</title>
</head>
<body>
    <div class="panel">
    
        
        <section class="seccion">
            <h1>Crear usuarios</h1>
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
                <button class="button" type="submit">Crear Usuario</button>
            </form>
        </section>

        <section class="seccion"> 
            <h1>Mostrar usuarios</h1>
            <form action="SvUsers" method="GET">
                <button class="button" type="submit">Mostrar Usuarios</button>
            </form>
        </section> 

        <section class="seccion">
            <h1>Eliminar usuarios</h1>
            <form action="SvDelete" method="POST">
                <p><label>Id: </label> <input type="text" name="id_user"></p>
                <button class="button" type="submit">ELIMINAR Usuario</button>
            </form>
       </section>

       <section class="seccion">
            <h1>EDITAR usuarios</h1>
            <form action="SvEdit" method="GET">
                <p><label>Id: </label> <input type="text" name="id_editUser"></p>
                <button class="button" type="submit">Editar Usuario</button>
            </form>
        </section>
    </div>

        </div>
            <form>
                <a href="home.jsp">
                    <button type="button" class="button">Volver</button>    
                </a>
            </form> 
        </div>
        
        <div>
            <form action="SvLogout" method="GET">
                <a href="logout">
                     <button type="button" class="button">Cerrar sesión</button>    
                </a>
            </form> 
        </div>
</body>
</html>

