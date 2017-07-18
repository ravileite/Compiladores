SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd "%~dp0\..\analisadores"
java -jar "%~dp0\..\..\libraries\java-cup-11b.jar" -expect 5 -parser AnalisadorSintaticoGen -symbols Simbolos AnalisadorSintatico.cup
pause
