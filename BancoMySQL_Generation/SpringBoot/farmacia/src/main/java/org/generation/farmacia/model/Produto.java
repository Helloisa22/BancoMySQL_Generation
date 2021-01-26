package org.generation.farmacia.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
@Table (name = "tb_produto")
public class Produto {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private long id;
	
	@NotNull
	@Size(max= 50)
	private String nome;
	
	@NotNull
	@Digits(integer = 5, fraction = 2)
	private BigDecimal valor;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getnome() {
		return nome;
	}

	public void setnome(String nome) {
		this.nome = nome;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	
}
