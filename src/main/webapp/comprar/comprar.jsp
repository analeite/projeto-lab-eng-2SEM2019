<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>Produtos Disponíveis</title>
<meta charset="ISO-8859-1" />
<meta name="author" content="Ana Leite">
<meta name="keywords" content="entrega 01">
</head>

<body>
	<form id="form-comprar" method="GET"<%-- action="${pageContext.request.contextPath}/Adicionar.action" --%>>
		<fieldset>
			<legend>
				<b>Produtos</b>
			</legend>
			<br> <label for="ent_01">Buscar Produto:</label> <input
				name=nome id=ent_01 type="text" />
			<button>Buscar</button>
			<br> <br>
			<table frame="hsides">
				<tr>
					<th>C�digo do Produto</th>
					<th>Nome do Produto</th>
					<th>Tipo de Produto</th>
					<th>Pre�o</th>
					<th>A��es</th>
				</tr>
				<tr>
					<td>0001</td>
					<td>�cone de S�o Jos�</td>
					<td>�cone de Santo</td>
					<td>R$6,00</td>
					<td><input type="number"></input></td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Adicionar.action">Adicionar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Remover.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0002</td>
					<td>Vela de S�o Jos�</td>
					<td>Vela Artesanal</td>
					<td>R$15,00</td>
					<td><input type="number"></input></td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Adicionar.action">Adicionar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Remover.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0003</td>
					<td>Ter�o de Santa Teresinha</td>
					<td>Ter�o</td>
					<td>R$12,00</td>
					<td><input type="number"></input></td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Adicionar.action">Adicionar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Remover.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0004</td>
					<td>�cone do Esposo Eucar�stico</td>
					<td>�cone</td>
					<td>R$35,00</td>
					<td><input type="number"></input></td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Adicionar.action">Adicionar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Remover.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0005</td>
					<td>Ter�o - Rainha da Paz</td>
					<td>Ter�o</td>
					<td>R$15,00</td>
					<td><input type="number"></input></td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Adicionar.action">Adicionar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Remover.action">
							Remover</a>
					</td>
				</tr>
			</table>
			<br>
		</fieldset>
		<form>
			<br> <a
				href="${pageContext.request.contextPath}/Carrinho.action">
				Finalizar Compra </a> <br /> <br> 
				<a href="${pageContext.request.contextPath}/Index.action">Retornar
				a P�gina Inicial</a> <br />
</body>

</html>