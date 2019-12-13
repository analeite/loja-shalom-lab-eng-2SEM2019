package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class EditarProduto extends HttpServlet
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
        	
        	req.setAttribute("id", produto.getIdProduto());
        	req.setAttribute("cod", produto.getCodProduto());
        	req.setAttribute("nome", produto.getNomeProduto());
        	req.setAttribute("tipo", produto.getTipoProduto());
        	req.setAttribute("preco", produto.getPrecoProduto());
        	
        	sc.getRequestDispatcher("/jsp/estoque/gerenciar/editar.jsp").forward(req, resp);                
        } 
        catch (Exception e)
        {
        	e.printStackTrace();
        	
        	try
			{
        		sc.getRequestDispatcher("/jsp/estoque/gerenciar/gerencia.jsp").forward(req, resp);
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			} 
        }
    }
}