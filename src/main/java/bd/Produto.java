package bd;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="produto")
public class Produto
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_prod")
	private Integer idProduto;
	
	@Column(name="cod_prod")
	private int codProduto;
	
	@Column(name="nome_prod")
	private String nomeProduto;
	
	@Column(name="tipo_prod")
	private String tipoProduto;
	
	@Column(name="preco_prod")
	private String precoProduto;

	public Integer getIdProduto()
	{
		return idProduto;
	}

	public void setIdProduto(Integer idProduto)
	{
		this.idProduto = idProduto;
	}

	public int getCodProduto()
	{
		return codProduto;
	}

	public void setCodProduto(int codProduto)
	{
		this.codProduto = codProduto;
	}

	public String getNomeProduto()
	{
		return nomeProduto;
	}

	public void setNomeProduto(String nomeProduto)
	{
		this.nomeProduto = nomeProduto;
	}

	public String getTipoProduto()
	{
		return tipoProduto;
	}

	public void setTipoProduto(String tipoProduto)
	{
		this.tipoProduto = tipoProduto;
	}

	public String getPrecoProduto()
	{
		return precoProduto;
	}

	public void setPrecoProduto(String precoProduto2)
	{
		this.precoProduto = precoProduto2;
	}	
}
