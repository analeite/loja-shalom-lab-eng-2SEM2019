package bd;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="itemvenda")
public class ItemVenda
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_itemvenda")
	private Integer idItemvenda;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = { CascadeType.ALL })
	@JoinColumn(name = "id_venda")
	private Venda venda;
	
	@ManyToOne(fetch = FetchType.LAZY, cascade = { CascadeType.ALL })
	@JoinColumn(name = "id_produto")
	private Produto produto;
	
	@Column(name="qtd_itemvenda")
	private String qtdItemVenda;
	
	@Column(name="valor_itemvenda")
	private double valorItemVenda;

	public Integer getIdItemvenda()
	{
		return idItemvenda;
	}

	public void setIdItemvenda(Integer idItemvenda)
	{
		this.idItemvenda = idItemvenda;
	}

	public Venda getVenda()
	{
		return venda;
	}

	public void setVenda(Venda venda)
	{
		this.venda = venda;
	}

	public Produto getProduto()
	{
		return produto;
	}

	public void setProduto(Produto produto)
	{
		this.produto = produto;
	}

	public String getQtdItemVenda()
	{
		return qtdItemVenda;
	}

	public void setQtdItemVenda(String qtdItemVenda)
	{
		this.qtdItemVenda = qtdItemVenda;
	}

	public double getValorItemVenda()
	{
		return valorItemVenda;
	}

	public void setValorItemVenda(double valorItemVenda)
	{
		this.valorItemVenda = valorItemVenda;
	}	
}
