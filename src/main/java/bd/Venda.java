package bd;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="venda")
public class Venda
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_venda")
	private Integer idVenda;
	
	@Column(name="data_venda")
	private Date dataVenda;
	
	@Column(name="valor_venda")
	private double valorVenda;

	public Integer getIdVenda()
	{
		return idVenda;
	}

	public void setIdVenda(Integer idVenda)
	{
		this.idVenda = idVenda;
	}

	public Date getDataVenda()
	{
		return dataVenda;
	}

	public void setDataVenda(Date dataVenda)
	{
		this.dataVenda = dataVenda;
	}

	public double getValorVenda()
	{
		return valorVenda;
	}

	public void setValorVenda(double valorVenda)
	{
		this.valorVenda = valorVenda;
	}	
}
