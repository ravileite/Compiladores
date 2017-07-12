SET JAVA_HOME="C:Program Files\Java\jdk1.8.0_73\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd C:\Users\BigRon\Documents\NetBeansProjects\Compiladores\src\Analisadores
java -jar C:\Users\BigRon\Desktop\CUP\java-cup-11b.jar -parser Analisador_Sintatico -symbols Simbolos AnalisadorSintatico.cup
pause