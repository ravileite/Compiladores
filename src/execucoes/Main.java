package execucoes;

import Analisadores.AnalisadorLexicoGen;
import Analisadores.AnalisadorSintaticoGen;
import java.io.FileReader;

public class Main {

	public static void main(String[] args) {
		args = new String[1];
		args[0] = "C:/Users/JoaoFelipe/git/Compiladores/src/execucoes/testelexsin/Teste1.java";
		
		try {
			AnalisadorLexicoGen lex = new AnalisadorLexicoGen(new FileReader(args[0]));
			AnalisadorSintaticoGen parser = new AnalisadorSintaticoGen(lex);
			parser.parse();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
