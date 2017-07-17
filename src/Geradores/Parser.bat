SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd C:\Users\Wesley\Documents\NetBeansProjects\Compiladores\src\Analisadores
java -jar C:\Users\Wesley\Desktop\java-cup-11b.jar -parser ASintatico -symbols Simbolos Parser.cup
pause
