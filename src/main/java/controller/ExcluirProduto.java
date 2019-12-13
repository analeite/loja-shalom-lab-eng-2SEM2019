package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class ExcluirProduto extends HttpServlet
{    
	ProdutoServiceImplementacao produtoServiceImplementacao;
	
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
    {        
        ServletContext sc = req.getServletContext();
        try
        {
        	produtoServiceImplementacao = new ProdutoServiceImplementacao();
        	
        	String id = req.getParameter("id");
        	
        	Produto produto = produtoServiceImplementacao.findById(Integer.parseInt(id));
        	
        	String msg = produtoServiceImplementacao.delete(produto);
        	
        	sc.getRequestDispatcher("/jsp/estoque/gerenciar/confirmarDelete.jsp").forward(req, resp);            
        } 
        catch (Exception e)
        {
        	e.printStackTrace();
        	
        	try
			{
				req.getRequestDispatcher("/jsp/estoque/gerenciar/gerencia.jsp").forward(req, resp);
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			} 
        }
    }
}
