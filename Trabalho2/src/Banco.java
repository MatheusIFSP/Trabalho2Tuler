import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {
	private static List<Produto> lista = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
	    Produto p1 = new Produto();
	    p1.setId(chaveSequencial++);
	    p1.setNome("Caneta Azul");
	    p1.setUnidadeCompra(100);
	    p1.setDescricao("Caneta esferográfica");
	    p1.setQtdPrevistoMes(500.0);
	    p1.setPrecoMaxComprado(1.50);
	    lista.add(p1);
	  }
	
	public void adiciona(Produto produto) {
	    produto.setId(Banco.chaveSequencial++);
	    Banco.lista.add(produto);
	  }
	
	public List<Produto> getProdutos() {
	    return Banco.lista;
	  }
	
	public void removeProduto(Integer id) {
	    Iterator<Produto> it = lista.iterator();
	    while (it.hasNext()) {
	      if (it.next().getId().equals(id))
	        it.remove();
	    }
	  }

	  public Produto buscaProdutoPeloId(Integer id) {
	    for (Produto p : lista)
	      if (p.getId().equals(id)) return p;
	    return null;
	  }
	}

