SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd "C:\Users\Wesley\Documents\NetBeansProjects2\Compiladores\src\Analisadores"
java -jar "C:\Users\Wesley\Desktop\source\java-cup-11b.jar" -expect 5 -parser AnalisadorSintaticoGen -symbols Simbolos AnalisadorSintatico.cup
:exit
