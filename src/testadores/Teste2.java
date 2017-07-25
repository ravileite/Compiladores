package testadores;

public class Teste2 {
	
	public void test1(){
		int a = 5;		
		a = 3;
                
	}
	
	public int test2(){
		int x = 0;
		for(int i = 0; i < 3; i++){
			x = x + 1;
		}
		
		return x;
	}
	
        public int test3() throws RuntimeException {
            return 10;
        }
}
