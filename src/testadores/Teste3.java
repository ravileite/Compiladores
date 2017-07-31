package testadores;

public class Teste3 {
	
	public static void main(String[] args) {
		
		Teste3 t3 = new Teste3();
		int a = 5;
		double b = a;
		float c = 10;
		double d = 11;
		int e;
		double f;
		boolean x;
		double y;
		
		for(int i = 0; i < .test1(); i++){
			
		}
		
		.test2(a,b);
		.test3(c,d);
		.test4(c,d);
		.test5(c,b);
		a = 8;
		b = 9.0;
		y = .test6(a,b);
		b = 7.5;
		f = .test6(a,b);
	}
	
	public int test1(){
		return 5;
	}
	
	public boolean test2(int a, double b){
		if(a == b) return true;
		return false;
	}
	
	public boolean test3(float a, double b){
		if (a > b) return true;
		return false;
	}
	
	public boolean test4(float a, double b){
		if(a < b) return true;
		return false;
	}
	
	public boolean test5(float a, double b){
		if(a != b)return true;
		return false;
	}
	
	public double test6(int a, double b){
		if(test5(a,b)) return 5;
		return 5.0;
	}
	
	public boolean test7(int a, double b){
		if(a < b) return true;
		return false;
	}
}
