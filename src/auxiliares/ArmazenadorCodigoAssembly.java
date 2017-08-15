package auxiliares;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ArmazenadorCodigoAssembly {
	
	private boolean ativado;
	private int currentRegister;
	private List<String> codeList;
	private List<Integer> labels;
	private Map<Integer, LinkedList<String>> codigosRelacionais;
        private List<String> metodos;
                
	public ArmazenadorCodigoAssembly(){
		ativado = true;
		currentRegister = 0;
		codeList = new ArrayList<String>();
		labels = new ArrayList<Integer>();
		codigosRelacionais = new HashMap<Integer, LinkedList<String>>();
                metodos = new ArrayList<>();
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
	
	public int getReturnPoint() {
		int offset = 0; 
		
		for (int i = 0; i < codeList.size(); i++) {
			if (codeList.get(i).startsWith("//")) {
				offset++;
			}
		}
		
		return ((codeList.size() - offset) * 8) + 16;
	}
        
	public int getMethodLine(String nome) {
		int offset = 0;
		
		for (int i = 0; i < codeList.size(); i++) {
			if (codeList.get(i).startsWith("//")) {
				offset++;
			}
			
			if (codeList.get(i).equals(nome)) {
				return (i - offset + 1) * 8;
			}
		}
            
		return -1;
	}
	
	public boolean ehFor(){
		if(codeList.get(codeList.size()-2).equals("flag")){
			codeList.remove(codeList.size()-2);
			if(labels.isEmpty()){
				labels.add(1);
				labels.add(2);
			}else{
				labels.add(labels.get(labels.size()-1) + 1);
				labels.add(labels.get(labels.size()-1) + 1);
			}
			return true;
		}
		return false;
	}
	
	public void addCodigosRelacionais(String code){
		if(!codigosRelacionais.containsKey(labels.get(labels.size()-1))){
			codigosRelacionais.put(labels.get(labels.size()-1), new LinkedList<String>());
		}
		codigosRelacionais.get(labels.get(labels.size()-1)).add(code);
	}
        
        public String getCurrentContext() {
            for (int i = codeList.size() - 1; i >= 0; i--) {
                if (metodos.contains(codeList.get(i))) {
                    return codeList.get(i);
                }
            }
            
            return null;
        }
	
	public LinkedList<String> getCodigoRelacional(int i){
		return codigosRelacionais.get(i);
	}
	
	public int getUltimoLabel(){
		return labels.get(labels.size()-1);
	}
	
	public int getPenultimoLabel(){
		return labels.get(labels.size()-2);
	}
	
	public int removeUltimoLabel(){
		int label = labels.get(labels.size()-1);
		labels.remove(labels.size()-1);
		return label;
	}
	
	public void removeCodigoRelacional(int label){
		codigosRelacionais.remove(label);
	}
	
	public void desativa(){
		ativado = false;
	}
	
	public boolean isActive(){
		return ativado;
	}
	
        public void addMetodo(String name) {
            metodos.add(name);
        }
}
