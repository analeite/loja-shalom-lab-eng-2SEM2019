<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="pt-br">

<head>
    <title>Produto não encontrado - Livraria Shalom</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="pt-br">

</head>

<body>
        <br>
        <form formtarget="_self" type="form" action="Index.action" method="get">
            <input name="InicioBTN" type="submit" value="Inicio"/>
        </form>
            <br>
    <h1>Produto não encontrado</h1>

    <br>
    <form formtarget="_self" type="form" action="Compra.action" method="get">
        <input name="LojaBTN" type="submit" value="Loja"/>
    </form>

    <!--a href="../../compra/compra.jsp"><button name="button">Loja</button><br /--><p>

    <form formtarget="_self" type="form" action="Estoque.action" method="get">
        <input name="estoqueBTN" type="submit" value="Estoque"/>
    </form>

</body>

</html>