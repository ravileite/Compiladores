/* Código do Usuário */

package Analisadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/* Opções e Declarações */

%%
%{
    //Código de Sintaxe Java
    public static LinkedList<TError> TabelaER = new  LinkedList<TError>();

%}

    //Diretivas

%public
%class Analisador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

Identifier = [a-zA-Z_][a-zA-Z_0-9]*


%%

/* Regras Léxicas */

    
    
<YYINITIAL>{

    //  -- -- -- Palavras Chave -- -- -- 

    //A
        "ampersand"   {return new Symbol(Simbolos.AMPERSAND, yycolumn, yyline, yytext());  }
        "abstract"    {return new Symbol(Simbolos.ABSTRACT, yycolumn, yyline, yytext());  }

    //B

        "boolean"     {return new Symbol(Simbolos.BOOLEAN, yycolumn, yyline, yytext());  }
        "break"       {return new Symbol(Simbolos.BREAK, yycolumn, yyline, yytext());  }
        "byte"        {return new Symbol(Simbolos.BYTE, yycolumn, yyline, yytext());  }   

    //C
    
        "case"        {return new Symbol(Simbolos.CASE, yycolumn, yyline, yytext());  }   
        "catch"       {return new Symbol(Simbolos.CATCH, yycolumn, yyline, yytext());  }
        "char"        {return new Symbol(Simbolos.CHAR, yycolumn, yyline, yytext());  }
        "class"       {return new Symbol(Simbolos.CLAS, yycolumn, yyline, yytext());  }
        "continue"    {return new Symbol(Simbolos.CONTINUE, yycolumn, yyline, yytext());  }

    //D

        "d"           {return new Symbol(Simbolos.D, yycolumn, yyline, yytext());  }
        "default"     {return new Symbol(Simbolos.DEFAULT, yycolumn, yyline, yytext());  }
        "do"          {return new Symbol(Simbolos.DO, yycolumn, yyline, yytext());  }
        "double"      {return new Symbol(Simbolos.DOUBLE, yycolumn, yyline, yytext());  }

    //E

        "e"           {return new Symbol(Simbolos.E, yycolumn, yyline, yytext());  }
        "else"        {return new Symbol(Simbolos.ELSE, yycolumn, yyline, yytext());  }
        "extends"     {return new Symbol(Simbolos.EXTEND, yycolumn, yyline, yytext());  }

    //F

        "f"           {return new Symbol(Simbolos.F, yycolumn, yyline, yytext());  }
        "false"       {return new Symbol(Simbolos.FALSE, yycolumn, yyline, yytext());  }
        "final"       {return new Symbol(Simbolos.FINAL, yycolumn, yyline, yytext());  }
        "finally"     {return new Symbol(Simbolos.FINALLY, yycolumn, yyline, yytext());  }
        "float"       {return new Symbol(Simbolos.FLOAT, yycolumn, yyline, yytext());  }
        "for"         {return new Symbol(Simbolos.FOR, yycolumn, yyline, yytext());  }

    //I

        "if"          {return new Symbol(Simbolos.IF, yycolumn, yyline, yytext());  }
        "implements"  {return new Symbol(Simbolos.IMPLEMENTS, yycolumn, yyline, yytext());  }
        "import"      {return new Symbol(Simbolos.IMPOR, yycolumn, yyline, yytext());  }
        "instanceof"  {return new Symbol(Simbolos.INSTANCEOF, yycolumn, yyline, yytext());  }
        "int"         {return new Symbol(Simbolos.INT, yycolumn, yyline, yytext());  }
        "interface"   {return new Symbol(Simbolos.INTERFACE, yycolumn, yyline, yytext());  }

    //L

        "l"           {return new Symbol(Simbolos.L, yycolumn, yyline, yytext());  }
        "long"        {return new Symbol(Simbolos.LONG, yycolumn, yyline, yytext());  }

    //N

        "native"      {return new Symbol(Simbolos.NATIVE, yycolumn, yyline, yytext());  }
        "new"         {return new Symbol(Simbolos.NEW, yycolumn, yyline, yytext());  }
        "null"        {return new Symbol(Simbolos.NULL, yycolumn, yyline, yytext());  }

    //P

        "package"     {return new Symbol(Simbolos.PACKAG, yycolumn, yyline, yytext());  }
        "private"     {return new Symbol(Simbolos.PRIVATE, yycolumn, yyline, yytext());  }
        "protected"   {return new Symbol(Simbolos.PROTECTED, yycolumn, yyline, yytext());  }
        "public"      {return new Symbol(Simbolos.PUBLIC, yycolumn, yyline, yytext());  }

    //R

        "return"      {return new Symbol(Simbolos.RETURN, yycolumn, yyline, yytext());  }

    //S

        "short"       {return new Symbol(Simbolos.SHORT, yycolumn, yyline, yytext());  }
        "static"      {return new Symbol(Simbolos.STATIC, yycolumn, yyline, yytext());  }
        "super"       {return new Symbol(Simbolos.SUPE, yycolumn, yyline, yytext());  }
        "switch"      {return new Symbol(Simbolos.SWITCH, yycolumn, yyline, yytext());  }
        "synchronized" {return new Symbol(Simbolos.SYNCHRONIZED, yycolumn, yyline, yytext());  }

    //T

        "this"        {return new Symbol(Simbolos.THIS, yycolumn, yyline, yytext());  }
        "threadsafe"  {return new Symbol(Simbolos.THREADSAFE, yycolumn, yyline, yytext());  }
        "throw"       {return new Symbol(Simbolos.THROW, yycolumn, yyline, yytext());  }
        "transient"   {return new Symbol(Simbolos.TRANSIENT, yycolumn, yyline, yytext());  }
        "true"        {return new Symbol(Simbolos.TRUE, yycolumn, yyline, yytext());  }
        "try"         {return new Symbol(Simbolos.TRY, yycolumn, yyline, yytext());  }

    //W

        "while"       {return new Symbol(Simbolos.WHILE, yycolumn, yyline, yytext());  }

    //X

        "x"           {return new Symbol(Simbolos.X, yycolumn, yyline, yytext());  }

    //  -- -- -- Caracteres -- -- -- 

    //Expressões Relacionais e Lógicas

            "&"     {return new Symbol(Simbolos.AND, yycolumn, yyline, yytext());  }  
            "^"     {return new Symbol(Simbolos.XOR, yycolumn, yyline, yytext());  }
            "|"     {return new Symbol(Simbolos.OR, yycolumn, yyline, yytext());  }
            "<"     {return new Symbol(Simbolos.LTHEN, yycolumn, yyline, yytext());  }
            "<<"    {return new Symbol(Simbolos.DLTHEN, yycolumn, yyline, yytext());  }
            "<="    {return new Symbol(Simbolos.LEQU, yycolumn, yyline, yytext());  }
            "=="    {return new Symbol(Simbolos.EQUEQU, yycolumn, yyline, yytext());  }
            ">"     {return new Symbol(Simbolos.BTHEN, yycolumn, yyline, yytext());  }
            ">="    {return new Symbol(Simbolos.BEQU, yycolumn, yyline, yytext());  }
            ">>="    {return new Symbol(Simbolos.DBEQU, yycolumn, yyline, yytext());  }
            ">>"    {return new Symbol(Simbolos.DBTHEN, yycolumn, yyline, yytext());  }
            ">>>"   {return new Symbol(Simbolos.TBTHEN, yycolumn, yyline, yytext());  }
            "%"     {return new Symbol(Simbolos.MOD, yycolumn, yyline, yytext());  }

    //Sinais

            "("     {return new Symbol(Simbolos.OPENPAR, yycolumn, yyline, yytext());  }
            ")"     {return new Symbol(Simbolos.CLOSEPAR, yycolumn, yyline, yytext());  }

    //Atribuição
    
            "="     {return new Symbol(Simbolos.EQU, yycolumn, yyline, yytext());  }
            "^="    {return new Symbol(Simbolos.XOREQU, yycolumn, yyline, yytext());  }
            "&="    {return new Symbol(Simbolos.ANDEQU, yycolumn, yyline, yytext());  }
            "+"	    {return new Symbol(Simbolos.PLUS, yycolumn, yyline, yytext());  }
            "-"	    {return new Symbol(Simbolos.MINUS, yycolumn, yyline, yytext());  }
            "*"     {return new Symbol(Simbolos.MULT, yycolumn, yyline, yytext());  }
            "+="    {return new Symbol(Simbolos.PLUSEQU, yycolumn, yyline, yytext());  }
            "-="    {return new Symbol(Simbolos.MINUSEQU, yycolumn, yyline, yytext());  }
            "*="    {return new Symbol(Simbolos.MULTEQU, yycolumn, yyline, yytext());  }
            "/"	    {return new Symbol(Simbolos.DIV, yycolumn, yyline, yytext());  }
            "/="    {return new Symbol(Simbolos.DIVEQU, yycolumn, yyline, yytext());  }
            "%="    {return new Symbol(Simbolos.MODEQU, yycolumn, yyline, yytext());  }
            "|="    {return new Symbol(Simbolos.SOREQU, yycolumn, yyline, yytext());  }
            "||="   {return new Symbol(Simbolos.OREQU, yycolumn, yyline, yytext());  }    
            "!="    {return new Symbol(Simbolos.NEEQU, yycolumn, yyline, yytext());  } 

    //Operadores unários

            "!"     {return new Symbol(Simbolos.NE, yycolumn, yyline, yytext());  } 
            "++"    {return new Symbol(Simbolos.PLUSPLUS, yycolumn, yyline, yytext());  }
            "--"    {return new Symbol(Simbolos.MINUSMINUS, yycolumn, yyline, yytext());  }
            "~"     {return new Symbol(Simbolos.BINNEG, yycolumn, yyline, yytext());  }

    //Separadores

            "?"     {return new Symbol(Simbolos.QUEST, yycolumn, yyline, yytext());  }
            "["     {return new Symbol(Simbolos.OPENBRAC, yycolumn, yyline, yytext());  }
            "]"     {return new Symbol(Simbolos.CLOSEBRAC, yycolumn, yyline, yytext());  }
            "{"     {return new Symbol(Simbolos.OPENKEYS, yycolumn, yyline, yytext());  }
            "}"     {return new Symbol(Simbolos.CLOSEKEYS, yycolumn, yyline, yytext());  }
            ","     {return new Symbol(Simbolos.COMMA, yycolumn, yyline, yytext());  }
            ";"     {return new Symbol(Simbolos.SEMIC, yycolumn, yyline, yytext());  }
            "."     {return new Symbol(Simbolos.DOT, yycolumn, yyline, yytext());  }
            ":"     {return new Symbol(Simbolos.COLON, yycolumn, yyline, yytext());  }

    //String

            "''"    {return new Symbol(Simbolos.STRG, yycolumn, yyline, yytext());  }

    //Documentação

            "/*"    {return new Symbol(Simbolos.COMMENTS1, yycolumn, yyline, yytext());  }
            "/**"   {return new Symbol(Simbolos.COMMENTS2, yycolumn, yyline, yytext());  }

    //Special
    		{Identifier}  {return new Symbol(Simbolos.ID, yycolumn, yyline, yytext());  }
    		"[0-9]*" {return new Symbol(Simbolos.DEC_DIGITS, yycolumn, yyline, yytext());  }
    		"[0-9a-f]*" {return new Symbol(Simbolos.INT_LITERAL, yycolumn, yyline, yytext());  }
    		"[a-zA-Z0-9_$]" {return new Symbol(Simbolos.TEXT, yycolumn, yyline, yytext());  }
}

    // ISSO AQUI EMBAIXO (ESPAÇOS E ERROS LEXICOS) NÃO SEI SE VAI PERMANECER ASSIM MAS VAMOS DEIXAR POR HORA, VAI QUE...

    //Espaços

            [ \t\n\r\f]              {/*Espacos em branco devem ser ignorados*/}

    //Erros Lexicos

            .                        {System.out.println("Erro Léxico " + yytext() + "Linha " + yyline +  "Coluna " + yycolumn);
                                     TError dados = new TError(yytext(), yyline, yycolumn, "Erro Lexico", "Simbolo nao permitido");
                                     TabelaER.add(dados);} 
