/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auxiliares;

/**
 *
 * @author BigRon
 */
public class Util {
     
    public Util(){
       
    }
    
    public String verificaTiposNumericos(String type1, String type2){
        if (type1.equals(type2)){ return type1;
        }else if((type1.equals("int") &&  type2.equals("float"))
        || (type1.equals("float") &&  type2.equals("int"))){ 
        return "boolean";
        }else if((type1.equals("int") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("int"))){
        return "boolean";
        }else if((type1.equals("int") &&  type2.equals("long"))
        || (type1.equals("long") &&  type2.equals("int"))){
        return "boolean";              
        }else if((type1.equals("float") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("float"))){
        return "boolean"; 
        }else if((type1.equals("float") &&  type2.equals("long"))
        || (type1.equals("long") &&  type2.equals("float"))){
        return "boolean";      
        }else if((type1.equals("long") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("long"))){
        return "boolean";    
        }else return "error";
        
    }
    
    public String verificaExpressaoAritimetica(String type1, String type2){
        if(type1.equals("int") &&  type2.equals("int")){
            return "int";
        }else if((type1.equals("int") &&  type2.equals("float"))
        || (type1.equals("float") &&  type2.equals("int"))
        || (type1.equals("float") &&  type2.equals("float"))){ 
        return "float";
        }else if((type1.equals("int") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("int"))
        || (type1.equals("double") &&  type2.equals("double"))){
        return "double";
        }else if((type1.equals("int") &&  type2.equals("long"))
        || (type1.equals("long") &&  type2.equals("int"))
        || (type1.equals("long") &&  type2.equals("long"))){
        return "long";
        }else if((type1.equals("float") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("float"))){
        return "double"; 
         }else if((type1.equals("float") &&  type2.equals("long"))
        || (type1.equals("long") &&  type2.equals("float"))){
        return "float";
        }else if((type1.equals("long") &&  type2.equals("double"))
        || (type1.equals("double") &&  type2.equals("long"))){
        return "double"; 
        }else return "error";
    }
}
