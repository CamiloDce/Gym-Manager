package servlets;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet(name = "SvContador", urlPatterns = {"/SvContador"})
public class SvContador extends HttpServlet {
    
    @Override
    public void init() {
        getServletContext().setAttribute("contador", 0);
    }
    


 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int contador = (int) getServletContext().getAttribute("contador");
        request.setAttribute("contador", contador);
        request.getRequestDispatcher("verContador.jsp").forward(request, response);
        
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         ServletContext context = getServletContext();
        int contador = (int) context.getAttribute("contador");

        String accion = request.getParameter("accion");

        if ("sumar".equals(accion)) {
            contador++;
        } else if ("restar".equals(accion)) {
            if (contador > 0) {
                contador--;
            }
        }

        context.setAttribute("contador", contador);
        response.sendRedirect("home.jsp");

        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
