/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minisql;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 *
 * @author Admin
 */
public class MiniSQL {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // Se referencia el archivo donde se encuentra definido el lexema.
        File ArchivoLexema = new File("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Lexer.flex");
        jflex.Main.generate(ArchivoLexema);
        File ArchivoCup = new File("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/LexerCup.flex");
        String[] rutaSintactico = {"-parser", "Sintax", "C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Sintax.cup"};
        
        jflex.Main.generate(ArchivoCup);
        java_cup.Main.main(rutaSintactico);
        
        Compilador Interfaz = new Compilador();
        Interfaz.setLocationRelativeTo(null);
        Interfaz.setVisible(true);
        
        Path rutaSym = Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/sym.java");
        if (Files.exists(rutaSym)) {
            Files.delete(rutaSym);
        }
        Files.move(
                Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/sym.java", args), 
                Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/sym.java", args)
        );
        
        Path rutaSin = Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Sintax.java");
        if (Files.exists(rutaSin)) {
            Files.delete(rutaSin);
        }
        Files.move(
                Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/Sintax.java", args), 
                Paths.get("C:/Users/Admin/Desktop/Mini-SQL/MiniSQL/src/minisql/Sintax.java", args)
        );
    }

}
