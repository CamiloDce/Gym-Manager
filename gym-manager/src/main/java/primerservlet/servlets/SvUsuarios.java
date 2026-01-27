
package primerservlet.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import logica.Controladora;
import logica.Rol;
import logica.Usuario;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
Controladora control = new Controladora ();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
   
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios = control.traerUsuarios();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        
        response.sendRedirect("mostrarUsuarios.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String dni = request.getParameter("dni");
        boolean activo = Boolean.parseBoolean(request.getParameter("activo"));
        Rol rol = Rol.valueOf(request.getParameter("rol"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String contraseña = request.getParameter("contraseña");
        
        Usuario usu = new Usuario ();
        usu.setDni(dni);
        usu.setActivo(activo);
        usu.setRol(rol);
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setEmail(email);
        usu.setContraseña(contraseña);
        
        control.crearUsuario(usu);
        response.sendRedirect("CRUD.jsp");

    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
