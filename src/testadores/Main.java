package testadores;

import analisadores.AnalisadorLexicoGen;
import analisadores.AnalisadorSintaticoGen;
import auxiliares.ArmazenadorCodigoAssembly;

import java.io.FileReader;
import java.util.List;
import java.io.File;

public class Main {

	public static void main(String[] args) {
		args = new String[1];
		args[0] = new File("").getAbsolutePath() + "/src/testadores/Teste8.java";
                
		try {
			AnalisadorLexicoGen lex = new AnalisadorLexicoGen(new FileReader(args[0]));
			AnalisadorSintaticoGen parser = new AnalisadorSintaticoGen(lex);
			parser.parse();
			ArmazenadorCodigoAssembly cod = parser.armazemCodigo;
			if(cod.isActive()){
				System.out.println("CODIGO:");
				List<String> codigo = cod.getCodeList();
				for(String s : codigo){
					System.out.println(s);
				}
			} else {
				System.out.println("Nao foi gerado codigo devido a erros");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
