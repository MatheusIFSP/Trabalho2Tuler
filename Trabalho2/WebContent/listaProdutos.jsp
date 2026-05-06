<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
</head>
<body>

    <h1>Lista de Produtos</h1>

    <hr>

    <a href="formNovoProduto.jsp">Cadastrar novo produto</a>

    <br /><br />

    <c:choose>
        <c:when test="${empty produtos}">
            <p>Nenhum produto cadastrado.</p>
        </c:when>
        <c:otherwise>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Unidade Compra</th>
                    <th>Descricao</th>
                    <th>Qtd Previsto Mes</th>
                    <th>Preco Max Comprado</th>
                    <th>Acoes</th>
                </tr>
                <c:forEach items="${produtos}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.nome}</td>
                        <td>${p.unidadeCompra}</td>
                        <td>${p.descricao}</td>
                        <td>${p.qtdPrevistoMes}</td>
                        <td>${p.precoMaxComprado}</td>
                        <td>
                            <a href="mostraProduto?id=${p.id}">Editar</a>
                            |
                            <a href="removeProduto?id=${p.id}">Remover</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>

    <hr>

    <a href="index.html">Voltar ao menu</a>

</body>
</html>