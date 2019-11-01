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

		<fieldset>
			<legend>
				<b>Produtos</b>
			</legend>
			<br>
			<label for="ent_01">Buscar Produto:</label>
			<input name=nome id=ent_01 type="text" />
			<button>Buscar</button>
			<br>
			<br>
			<table frame="hsides">
				<tr>
					<th> Código do Produto </th>
					<th> Nome do Produto </th>
					<th> Tipo de Produto </th>
					<th> Preço </th>
					<th> Ações </th>
				</tr>
				<tr>
					<td>0001</td>
					<td>Ícone de São José</td>
					<td>Ícone de Santo</td>
					<td>R$6,00</td>
					<td>
						<input type="number"></input>
					</td>
					<td>
						<a href="acao/add.jsp">Adicionar</a>
					</td>
					<td>
						<a href="acao/remover.jsp">Remover</a>
					</td>
				</tr>
				<tr>
					<td>0002</td>
					<td>Vela de São José</td>
					<td>Vela Artesanal</td>
					<td>R$15,00</td>
					<td>
						<input type="number"></input>
					</td>
					<td>
						<a href="acao/add.jsp">Adicionar</a>
					</td>
					<td>
						<a href="acao/remover.jsp">Remover</a>
					</td>
				</tr>
				<tr>
					<td>0003</td>
					<td>Terço de Santa Teresinha</td>
					<td>Terço</td>
					<td>R$12,00</td>
					<td>
						<input type="number"></input>
					</td>
					<td>
						<a href="acao/add.jsp">Adicionar</a>
					</td>
					<td>
						<a href="acao/remover.jsp">Remover</a>
					</td>
				</tr>
				<tr>
					<td>0004</td>
					<td>Ícone do Esposo Eucarístico</td>
					<td>Ícone</td>
					<td>R$35,00</td>
					<td>
						<input type="number"></input>
					</td>
					<td>
						<a href="acao/add.jsp">Adicionar</a>
					</td>
					<td>
						<a href="acao/remover.jsp">Remover</a>
					</td>
				</tr>
				<tr>
					<td>0005</td>
					<td>Terço - Rainha da Paz</td>
					<td>Terço</td>
					<td>R$15,00</td>
					<td>
						<input type="number"></input>
					</td>
					<td>
						<a href="acao/add.jsp">Adicionar</a>
					</td>
					<td>
						<a href="acao/remover.jsp">Remover</a>
					</td>
				</tr>
			</table>
			<br>
		</fieldset>
		<br>
		<a href="carrinho.jsp"> Finalizar Compra </a>
		<br/>
		<br>
		<a href="../index.jsp">Retornar a Página Inicial</a>
		<br/>
	</body>

	</html>