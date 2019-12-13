package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class AlterarProduto extends HttpServlet
{
	ProdutoServiceImplementacao produtoServiceImplementacao;
	
	@Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
    {        
        ServletContext sc = req.getServletContext();
        try
        {
        	produtoServiceImplementacao = new ProdutoServiceImplementacao();
        	
        	Produto produto2 = new Produto();
        	produto2.setIdProduto(Integer.parseInt(req.getParameter("id").toString()));
        	produto2.setCodProduto(Integer.parseInt(req.getParameter("cod").toString()));
        	produto2.setNomeProduto(req.getParameter("nome"));
        	produto2.setTipoProduto(req.getParameter(("tipo").toString()));
        	produto2.setPrecoProduto(req.getParameter("preco").toString());
        	
        	produtoServiceImplementacao.update(produto2);
        	
        	sc.getRequestDispatcher("/jsp/estoque/gerenciar/confirmarAtualizacao.jsp").forward(req, resp);            
        } 
        catch (Exception e)
        {
        	e.printStackTrace();
        	
        	try
			{
				req.getRequestDispatcher("/jsp/estoque/gerenciar/editar.jsp").forward(req, resp);
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			} 
        }
    }
}
