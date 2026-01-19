<%-- 
    Document   : index
    Created on : Jan 19, 2026, 12:08:43 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <title>Registro</title>
  <style>
   body     { font-family: sans-serif; 
              display: flex; 
              justify-content: 
              center; 
              align-items: 
              center; 
              height: 100vh; 
              background: #0b0f1a; }
   .box    { background: #ffff; 
             padding: 20px; 
             border-radius: 10px; 
             box-shadow: 0 0 10px #cccc; 
             width: 280px
             text-align: center; }
  </style>
</head>
<body>

  <div class="box">
    <form action="SvUsers" method="POST">
      <h2>Iniciar Sesión</h2>
      <input type="text" name="username" placeholder="Usuario" required><br>
      <input type="password" name="password" placeholder="Contraseña" required><br>
      <button type="submit">Entrar</button>
    </form>
  </div>

</body>
</html>
