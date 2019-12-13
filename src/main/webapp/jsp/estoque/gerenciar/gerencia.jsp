<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
    <title>Gerenciamento</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilo.css">
</head>

<body>
        <br>
        <marquee>Livraria Shalom</marquee>
        <br>

        <form formtarget="_self" type="form" action="NovoProduto.action" method="get">
            <input name="novoProdutoBTN" type="submit" value="Novo Produto"/>
        </form>

        <br>
        
         <form formtarget="_self" type="form" action="EditarProduto.action" method="get">
         	<input name="id" type="text"/>
            <input name="novoProdutoBTN" type="submit" value="Editar Produto"/>
        </form>     
        
        <br>
        
         <form formtarget="_self" type="form" action="ExcluirProduto.action" method="get">
         	<input name="id" type="text"/>
            <input name="novoProdutoBTN" type="submit" value="Excluir Produto"/>
        </form>   
        
</body>
</html>