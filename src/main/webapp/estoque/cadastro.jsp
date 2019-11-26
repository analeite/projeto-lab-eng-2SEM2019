<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>

	<head>
		<link rel="stylesheet" href="estilos.css" />
		<title>Cadastro de Produtos</title>
		<meta charset="ISO-8859-1">
	</head>

	<body>
		<form id="form02" method="post" <!-- action="acao/acao.jsp" -->
			<fieldset>
				<legend>Cadastro de Produtos</legend>
				<input name=uid id=hidden01 type="hidden" value="xyz" />

				<label for="ent_01">Código do Produto:</label>
				<input name=nome id=ent_01 type="text" required/>
				<br/>
				<br>

				<label for="ent_01b">Nome do Produto:</label>
				<input name=senha id=ent_01b type="text" required/>
				<br/>
				<br>

				<label for="ent_01b">Preço:</label>
				<input name=senha id=ent_01b type="text" required/>
				<br/>
				<br>

				<label for="select01">Tipo de Produto:</label>
				<br/>
				<select id=select01 name="paisresidencia" size="3">
					<option value="BR">Terço</option>
					<option value="BR">Ícone de Santo</option>
					<option value="BR">Vela Artesanal</option>
				</select>
				<br/>

				<br>

				<label for="foto_pais">Insira aqui a foto do produto: </label>
				<input id=foto_pais name="arquivo" type="file">
				<br/>
				<br>
				<input type="submit" value="Enviar" />
			</fieldset>
		</form>
		<br>
		<a href="${pageContext.request.contextPath}/Estoque.action">Retornar ao Controle de Estoque</a>
		<br>
		<br>
		<a href="${pageContext.request.contextPath}/Index.action">Retornar a Página Inicial</a>
		<br/>
	</body>

	</html>