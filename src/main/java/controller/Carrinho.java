package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Carrinho extends HttpServlet {
	
	@Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp){
        
        ServletContext sc = req.getServletContext();
        
        //pega todos os produtos
        
        try{
        sc.getRequestDispatcher("/comprar/carrinho.jsp").forward(req, resp);            
        } catch (Exception e){}
    }

}
