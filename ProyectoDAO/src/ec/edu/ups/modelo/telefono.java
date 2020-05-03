package ec.edu.ups.modelo;

import java.io.Serializable;

public class telefono implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	public int telf_id;
	public String id_user ;
	public String numero;
	public String tipo;
	public String operadora;
	
	
	

	public int getTelf_id() {
		return telf_id;
	}




	public void setTelf_id(int telf_id) {
		this.telf_id = telf_id;
	}




	public String getId_user() {
		return id_user;
	}




	public void setId_user(String id_user) {
		this.id_user = id_user;
	}




	public String getNumero() {
		return numero;
	}




	public void setNumero(String numero) {
		this.numero = numero;
	}




	public String getTipo() {
		return tipo;
	}




	public void setTipo(String tipo) {
		this.tipo = tipo;
	}




	public String getOperadora() {
		return operadora;
	}




	public void setOperadora(String operadora) {
		this.operadora = operadora;
	}




	public telefono() {
		// TODO Auto-generated constructor stub
	}

}
