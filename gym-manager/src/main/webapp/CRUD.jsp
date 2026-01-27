<%@ page import="logica.Usuario" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<%
    HttpSession sesion = request.getSession(false);
    Usuario usuario = (sesion != null) ? (Usuario) sesion.getAttribute("usuarioLogueado") : null;

if (usuario == null || !usuario.getRol().name().equals("Staff")) {
    response.sendRedirect("index.jsp");
    return;
}
%>
<html>

<head>
    
    
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/CRUD.css">
    <title>Administrador</title>
       
        
</head>
        <script>
function mostrar(id) {
    document.querySelectorAll('.seccion').forEach(s => {
        s.classList.remove('activa');
    });
    document.getElementById(id).classList.add('activa');
}
</script>

<body>
            
    <div class="layout">
    
    <aside class="sidebar">
        <h2>ADMIN</h2>
        <button onclick="mostrar('agregar')">Agregar</button>
        <form action="SvUsuarios" method="GET">
            <button type="submit" > Mostrar Usuarios </button>
        </form>
        <button onclick="mostrar('eliminar')">Eliminar</button>
        <button onclick="mostrar('editar')">Editar</button>
        <form action="SvLogout" method="GET">
            <button class="logout">Salir</button>
        </form>
        
        <div class="contador">
            <div class="concurrencia">
            <p>Concurrencia: 
                <b><%= application.getAttribute("contador") == null ? 0 : 
                        application.getAttribute("contador") %></b>
            </p>
            </div>
            <div class="botonsum">
            <form action="SvContador" method="POST">
                <input type="hidden" name="accion" value="sumar">
                <button type="submit">+ Sumar miembro </button>            
            </form>
            </div>
            <div class="botonsum">
            <form action="SvContador" method="POST">
                <input type="hidden" name="accion" value="restar">
                <button type="submir" >- Restar miembro </button>
            </form>
            </div>
        </div>
        
    </aside>
    
    <main class="contenido">
    
        <div id="agregar" class="seccion activa">
            <form action="SvUsuarios" method="POST">
                <h1>Datos del usuario</h1>
                <p><label>Email:</label><input type="text" name="email"></p>
                <p><label>Contraseña:</label><input type="text" name="contraseña"></p>        
                <p><label>Dni:</label><input type="text" name="dni"></p>        
                <p><label><label>Activo: </label> 
                        <input type="checkbox" name="activo" value="true"></label></p>        
                <p><label>Rol:</label> 
                    <select name="rol">
                        <option value="Miembro">Miembro</option>
                        <option value="Staff">Staff</option>
                    </select></p>        
                <p><label>Nombre:</label><input type="text" name="nombre"></p>        
                <p><label>Apellido:</label><input type="text" name="apellido"></p>

                <button type="submit">Enviar</button>
            </form>        
        </div>
    
    
        <div id="ver" class="seccion">
            <h1>Ver lista de usuarios</h1>
            <p>Para ver datos de usuarios cargados, click en el siguiente botón</p>
            <form action="SvUsuarios" method="GET">
                <button type="submit" > Mostrar Usuarios </button>
            </form>
        </div>
    
        <div id="eliminar" class="seccion">
            <h1>Eliminar Usuario</h1>          
            <p>Ingrese Id</p>
            <form action="SvEliminar" method="POST">
                <p>
                    
                    <input type="text" name="id_usuario">
                </p>
                <button type="submit" > Confirmar </button>
            </form>
        </div>
    
    
        <div id="editar" class="seccion">
            <h1>Editar Usuario</h1>
            <p>Ingrese Id</p>
            <form action="SvEditar" method="GET">
                <p>                    
                    <input type="text" name="id_usuarioEdit">
                </p>
                <button type="submit" > Confirmar </button>
            </form>
        </div>
        
        <div id="logout" class="seccion">
            <form action="SvLogout" method="GET">
                <p>
                    <label>ACA SALIS MAQUINA</label>
                </p>
                <button type="submit" > Cerrar Sesión </button>
            </form>
        </div>    
        
</body>

</html>
