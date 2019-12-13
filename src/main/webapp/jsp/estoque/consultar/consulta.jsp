<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="bd.Produto"%>

<!DOCTYPE html>

<html>
<head>
<title>Consulta</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilo.css">
</head>

<body>
	<br>
	<marquee>Livraria Shalom</marquee>
	<br>
	<form id=form01 action="ConsultaEstoque.action" method="get">
		<label for="ent_01">Produtos:</label> <input name=idProduto id=ent_01
			type="text" />
		<button name="button">Buscar</button>
	</form>
	<br>
	<table border=1>
		<tr>
			<th>Código do Produto</th>
			<th>Nome do Produto</th>
			<th>Tipo de Produto</th>
			<th>Preço</th>
		</tr>
		<c:forEach var="produto" items="${listaProdutos}">
			<tr>
				<td><input class="produto.id" value="${produto.getIdProduto()}" /></td>
				<td><input class="produto.cod"
					value="${produto.getCodProduto()}" /></td>
				<td><input class="produto.nome"
					value="${produto.getNomeProduto()}" /></td>
				<td><input class="produto.tipo"
					value="${produto.getTipoProduto()}" /></td>
				<td><input class="produto.preco"
					value="${produto.getPrecoProduto()}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>