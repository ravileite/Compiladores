/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analisadores;

/**
 *
 * @author BigRon
 */
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
