/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minisql;

/**
 *
 * @author Admin
 */
public class TokenAnalisis {
    
    public Token token;
    public String produccion;
    public int linea;
    public int columna;
  
    public TokenAnalisis() {
        this.produccion = "";
        this.linea = 0;
        this.columna = 0;
    }

    public TokenAnalisis(Token token, String produccion, int linea, int columna) {
        this.token = token;
        this.produccion = produccion;
        this.linea = linea;
        this.columna = columna;
    }
    
}
