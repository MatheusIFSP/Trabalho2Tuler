<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/alteraProduto" var="linkServletAlteraProduto"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Produto</title>
</head>
<body>

    <h1>Editar Produto</h1>

    <hr>

    <form action="${linkServletAlteraProduto}" method="post">

        <input type="hidden" name="id" value="${produto.id}" />

        <p>
            Nome: <input type="text" name="nome" value="${produto.nome}" />
        </p>
        <p>
            Unidade de Compra: <input type="number" name="unidadeCompra" value="${produto.unidadeCompra}" />
        </p>
        <p>
            Descricao: <input type="text" name="descricao" value="${produto.descricao}" />
        </p>
        <p>
            Qtd Previsto Mes: <input type="number" step="0.01" name="qtdPrevistoMes" value="${produto.qtdPrevistoMes}" />
        </p>
        <p>
            Preco Maximo Comprado: <input type="number" step="0.01" name="precoMaxComprado" value="${produto.precoMaxComprado}" />
        </p>

        <input type="submit" value="Salvar" />

    </form>

    <hr>

    <a href="listaProdutos">Voltar a lista</a>

</body>
</html>