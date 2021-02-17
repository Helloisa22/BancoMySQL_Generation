package estudos.udemy.domain;
//O JPA QUE FAZ A CONVERSA COM O BANCO ENTÃO AS ANOTAÇÕES SERVE PARA INFORMAR A
// ELE QUAIS TIPOS DE DADOS SÃO OS ATRIBUTOS

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

@Entity
public class Usuario implements Serializable {

	// Ajuda no trafego da nossa aplicação
	private static final long serialVersionUID = 1L;

	// ATRIBUTOS
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotEmpty(message = "Campo NOME é Mandatorio") //VEM DO JAVA.VALIDATION
	@Size(min = 5, max = 100, message = "O nome tem que ser no minimo 5 e no maximo 100 caracteres")
	private String nome;

	@NotEmpty(message = "Campo LOGIN é Mandatorio")
	@Size(min = 5, max = 100, message = "O nome tem que ser no minimo 5 e no maximo 100 caracteres")
	private String login;

	@NotEmpty(message = "Campo SENHA é Mandatorio")
	@Length(min = 5, max = 100, message = "O nome tem que ser no minimo 5 e no maximo 100 caracteres")
	private String senha;

	// CONSTRUTOR SEM PARAMETRO(CONSTRUTOR DA SUPER CLASSE)
	public Usuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	// CONSTRUTOR COM PARAMETROS
	public Usuario(Integer id, String nome, String login, String senha) {
		super();
		this.id = id;
		this.nome = nome;
		this.login = login;
		this.senha = senha;
	}

	// METODOS ACESSORES GETs E SETs
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	// RESH CODE(ELE PODER COMPARAR A INSTACIA DESSE OBJETO COM OUTRO ATRAVES DO ID)
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Usuario other = (Usuario) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
	}

}
