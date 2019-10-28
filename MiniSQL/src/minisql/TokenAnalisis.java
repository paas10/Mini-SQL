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
    public int columnai;
    public int columnaf;
  
    public TokenAnalisis() {
        this.produccion = "";
        this.linea = 0;
        this.columnai = 0;
        this.columnaf = 0;
    }

    public TokenAnalisis(Token token, String produccion, int linea, int columnai, int columnaf) {
        this.token = token;
        this.produccion = produccion;
        this.linea = linea;
        this.columnai = columnai;
        this.columnaf = columnaf;
    }
    
}
