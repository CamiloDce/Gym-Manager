package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import logic.Controller;
import logic.Rol;
import logic.Usuario;


@WebServlet(name = "SvEdit", urlPatterns = {"/SvEdit"})
public class SvEdit extends HttpServlet {
    Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_edit = Integer.parseInt(request.getParameter("id_editUser"));
        Usuario usu = control.traerUser(id_edit);
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("usuEdit", usu);

        response.sendRedirect("edit.jsp");
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Rol rol = Rol.valueOf(request.getParameter("rol"));
        Boolean activo = "true".equals(request.getParameter("activo"));
        

        
        Usuario usu = (Usuario) request.getSession().getAttribute("usuEdit");
        usu.setDni(dni);
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setEmail(email);
        usu.setPassword(password);
        usu.setRol(rol);
        usu.setActivo(activo);
        
        control.editUsuario(usu);
        
        
        response.sendRedirect("index.jsp");
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
