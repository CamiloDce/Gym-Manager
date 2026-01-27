package primerservlet.servlets;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "SvContador", urlPatterns = {"/SvContador"})
public class SvContador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ServletContext context = getServletContext();
        
        Integer contador = (Integer) context.getAttribute("contador");
        
        if (contador == null) {
            contador = 0;
        }
        
        String accion = request.getParameter("accion");
        
        if ("sumar".equals(accion)){
            contador++;
        }
        
        if("restar".equals(accion) && contador > 0){
            contador--;
        }
        
        context.setAttribute("contador", contador);
        
        response.sendRedirect("CRUD.jsp");       
 
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
