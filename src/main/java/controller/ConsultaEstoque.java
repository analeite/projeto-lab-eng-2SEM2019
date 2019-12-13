package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class ConsultaEstoque extends HttpServlet
{    
	private ProdutoServiceImplementacao produtoServiceImplementacao;
	private static List<Produto> listaProdutos;
	
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
    {        
    	ServletContext sc = req.getServletContext();
        try
        {
        	produtoServiceImplementacao	= new ProdutoServiceImplementacao();
        	
        	listaProdutos = new ArrayList<Produto>();
        	
        	String idProdutos = req.getParameter("idProduto");
        	
        	if(idProdutos.isEmpty())
        	{
        		listaProdutos = produtoServiceImplementacao.findAll();            	
        	}
        	else
        	{
        		String[] ids = idProdutos.split(";");
            	
            	for(String i: ids)
            	{
            		Produto produtoPesquisado = produtoServiceImplementacao.findById(Integer.parseInt(i));
                	
            		listaProdutos.add(produtoPesquisado);
            	}
        	}
        	
        	req.setAttribute("listaProdutos", listaProdutos);
        	
        	sc.getRequestDispatcher("/jsp/estoque/consultar/consulta.jsp").forward(req, resp);             
        } 
        catch (Exception e)
        {               	
        	try
			{
				req.getRequestDispatcher("/jsp/estoque/consultar/consulta.jsp").forward(req, resp);    
			} 
        	catch (ServletException | IOException e1)
			{
        		e1.printStackTrace();
			}  
        }
    }
} 