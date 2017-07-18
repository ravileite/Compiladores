SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_121\bin"
SET PATH = %JAVA_HOME%;%PATH%
SET CLASSPATH = %JAVA_HOME%;
cd "%~dp0\..\analisadores"
java -jar "%~dp0\..\..\libraries\jflex-1.6.1.jar"  AnalisadorLexico.jflex
pause