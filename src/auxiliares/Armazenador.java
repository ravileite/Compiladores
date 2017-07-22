package auxiliares;

import java.util.ArrayList;
import java.util.List;

public class Armazenador {
    private List<Variavel> variaveis;
    
    public Armazenador() {
        this.variaveis = new ArrayList<Variavel>();
    }
    
    public void addVariavel(Variavel variavel) {
        this.variaveis.add(variavel);
    }
    
    public void addVariavel(String nome, String tipo) {
        addVariavel(new Variavel(nome, tipo));
    }
    
    public boolean containsVariavel(String nome) {
        for (Variavel var : variaveis) {
            if (var.getNome().equals(nome)) {
                return true;
            }
        }
        
        return false;
    }
}
