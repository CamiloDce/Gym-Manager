package servlets;

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
import logic.Controller;
import logic.Rol;
import logic.Usuario;

@WebServlet(name = "SvLogout", urlPatterns = {"/logout"})
public class SvLogout extends HttpServlet {
    
Controller control = new Controller();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession(false);
        if (sesion != null){
            sesion.invalidate();
        }
        
        response.sendRedirect("index.jsp");

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
