<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
<title>Compra Realizada - Livraria Shalom</title>
<link rel="stylesheet" href="estilo.css">
<meta charset="UTF-8">
</head>
<body>
	<br>
	<form formtarget="_self" type="form" action="Index.action" method="get">
		<input name="InicioBTN" type="submit" value="Inicio" />
	</form>
	<br>
	<marquee>Livraria Shalom</marquee>
	<br>
	<h1>Compra realizada com sucesso!</h1>

	<table>
		<tr>
			<th>Código do Produto</th>
			<th>Nome do Produto</th>
			<th>Tipo de Produto</th>
			<th>Preço</th>
		</tr>
		<tr>
			<td>0001</td>
			<td>Ícone de São José</td>
			<td>Ícone de Santo</td>
			<td>R$6,00</td>
			<td>3</td>
		</tr>
	</table>
	<br>
	<br>
	<form formtarget="_self" type="form" action="Compra.action"
		method="get">
		<input name="compraBTN" type="submit" value="Loja" />
	</form>

</body>

</html>