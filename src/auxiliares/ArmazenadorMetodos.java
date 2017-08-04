package auxiliares;

import java.util.ArrayList;
import java.util.List;

public class ArmazenadorMetodos {
    private List<Metodo> metodos;
    
    public ArmazenadorMetodos() {
        this.metodos = new ArrayList<>();
    }
    
    public void addMetodo(Metodo metodo) {
        this.metodos.add(metodo);
    }
    
    public void addMetodo(String nome, String[] tipos) {
        addMetodo(new Metodo(nome, tipos));
    }
    
    public boolean containsMetodo(String nome, String[] tiposDeEntrada) {
        for (Metodo metodo : metodos) {
            if (metodo.getNome().equals(nome)) {
                boolean result = true;
                
                if (tiposDeEntrada.length != metodo.getTipos().length) {
                    result = false;
                } else {
                    for (int i = 0; i < tiposDeEntrada.length; i++) {
                        if (!tiposDeEntrada[i].equals(metodo.getTipos()[i])) {
                            result = false;
                            break;
                        }
                    }
                }
                
                if (result) {
                    return true;
                }
            }
        }
        
        return false;
    }
    
    public boolean containsMetodo(String nome) {
        return containsMetodo(nome, new String[]{});
    }
    
    public Metodo getMetodo(String nome, String[] tiposDeEntrada){
    	for (Metodo metodo : metodos) {
            if (metodo.getNome().equals(nome)) {
                boolean result = true;
                
                if (tiposDeEntrada.length != metodo.getTipos().length) {
                    result = false;
                } else {
                    for (int i = 0; i < tiposDeEntrada.length; i++) {
                        if (!tiposDeEntrada[i].equals(metodo.getTipos()[i])) {
                            result = false;
                            break;
                        }
                    }
                }
                
                if (result) {
                    return metodo;
                }
            }
        }
    	
    	return null;
    }
    
    public Metodo getMetodoPossivel(String nome, String[] tiposDeEntrada) {
        for (Metodo metodo : metodos) {
            if (metodo.getNome().equals(nome)) {
                boolean result = true;
                
                if (tiposDeEntrada.length != metodo.getTipos().length) {
                    result = false;
                } else {
                    for (int i = 0; i < tiposDeEntrada.length; i++) {
                        Util util = new Util();
                        System.out.println("Entrou aqui por2 : " + metodo.getTipos()[i]);
                        if (!util.verificaExpressaoAritimeticaSimples(metodo.getTipos()[i], tiposDeEntrada[i])) {
                            System.out.println("Entrou aqui por: " + metodo.getTipos()[i]);
                                result = false;
                                break;
                        }
                    }
                    
                    if (result) return metodo;
                }
            }
        }
        
        return null;
    }

    @Override
    public String toString() {
        return "ArmazenadorMetodos{" + "metodos=" + metodos + '}';
    }
    
    
}
