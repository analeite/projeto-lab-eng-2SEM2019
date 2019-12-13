package bd;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class ProdutoDAOImplementacao implements ProdutoDAO
{
	@Override
	public Produto insert(Produto produto)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");
		EntityManager em = emf.createEntityManager();

		try
		{
			em.getTransaction().begin();
			em.persist(produto);
			em.getTransaction().commit();
			
			em.close();
			emf.close();
			
			return produto;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		
		return null;
	}

	@Override
	public Produto findById(Integer id)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");
		EntityManager em = emf.createEntityManager();

		try
		{
			Query query = em.createQuery("SELECT p FROM produto p WHERE p.id =" + id + "");

			Produto produto = (Produto) query.getSingleResult();
			
			em.close();
			emf.close();
			
			return produto;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		

		return null;
	}

	@Override
	public List<Produto> findAll()
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");
		EntityManager em = emf.createEntityManager();

		try
		{
			Query query = em.createQuery("SELECT p FROM produto p ORDER BY p.nome_prod");
			
			List<Produto> produtos = query.getResultList();
			
			em.close();
			emf.close();
			
			return produtos;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Produto update(Produto produtoNovo)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");
		EntityManager em = emf.createEntityManager();
		
		try
		{
			Produto produtoAntigo = em.find(Produto.class, produtoNovo.getId()); 
			
	        em.getTransaction().begin();       
	        
	        produtoAntigo.setCod(produtoNovo.getCod());
	        produtoAntigo.setNome(produtoNovo.getNome()); 
	        produtoAntigo.setTipo(produtoNovo.getTipo());
	        produtoAntigo.setPreco(produtoNovo.getPreco());
	        
	        em.getTransaction().commit();
	        
	        em.close();
			emf.close();
			
			return produtoAntigo;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public String delete(Produto produto)
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");
		EntityManager em = emf.createEntityManager();
		
		try
		{
			Produto produtoADeletar = em.find(Produto.class, produto.getId());
	        em.getTransaction().begin();
	        em.remove(produtoADeletar);
	        em.getTransaction().commit();
	        
	        em.close();
			emf.close();
	        
	        return "Removido";
		}
        catch(Exception e)
		{
        	e.printStackTrace();
		}       
		
		return "";
	}
}
