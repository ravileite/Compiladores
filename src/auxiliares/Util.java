/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auxiliares;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author BigRon
 */
public class Util {
	
	private Map<String, Integer> tiposNumericos;
     
    public Util(){
       tiposNumericos = new HashMap<String, Integer>();
       tiposNumericos.put("double", 6);
       tiposNumericos.put("float", 5);
       tiposNumericos.put("long", 4);
       tiposNumericos.put("int", 3);
       tiposNumericos.put("short", 2);
       tiposNumericos.put("byte", 1);
    }
    
    public String verificaTiposNumericos(String type1, String type2){
       Set<String> numerics = tiposNumericos.keySet();
       if(numerics.contains(type1) && numerics.contains(type2)){
    	   return "boolean";
       } else {
    	   return "error";
       }
        
    }
    
    public String verificaExpressaoAritimetica(String type1, String type2){
        if (verificaTiposNumericos(type1, type2).equals("error")){
        	return "error";
        } else {
        	int valueType1 = tiposNumericos.get(type1);
        	int valueType2 = tiposNumericos.get(type2);
        	
        	if(valueType1 >= valueType2){
        		return type1;
        	} else {
        		return type2;
        	}
        }
    }
    
    public boolean verificaExpressaoAritimeticaSimples(String type1, String type2){
        if (verificaTiposNumericos(type1, type2).equals("error")){
        	return false;
        } else {
        	int valueType1 = tiposNumericos.get(type1);
        	int valueType2 = tiposNumericos.get(type2);
        	
        	if(valueType1 >= valueType2){
        		return true;
        	} else {
        		return false;
        	}
        }
    }
}
