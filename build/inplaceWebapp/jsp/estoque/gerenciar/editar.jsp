<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
    <title>Editar Produto - Livraria Shalom</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="estilo.css">
</head>

<body>
        <br>
        <br>
        <marquee>Livraria Shalom</marquee>
        <br>
        <br>
        
        <%
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            
            String id = request.getAttribute("id").toString();
            int cod = (int) request.getAttribute("cod");
            String nome = (String) request.getAttribute("nome");
            String tipo = (String) request.getAttribute("tipo");
            String preco = String.valueOf(request.getAttribute("preco"));
        %>
        
        <form id=form01 action="AlterarProduto.action" method="post">
        
            <label for="ent_01">ID:</label>
            <input name=id type="text" value="<%= id%>" />
            <br><br>
            <label for="ent_01">Código:</label>
            <input name=nome type="text" value="<%= cod%>" />
            <br><br>
            <label for="ent_01">Nome:</label>
            <input name=marca type="text" value="<%= nome%>" />
            <br><br>
            <label for="ent_01">Tipo:</label>
            <input name=tamanho type="text" value="<%= tipo%>" />
            <br><br>
            <label for="ent_01">Preço:</label>
            <input name=quantidade type="text" value="<%= preco%>" />
            <br><br>
            <button name="button">Salvar Alteracoes</button></a>
        </form>        
</body>

</html>