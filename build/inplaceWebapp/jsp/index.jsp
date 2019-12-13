<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
    <title>Livraria Shalom</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilo.css">
</head>

<body>
  
        <marquee>Livraria Shalom</marquee>
        <br>

        <form formtarget="_self" type="form" action="Estoque.action" method="get">
            <input name="estoqueBTN" type="submit" value="Estoque"/>
        </form>

        <!-- form formtarget="_self" type="form" action="Compra.action" method="get">
            <input name="CompraBTN" type="submit" value="Comprar"/>
        </form> -->
</body>
</html>