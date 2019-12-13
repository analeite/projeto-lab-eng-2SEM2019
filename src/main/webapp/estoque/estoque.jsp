<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<title>Controle de Estoque</title>
<meta charset="ISO-8859-1" />
<meta name="author" content="Ana Leite">
<meta name="keywords" content="entrega 01">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
  		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  		crossorigin="anonymous"></script>
<script src="mainCrud.js"></script>
</head>

<body>

	<form class=baseForm action="ConfirmarBusca.action" method="get">
		<label class="formLabel"> ID do Produto: <input
			name="idProduto" type="text" required class="formInput formTextInput">
		</label> <input onclick="crudGet()" type="submit" value="Pesquisar" class="submitButton">
		
	</form>

<%-- 	<button type="submit"
		formaction="${pageContext.request.contextPath}/ConfirmarBusca.action">Confirmar
		Busca</button> --%>


	<!-- <form id="form-estoque" method="GET">
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
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Editar.action">Editar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Excluir.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0002</td>
					<td>Vela de S�o Jos�</td>
					<td>Vela Artesanal</td>
					<td>R$15,00</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Editar.action">Editar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Excluir.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0003</td>
					<td>Ter�o de Santa Teresinha</td>
					<td>Ter�o</td>
					<td>R$12,00</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Editar.action">Editar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Excluir.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0004</td>
					<td>�cone do Esposo Eucar�stico</td>
					<td>�cone</td>
					<td>R$35,00</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Editar.action">Editar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Excluir.action">
							Remover</a>
					</td>
				</tr>
				<tr>
					<td>0005</td>
					<td>Ter�o - Rainha da Paz</td>
					<td>Ter�o</td>
					<td>R$15,00</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Editar.action">Editar</button>
					</td>
					<td>
						<button type="submit"
							formaction="${pageContext.request.contextPath}/Excluir.action">
							Remover</a>
					</td>
				</tr>
			</table>
			<br>
		</fieldset>
	</form>
	<br>
	<a href="${pageContext.request.contextPath}/Cadastro.action"> Cadastro de Produto </a>
	<br />
	<br>
	<a href="${pageContext.request.contextPath}/Index.action">Retornar
		a P�gina Inicial</a>
	<br /> -->
</body>

</html>