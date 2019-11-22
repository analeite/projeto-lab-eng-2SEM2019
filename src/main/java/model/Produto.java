//package model;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//
//@Entity(name = "produtos")
//public class Produto {
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private Integer id;
//	
//	@Column(name = "cod_prod")
//	private int cod;
//	
//	@Column(name = "nome_prod")
//	private String nome;
//	
//	@Column(name = "tipo_prod")
//	private String tipo;
//	
//	@Column(name = "preco")
//	private String preco;
//
//
//	public Integer getId() {
//		return id;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
//	public int getCod() {
//		return cod;
//	}
//
//	public void setCod(int cod) {
//		this.cod = cod;
//	}	
//	
//	public String getNome() {
//		return nome;
//	}
//
//	public void setNome(String nome) {
//		this.nome = nome;
//	}
//
//	public String getTipo() {
//		return tipo;
//	}
//
//	public void setTipo(String tipo) {
//		this.tipo = tipo;
//	}
//
//	public String getPreco() {
//		return preco;
//	}
//
//	public void setPreco(String preco) {
//		this.preco = preco;
//	}
//
//	
//
//	@Override
//	public String toString() {
//		return "Id: " + id + ", Código: " + cod + ", Nome: " + nome + ", Tipo: " + tipo + ", Preço: "
//				+ preco;
//	}
//}