package bd;

import java.util.List;

public class ProdutoServiceImplementacao implements ProdutoService
{
	@Override
	public Produto insert(int codProduto, String nomeProduto, String tipoProduto, String precoProduto)
	{
		Produto produto = new Produto();
		produto.setCod(codProduto);
		produto.setNome(nomeProduto);
		produto.setTipo(tipoProduto);
		produto.setPreco(precoProduto);
		
		ProdutoDAO iDAO = new ProdutoDAOImplementacao();
		
		iDAO.insert(produto);
		
		return produto;
	}

	@Override
	public Produto findById(Integer id)
	{
		ProdutoDAO iDAO = new ProdutoDAOImplementacao();
		
		Produto produto = iDAO.findById(id);
		
		return produto;
	}

	@Override
	public List<Produto> findAll()
	{
		ProdutoDAO iDAO = new ProdutoDAOImplementacao();
		
		List<Produto> itens = iDAO.findAll();
		
		return itens;
	}

	@Override
	public Produto update(Produto produtoNovo)
	{
		ProdutoDAO iDAO = new ProdutoDAOImplementacao();
		
		Produto produto = iDAO.update(produtoNovo);
		
		return produto;
	}

	@Override
	public String delete(Produto produto)
	{
		ProdutoDAO iDAO = new ProdutoDAOImplementacao();
		
		String msg = iDAO.delete(produto);
		
		return msg;
	}
}