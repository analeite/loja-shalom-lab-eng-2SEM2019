<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
    <title>Cadastrar Produto - Livraria Shalom</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilo.css">
</head>

<body>
        <br>
        <marquee>Livraria Shalom</marquee>
        <br>
        <br>
        <form class=form01 action="InserirProduto.action" method="post">
            <label>Código:</label>
            <input name=nomeProduto type="text" required />
            <br><br>
            <label>Nome:</label>
            <input name=marcaProduto type="text" required />
            <br><br>
            <label>Tipo:</label>
            <input name=tamanhoProduto type="text" required />
            <br><br>
            <label>Preço:</label>
            <input name=quantidadeProduto type="text" required />
            <br><br>
            <button name="button" type="submit">Cadastrar</button></a>
        </form>     
        
</body>
</html>