<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
<title>Compras - Livraria Shalom</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilo.css">
</head>

<body>
	<br>
	<form formtarget="_self" type="form" action="" method="get">
		<input name="InicioBTN" type="submit" value="Inicio" />
	</form>
	<br>
	<marquee>Livraria Shalom</marquee>
	<br>
	<form id=form01 action="404.jsp" method="get">
		<input name=uid id=hidden01 type="hidden" value="abc" /> <label
			for="ent_01">Produtos:</label> <input name=busca id=ent_01
			type="text" required />
		<button name="button">Buscar</button>
	</form>
	<br>
	<table>
		<tr>
			<th>Código do Produto</th>
			<th>Nome do Produto</th>
			<th>Tipo de Produto</th>
			<th>Preço</th>
			<!-- <th>Ações</th> -->
		</tr>
		<tr>
			<td>0001</td>
			<td>Ícone de São José</td>
			<td>Ícone de Santo</td>
			<td>R$6,00</td>
			<td><input type="number"></input></td>
			<td><input name=quantidade type="number" width="10">
				<button name="add">+</button>
				<button name="less">-</button></td>
		</tr>
		<tr>
			<td>0002</td>
			<td>Vela de São José</td>
			<td>Vela Artesanal</td>
			<td>R$15,00</td>
			<td><input name=quantidade type="number" id="clicks">
				<button name="add" onClick="addCount()">+</button>
				<button onclick="lessCount()" name="less">-</button></td>
		</tr>
		<tr>
			<td>0003</td>
			<td>Terço de Santa Teresinha</td>
			<td>Terço</td>
			<td>R$12,00</td>
			<td><input name=quantidade type="number">
				<button name="add">+</button>
				<button name="less">-</button></td>
		</tr>
		<tr>
			<td>0004</td>
			<td>Ícone do Esposo Eucarístico</td>
			<td>Ícone</td>
			<td>R$35,00</td>
			<td><input name=quantidade type="number">
				<button name="add">+</button>
				<button name="less">-</button></td>
		</tr>
		<tr>
			<td>0005</td>
			<td>Terço - Rainha da Paz</td>
			<td>Terço</td>
			<td>R$15,00</td>
			<td><input name=quantidade type="number">
				<button name="add">+</button>
				<button name="less">-</button></td>
		</tr>
	</table>

	<p>
	<h2>Sacola</h2>
	</p>
	<table>
		<tr>
			<th>Itens</th>
			<th>Total</th>
		</tr>
		<tr>
			<td>0</td>
			<td>R$ 0,00</td>
		</tr>
	</table>
	</br>
	<a href="confirmar.jsp">
		<button name="button">Fechar Compra</button>

	</a>
	<br>
	</p>
	<script>
var clicks = 0;
function addCount() {
        clicks += 1;
        document.getElementById("clicks").value = clicks;
    };

    function lessCount() {
        if (clicks > 1){
        clicks -= 1;
        document.getElementById("clicks").value = clicks;
        }
        
    };

</script>

</body>

</html>