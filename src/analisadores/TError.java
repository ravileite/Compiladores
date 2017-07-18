package analisadores;

public class TError {
    String lexema, tipo, descricao;
    int linha, coluna;
    
    public TError (String lexema, int linha, int coluna, String tipo, String descricao){
        this.lexema = lexema;
        this.linha = linha;
        this.coluna = coluna;
        this.tipo = tipo;
        this.descricao = descricao;
    }
}
