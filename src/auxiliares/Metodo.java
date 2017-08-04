package auxiliares;

import java.util.Arrays;
import java.util.Objects;

public class Metodo {
    private String nome;
    private String[] tiposDeEntrada;
    private String tipoRetorno;
	
    public Metodo(String nome, String[] tiposDeEntrada) {
        this.nome = nome;
        this.tiposDeEntrada = tiposDeEntrada;
    }
    
    public Metodo(String nome, String tipoRetorno, String[] tiposDeEntrada) {
        this.nome = nome;
        this.tipoRetorno = tipoRetorno;
        this.tiposDeEntrada = tiposDeEntrada;
    }
    
    public Metodo(String nome) {
        this.nome = nome;
        this.tiposDeEntrada = new String[0];
    }

    public String[] getTipos() {
        return tiposDeEntrada;
    }
	
    public String getNome() {
        return nome;
    }
    
    public String getTipoRetorno() {
        return tipoRetorno;
    }
    
    public void setTipoRetorno(String tipoRetorno) {
        this.tipoRetorno = tipoRetorno;
    }

    @Override
    public String toString() {
        return "Metodo{" + "nome=" + nome + ", tiposDeEntrada=" + tiposDeEntrada + ", tipoRetorno=" + tipoRetorno + '}';
    }
        
    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Metodo)) {
            return false;
        }
            
        Metodo m = (Metodo) o;
        
        if (m.nome.equals(this.nome)) {
            if (this.tiposDeEntrada.length != m.tiposDeEntrada.length) {
                return false;
            }
                
            for (int i = 0; i < this.tiposDeEntrada.length; i++) {
                if (!this.tiposDeEntrada[i].equals(m.tiposDeEntrada[i])) {
                    return false;
                }
            }
                
            return true;
        }
            
        return false;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + Objects.hashCode(this.nome);
        hash = 31 * hash + Arrays.deepHashCode(this.tiposDeEntrada);
        return hash;
    }
}
