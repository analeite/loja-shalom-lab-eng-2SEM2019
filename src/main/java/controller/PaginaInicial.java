package controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaginaInicial extends HttpServlet
{    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
    {        
        ServletContext sc = req.getServletContext();
        try
        {
        sc.getRequestDispatcher("/jsp/index.jsp").forward(req, resp);            
        } 
        catch (Exception e){}
    }
}