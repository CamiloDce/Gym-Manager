package primerservlet.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logica.Controladora;
import logica.Rol;
import logica.Usuario;

@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {
Controladora control = new Controladora();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        int id_editar = Integer.parseInt(request.getParameter("id_usuarioEdit"));
        Usuario usu = control.traerUsuario(id_editar);
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("usuEditar", usu);
        
        response.sendRedirect("editar.jsp");
        
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
        
        Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
        usu.setDni(dni);
        usu.setActivo(activo);
        usu.setRol(rol);
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setEmail(email);
        usu.setContraseña(contraseña);
        
        control.editarUsuario(usu);
        
        response.sendRedirect("CRUD.jsp");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
