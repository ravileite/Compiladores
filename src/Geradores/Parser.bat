SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd "C:\Users\JoaoFelipe\git\Compiladores\src\Analisadores"
java -jar "C:\Users\JoaoFelipe\Desktop\compiladoreslibrary\java-cup-11b.jar" -expect 5 -parser ASintatico -symbols Simbolos Parser.cup
pause
