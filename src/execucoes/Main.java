package execucoes;

import java.io.FileReader;

import Analisadores.ASintatico;
import Analisadores.Analisador_Lexico;

public class Main {

	public static void main(String[] args) {
		args = new String[1];
		args[0] = "C:/Users/JoaoFelipe/git/Compiladores/src/execucoes/Exemplo1.java";
		
		try {
			Analisador_Lexico lex = new Analisador_Lexico(new FileReader(args[0]));
			ASintatico parser = new ASintatico(lex);
			parser.parse();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
