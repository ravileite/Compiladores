package auxiliares;

public class Variavel {
	
	private String tipo;
	private String nome;
	
	public Variavel(String nome, String tipo) {
		this.nome = nome;
		this.tipo = tipo;
	}

	public String getTipo() {
		return tipo;
	}
	
	public String getNome() {
		return nome;
	}
}
