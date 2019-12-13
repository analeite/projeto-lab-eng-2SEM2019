<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- 	<%
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            
            String id = request.getAttribute("id").toString();
            int cod_prod = (int) request.getAttribute("codigo");
            String nome_prod = (String) request.getAttribute("nome");
            String tipo_prod = (String) request.getAttribute("tipo");
            String preco_prod = String.valueOf(request.getAttribute("preco"));
            
            out.print("<p> Produto Pesquisado em Estoque</p>");
            
            out.print("<p> ID: </p>");
            out.print("<p>" + id + "</p>");
            
            out.print("<p> Codigo: </p>");
            out.print("<p>" + cod_prod + "</p>");
            
            out.print("<p> Nome: </p>");
            out.print("<p>" + nome_prod + "</p>");
            
            out.print("<p> Tipo: </p>");
            out.print("<p>" + tipo_prod + "</p>");
            
            out.print("<p> Preco Unitario: </p>");
            out.print("<p>" + preco_prod + "</p>");
        %> --%>

	<form id=form01 action="ConsultaEstoque.action" method="get">
		<label for="ent_01">Produtos:</label> <input name=idProduto id=ent_01
			type="text" />
		<button name="button">Buscar</button>
	</form>
	<br>
	<table border=1>
		<tr>
			<th>ID</th>
			<th>Código</th>
			<th>Nome</th>
			<th>Tipo</th>
			<th>Preco</th>
		</tr>
		<c:forEach var="produto" items="${listaProdutos}">
			<tr>
				<td><input class="produto.id" value="${produto.getIdProduto()}" /></td>
				<td><input class="produto.cod"
					value="${produto.getCod()}" /></td>
				<td><input class="produto.nome"
					value="${produto.getNome()}" /></td>
				<td><input class="produto.Tipo"
					value="${produto.getTipo()}" /></td>
				<td><input class="produto.preco"
					value="${produto.getPreco()}" /></td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>