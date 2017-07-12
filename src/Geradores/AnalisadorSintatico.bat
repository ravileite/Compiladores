SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd C:\Users\iaron\git\Compiladores\src\Analisadores
java -jar C:\Users\iaron\Desktop\CompilerSource\java-cup-11b.jar -parser Analisador_Sintatico -symbols Simbolos AnalisadorSintatico.cup
pause