package bd;

import java.util.List;

public interface ProdutoService 
{
	public Produto insert(int codProduto, String nomeProduto, String tipoProduto, String precoProduto);
	
	public Produto findById(Integer id);
	
	public List<Produto> findAll();
	
	public Produto update(Produto produtoNovo);
	
	public String delete(Produto produto);
}
