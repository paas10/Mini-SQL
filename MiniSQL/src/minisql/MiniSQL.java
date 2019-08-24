/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minisql;

import java.io.File;

/**
 *
 * @author Admin
 */
public class MiniSQL {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Se referencia el archivo donde se encuentra definido el lexema.
        File ArchivoLexema = new File("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Lexer.flex");
        
        jflex.Main.generate(ArchivoLexema);
        
        Compilador Interfaz = new Compilador();
        Interfaz.setLocationRelativeTo(null);
        Interfaz.setVisible(true);
    }

}
