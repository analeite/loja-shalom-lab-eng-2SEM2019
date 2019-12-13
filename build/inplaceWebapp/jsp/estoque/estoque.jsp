<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <title>Estoque</title>       
        <meta charset="UTF-8">
    </head>
    <body>
            <marquee>Livraria Shalom</marquee>
            <br>
            
            <form formtarget="_self" type="form" action="GerenciaProduto.action" method="get">
                <input name="gerenciaEstoqueBTN" type="submit" value="Gerenciar Estoque"/>
            </form>
    
            <form formtarget="_self" type="form" action="ConsultaEstoque.action" method="get">
                <input name="consultaEstoqueBTN" type="submit" value="Consulta Estoque"/>
            </form>
		
    </body>
</html>