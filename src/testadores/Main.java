package testadores;

import analisadores.AnalisadorLexicoGen;
import analisadores.AnalisadorSintaticoGen;
import java.io.FileReader;
import java.io.File;

public class Main {

	public static void main(String[] args) {
		args = new String[1];
		args[0] = new File("").getAbsolutePath() + "/src/testadores/Teste3.java";
                
		try {
			AnalisadorLexicoGen lex = new AnalisadorLexicoGen(new FileReader(args[0]));
			AnalisadorSintaticoGen parser = new AnalisadorSintaticoGen(lex);
			parser.parse();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
