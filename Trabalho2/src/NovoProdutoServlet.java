import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("Cadastrando novo produto");
		String nomeProduto = request.getParameter("nome");
		
		Integer unidade = Integer.valueOf(request.getParameter("unidadeCompra"));
		String desc = request.getParameter("descricao");
		Double qtd = Double.valueOf(request.getParameter("qtdPrevistoMes"));
		Double preco = Double.valueOf(request.getParameter("precoMaxComprado"));
		
		Produto produto = new Produto();
		produto.setNome(nomeProduto);
		produto.setUnidadeCompra(unidade);
		produto.setDescricao(desc);
		produto.setQtdPrevistoMes(qtd);
		produto.setPrecoMaxComprado(preco);
		
		Banco banco = new Banco();
		banco.adiciona(produto);
		
		request.setAttribute("produto", produto.getNome());
		
		response.sendRedirect("listaProdutos");
	}
}
