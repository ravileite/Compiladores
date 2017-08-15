package testadores;

public class Teste3 {
	
	public static int test1(){
		return 5;
	}
	
	public static boolean test2(int a1, double b1){
		if(a1 == b1) return true;
		return false;
	}
	
	public static boolean test3(float a2, double b2){
		if (a2 > b2) return true;
		return false;
	}
	
	public static boolean test4(float a3, double b3){
		if(a3 < b3) return true;
		return false;
	}
	
	public static boolean test5(float a4, double b4){
		if(a4 != b4)return true;
		return false;
	}
	
	public static double test6(float a5, double b5){
		if(.test5(a5,b5)) return 5;
		return 5.0;
	}
	
	public static boolean test7(int a6, double b6){
		if(a6 < b6) return true;
		return false;
	}
        
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
		
		for(int i = 0; i < 10; i++){
			
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
}
