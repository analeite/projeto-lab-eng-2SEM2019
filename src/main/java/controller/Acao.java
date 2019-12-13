package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bd.Produto;
import bd.ProdutoServiceImplementacao;

public class Acao extends HttpServlet {
	
	@Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        ServletContext sc = req.getServletContext();
        try{
        	sc.getRequestDispatcher("/estoque/acao/acao.jsp").forward(req, resp);            
        } catch (Exception e){}
    }
	
	@Override // CRAO
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type");
		req.setCharacterEncoding("UTF-8");
		PrintWriter writer = resp.getWriter();
		
		switch(type) {
			case "create":
				break;
			case "read":
				String from = req.getParameter("from");
//				ProdutoServiceImplementacao produtoServiceImplementacao	= new ProdutoServiceImplementacao();
//	        	ArrayList<Produto> listaProdutos = new ArrayList<Produto>();
//	        	Produto produto = produtoServiceImplementacao.findById(Integer.parseInt(from));
//	        	String json = "["+produto.getCod()+","+produto.getNome()+","+produto.getPreco()+","+produto.getTipo()+"]";
				writer.append("a");
				break;
			case "update":
				break;
			case "delete":
				break;
			default:
				break;
		}
	}
}
