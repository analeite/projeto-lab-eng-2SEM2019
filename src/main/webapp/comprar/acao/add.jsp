<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Adicionar Produto ao Carrinho</title>
        <meta charset="ISO-8859-1">
    </head>

    <body>
        <p>Produto Adicionado ao Carrinho com Sucesso!</p>
        <a href="${pageContext.request.contextPath}/Comprar.action">Continuar Comprando</a>
        <br>
        <br>
        <a href="${pageContext.request.contextPath}/Carrinho.action">Finalizar Compra</a>
        <br>
        <br>
        <a href="${pageContext.request.contextPath}/Index.action">Retornar a Página Inicial</a>
        <br/>
    </body>

    </html>