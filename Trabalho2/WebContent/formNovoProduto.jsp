<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novoProduto" var="linkServletNovoProduto"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Produto</title>
</head>
<body>

    <h1>Cadastrar Novo Produto</h1>

    <hr>

    <form action="${linkServletNovoProduto}" method="post">

        <p>
            Nome: <input type="text" name="nome" />
        </p>
        <p>
            Unidade de Compra: <input type="number" name="unidadeCompra" />
        </p>
        <p>
            Descricao: <input type="text" name="descricao" />
        </p>
        <p>
            Qtd Previsto Mes: <input type="number" step="0.01" name="qtdPrevistoMes" />
        </p>
        <p>
            Preco Maximo Comprado: <input type="number" step="0.01" name="precoMaxComprado" />
        </p>

        <input type="submit" value="Cadastrar" />

    </form>

    <hr>

    <a href="index.html">Voltar ao menu</a>

</body>
</html>