package auxiliares;

import java.util.ArrayList;
import java.util.List;

public class ArmazenadorCodigoAssembly {
	
	private boolean ativado;
	private int currentRegister;
	private List<String> codeList;
	
	public ArmazenadorCodigoAssembly(){
		ativado = true;
		currentRegister = 0;
		codeList = new ArrayList<String>();
	}
	
	public String nextRegister(){
		String result = "t" + currentRegister;
		currentRegister++;
		return result;
	}
	
	public void addCode(String code){
		codeList.add(code);
	}
	
	public List<String> getCodeList(){
		if(ativado){
			return codeList;
		} else {
			List<String> l = new ArrayList<String>();
			l.add("CODIGO NAO FOI GERADO DEVIDO A OCORRENCIA DE ERRO");
			return l;
		}
		
	}
	
	public void desativa(){
		ativado = false;
	}
	
	

}
