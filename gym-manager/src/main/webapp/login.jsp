
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/style.css" rel="stylesheet" type="text/css">
        <title>LOGIN</title>
    </head>
    <body>

      <div class="box">
        <form action="SvUsers" method="POST">
          <h2>Iniciar Sesión</h2>
          <input type="text" name="username" placeholder="Usuario" required><br>
          <input type="password" name="password" placeholder="Contraseña" required><br>
          <button type="submit" class="button">Entrar</button>
        </form>
      </div>
     </body>
</html>

