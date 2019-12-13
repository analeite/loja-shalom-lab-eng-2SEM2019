package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.ProdutoServiceImplementacao;

public class InserirProduto extends HttpServlet
{    
	private ProdutoServiceImplementacao produtoServiceImplementacao;
	
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
    {        
    	ServletContext sc = req.getServletContext();
    	
    	try
        {        
    		produtoServiceImplementacao	= new ProdutoServiceImplementacao();
        
        	int codProduto = Integer.parseInt((req.getParameter("codProduto")));
        	String nomeProduto = req.getParameter("nomeProduto");
        	String tipoProduto = req.getParameter("tipoProduto");
        	String precoProduto = req.getParameter("precoProduto");        		
        
        	//System.out.println(nomeProduto+", "+marcaProduto+", "+tamanhoProduto+", "+quantidadeProduto+", "+precoProduto);
        	
        	produtoServiceImplementacao.insert(codProduto, nomeProduto, tipoProduto, precoProduto);
        	
        	sc.getRequestDispatcher("/jsp/estoque/gerenciar/confirmarInsercao.jsp").forward(req, resp);            
        } 
        catch (Exception e)
        {
        	e.printStackTrace();
        	
        	try
			{
        		req.getRequestDispatcher("/jsp/estoque/gerenciar/novo.jsp").forward(req, resp); 
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			}  
        }
    }
}