package primerservlet.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    Controladora control = new Controladora();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String contraseña = request.getParameter("contraseña");

        // 1️⃣ Buscar usuario en la base
        Usuario usu = control.validarLogin(email, contraseña);

        if (usu == null) {
            // ❌ Login incorrecto
            response.sendRedirect("index.jsp");
            return;
        }

        // 2️⃣ Guardar usuario en sesión
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarioLogueado", usu);

        // 3️⃣ Redirigir según rol
        if (usu.getRol().name().equals("Staff")) {
            
            response.sendRedirect("CRUD.jsp");
            
        } else {
            response.sendRedirect("miembro.jsp");
        }
    }
}
