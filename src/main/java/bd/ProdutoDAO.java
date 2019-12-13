package bd;

import java.util.List;

public interface ProdutoDAO 
{
	public Produto insert(Produto produto);
	
	public Produto findById(Integer id);
	
	public List<Produto> findAll();
	
	public Produto update(Produto produtoNovo);
	
	public String delete(Produto produto);
}
