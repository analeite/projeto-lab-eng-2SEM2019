<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Projeto de Lab. de Engenharia</title>
    <meta charset="ISO-8859-1" />
    <meta name="author" content="Ana Leite">
    <meta name="keywords" content="entrega 01">
</head>

<body>
    <div class='linha'>
        <div class='coluna'>
            <fieldset>
                <legend>
                    <b>Página Principal</b>
                </legend>
                <a href="${pageContext.request.contextPath}/Estoque.action"> Controle de Estoque </a>
                <br/>
                <br>
                <a href="${pageContext.request.contextPath}/Comprar.action"> Comprar Produto </a>
                <br/>
            </fieldset>
        </div>
    </div>
</body>

</html>