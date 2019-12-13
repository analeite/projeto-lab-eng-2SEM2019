package controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class ConfirmarBusca extends HttpServlet
{    
	ProdutoServiceImplementacao produtoServicoImplementacao;
		
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
    {        
        ServletContext sc = req.getServletContext();
        try
        {
        	produtoServicoImplementacao	= new ProdutoServiceImplementacao();
        	
        	String idProduto = req.getParameter("idProduto");
        	
        	Produto produto = produtoServicoImplementacao.findById(Integer.parseInt(idProduto));
        	
        	req.setAttribute("id", produto.getId());
        	req.setAttribute("cod", produto.getCod());
        	req.setAttribute("nome", produto.getNome());
        	req.setAttribute("tipo", produto.getTipo());
        	req.setAttribute("preço", produto.getPreco());
        	
        	sc.getRequestDispatcher("/estoque/exibirBusca.jsp").forward(req, resp);            
        } 
        catch (Exception e)
        {
        	e.printStackTrace();
        	
        	try
			{
				req.getRequestDispatcher("/estoque/estoque.jsp").forward(req, resp);
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			}  
        }
    }
}