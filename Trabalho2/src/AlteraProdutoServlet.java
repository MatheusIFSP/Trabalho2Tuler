import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;

@WebServlet("/alteraProduto")
public class AlteraProdutoServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest req,
      HttpServletResponse res)
      throws ServletException, IOException {

    req.setCharacterEncoding("UTF-8");
    Integer id = Integer.valueOf(req.getParameter("id"));
    String nome = req.getParameter("nome");
    Integer unidade = Integer.valueOf(
        req.getParameter("unidadeCompra"));
    String descricao = req.getParameter("descricao");
    Double qtd = Double.valueOf(
        req.getParameter("qtdPrevistoMes"));
    Double preco = Double.valueOf(
        req.getParameter("precoMaxComprado"));

    Banco banco = new Banco();

    Produto p = banco.buscaProdutoPeloId(id);
    p.setNome(nome);
    p.setUnidadeCompra(unidade);
    p.setDescricao(descricao);
    p.setQtdPrevistoMes(qtd);
    p.setPrecoMaxComprado(preco);

    res.sendRedirect("listaProdutos");
  }
}
