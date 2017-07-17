/* Código do Usuário */

package Analisadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/* Opções e Declarações */

%%
%{
    //Código de Sintaxe Java
    public static LinkedList<TError> TabelaER2 = new  LinkedList<TError>();

%}

    //Diretivas

%public
%class Analisador_Lexico_1
%cupsym Simbolos_1
%cup
%char
%column
%full
%ignorecase
%line
%unicode


%%

/* Regras Léxicas */

    
    
<YYINITIAL>{

    //  -- -- -- Palavras Chave -- -- -- 

    //A
        "abstract"    {return new Symbol(Simbolos.ABSTRACT, yycolumn, yyline, yytext());  }

    //B

        "boolean"     {return new Symbol(Simbolos.BOOLEAN, yycolumn, yyline, yytext());  }
        "break"       {return new Symbol(Simbolos.BREAK, yycolumn, yyline, yytext());  }
        "byte"        {return new Symbol(Simbolos.BYTE, yycolumn, yyline, yytext());  }

    //C
        "case"        {return new Symbol(Simbolos.CASE, yycolumn, yyline, yytext());  }   
        "cast"        {return new Symbol(Simbolos.CAST, yycolumn, yyline, yytext());  }
        "catch"       {return new Symbol(Simbolos.CATCH, yycolumn, yyline, yytext());  }
        "char"        {return new Symbol(Simbolos.CHAR, yycolumn, yyline, yytext());  }
        "class"       {return new Symbol(Simbolos.CLAS, yycolumn, yyline, yytext());  }
        "const"        {return new Symbol(Simbolos.CONST, yycolumn, yyline, yytext());  }
        "continue"    {return new Symbol(Simbolos.CONTINUE, yycolumn, yyline, yytext());  }

    //D
        "default"     {return new Symbol(Simbolos.DEFAULT, yycolumn, yyline, yytext());  }
        "do"          {return new Symbol(Simbolos.DO, yycolumn, yyline, yytext());  }
        "double"      {return new Symbol(Simbolos.DOUBLE, yycolumn, yyline, yytext());  }

    //E
        "else"        {return new Symbol(Simbolos.ELSE, yycolumn, yyline, yytext());  }
        "extends"     {return new Symbol(Simbolos.EXTEND, yycolumn, yyline, yytext());  }

    //F
        "final"       {return new Symbol(Simbolos.FINAL, yycolumn, yyline, yytext());  }
        "finally"     {return new Symbol(Simbolos.FINALLY, yycolumn, yyline, yytext());  }
        "float"       {return new Symbol(Simbolos.FLOAT, yycolumn, yyline, yytext());  }
        "for"         {return new Symbol(Simbolos.FOR, yycolumn, yyline, yytext());  }
        "future"        {return new Symbol(Simbolos.FUTURE, yycolumn, yyline, yytext());  }
    //G
        "generic"        {return new Symbol(Simbolos.GENERIC, yycolumn, yyline, yytext());  }
        "goto"          {return new Symbol(Simbolos.GOTO, yycolumn, yyline, yytext());  }

    //I
        "identifier"   {return new Symbol(Simbolos.IDENTIFIER, yycolumn, yyline, yytext());  }
        "if"          {return new Symbol(Simbolos.IF, yycolumn, yyline, yytext());  }
        "implements"  {return new Symbol(Simbolos.IMPLEMENTS, yycolumn, yyline, yytext());  }
        "import"      {return new Symbol(Simbolos.IMPOR, yycolumn, yyline, yytext());  }
        "inner"      {return new Symbol(Simbolos.INNER, yycolumn, yyline, yytext());  }
        "instanceof"  {return new Symbol(Simbolos.INSTANCEOF, yycolumn, yyline, yytext());  }
        "int"         {return new Symbol(Simbolos.INT, yycolumn, yyline, yytext());  }
        "interface"   {return new Symbol(Simbolos.INTERFACE, yycolumn, yyline, yytext());  }

    //L
        "literal"        {return new Symbol(Simbolos.LITERAL, yycolumn, yyline, yytext());  }
        "long"        {return new Symbol(Simbolos.LONG, yycolumn, yyline, yytext());  }

    //N

        "native"      {return new Symbol(Simbolos.NATIVE, yycolumn, yyline, yytext());  }
        "new"         {return new Symbol(Simbolos.NEW, yycolumn, yyline, yytext());  }
        "jnull"        {return new Symbol(Simbolos.JNULL, yycolumn, yyline, yytext());  }
    //O

        "operator"      {return new Symbol(Simbolos.OPERATOR, yycolumn, yyline, yytext());  }
        "outer"         {return new Symbol(Simbolos.OUTER, yycolumn, yyline, yytext());  }

    //P

        "package"     {return new Symbol(Simbolos.PACKAG, yycolumn, yyline, yytext());  }
        "private"     {return new Symbol(Simbolos.PRIVATE, yycolumn, yyline, yytext());  }
        "protected"   {return new Symbol(Simbolos.PROTECTED, yycolumn, yyline, yytext());  }
        "public"      {return new Symbol(Simbolos.PUBLIC, yycolumn, yyline, yytext());  }

    //R

        "return"      {return new Symbol(Simbolos.RETURN, yycolumn, yyline, yytext());  }
        "rest"      {return new Symbol(Simbolos.REST, yycolumn, yyline, yytext());  }

    //S
        "short"       {return new Symbol(Simbolos.SHORT, yycolumn, yyline, yytext());  }
        "static"      {return new Symbol(Simbolos.STATIC, yycolumn, yyline, yytext());  }
        "super"       {return new Symbol(Simbolos.SUPER, yycolumn, yyline, yytext());  }
        "switch"      {return new Symbol(Simbolos.SWITCH, yycolumn, yyline, yytext());  }
        "synchronized" {return new Symbol(Simbolos.SYNCHRONIZED, yycolumn, yyline, yytext());  }

    //T

        "this"        {return new Symbol(Simbolos.THIS, yycolumn, yyline, yytext());  }
        "throw"       {return new Symbol(Simbolos.THROW, yycolumn, yyline, yytext());  }
        "throws"       {return new Symbol(Simbolos.THROWS, yycolumn, yyline, yytext());  }
        "transient"   {return new Symbol(Simbolos.TRANSIENT, yycolumn, yyline, yytext());  }
        "try"         {return new Symbol(Simbolos.TRY, yycolumn, yyline, yytext());  }

    //V

        "void"        {return new Symbol(Simbolos.VOID, yycolumn, yyline, yytext());  }
        "volatile"    {return new Symbol(Simbolos.VOLATILE, yycolumn, yyline, yytext());  }
        "var"    {return new Symbol(Simbolos.VAR, yycolumn, yyline, yytext());  }

    //W

        "while"       {return new Symbol(Simbolos.WHILE, yycolumn, yyline, yytext());  }

    //X

    //  -- -- -- Caracteres -- -- -- 

    //Expressões Relacionais e Lógicas

            "&"     {return new Symbol(Simbolos.AMPER, yycolumn, yyline, yytext());  }
            "&&"     {return new Symbol(Simbolos.OP_LAND, yycolumn, yyline, yytext());  }
            "^"     {return new Symbol(Simbolos.XOR, yycolumn, yyline, yytext());  }
            "|"     {return new Symbol(Simbolos.SOR, yycolumn, yyline, yytext());  }
            "||"     {return new Symbol(Simbolos.OP_LOR, yycolumn, yyline, yytext());  }
            "<"     {return new Symbol(Simbolos.LTHEN, yycolumn, yyline, yytext());  }
            "<<"    {return new Symbol(Simbolos.OP_SHL, yycolumn, yyline, yytext());  }
            "<="    {return new Symbol(Simbolos.OP_LE, yycolumn, yyline, yytext());  }
            "<<="    {return new Symbol(Simbolos.ASS_SHL, yycolumn, yyline, yytext());  }
            ">"     {return new Symbol(Simbolos.BTHEN, yycolumn, yyline, yytext());  }
            ">="    {return new Symbol(Simbolos.OP_GE, yycolumn, yyline, yytext());  }
            ">>="    {return new Symbol(Simbolos.ASS_SHR, yycolumn, yyline, yytext());  }
            ">>"    {return new Symbol(Simbolos.OP_SHR, yycolumn, yyline, yytext());  }
            ">>>="   {return new Symbol(Simbolos.ASS_SHRR, yycolumn, yyline, yytext());  }
            ">>>"   {return new Symbol(Simbolos.OP_SHRR, yycolumn, yyline, yytext());  }
            "%"     {return new Symbol(Simbolos.MOD, yycolumn, yyline, yytext());  }
            "true"        {return new Symbol(Simbolos.BOOLLIT, yycolumn, yyline, yytext());  }   
            "false"        {return new Symbol(Simbolos.BOOLLIT, yycolumn, yyline, yytext());  }   

    //Sinais

            "("     {return new Symbol(Simbolos.OPENPAR, yycolumn, yyline, yytext());  }
            ")"     {return new Symbol(Simbolos.CLOSEPAR, yycolumn, yyline, yytext());  }
 
    //Atribuição
    
            "="     {return new Symbol(Simbolos.EQU, yycolumn, yyline, yytext());  }
            "^="    {return new Symbol(Simbolos.ASS_XOR, yycolumn, yyline, yytext());  }
            "&="    {return new Symbol(Simbolos.ASS_AND, yycolumn, yyline, yytext());  }
            "+"	    {return new Symbol(Simbolos.PLUS, yycolumn, yyline, yytext());  }
            "-"	    {return new Symbol(Simbolos.MINUS, yycolumn, yyline, yytext());  }
            "*"     {return new Symbol(Simbolos.MULT, yycolumn, yyline, yytext());  }
            "+="    {return new Symbol(Simbolos.ASS_ADD, yycolumn, yyline, yytext());  }
            "-="    {return new Symbol(Simbolos.ASS_SUB, yycolumn, yyline, yytext());  }
            "*="    {return new Symbol(Simbolos.ASS_MUL, yycolumn, yyline, yytext());  }
            "/"	    {return new Symbol(Simbolos.DIV, yycolumn, yyline, yytext());  }
            "/="    {return new Symbol(Simbolos.ASS_DIV, yycolumn, yyline, yytext());  }
            "%="    {return new Symbol(Simbolos.ASS_MOD, yycolumn, yyline, yytext());  }
            "|="    {return new Symbol(Simbolos.ASS_OR, yycolumn, yyline, yytext());  }
            "!="    {return new Symbol(Simbolos.OP_NE, yycolumn, yyline, yytext());  }
            "=="    {return new Symbol(Simbolos.OP_EQ, yycolumn, yyline, yytext());  }

    //Operadores unários

            "!"     {return new Symbol(Simbolos.NE, yycolumn, yyline, yytext());  }
            "++"    {return new Symbol(Simbolos.OP_INC, yycolumn, yyline, yytext());  }
            "--"    {return new Symbol(Simbolos.OP_DEC, yycolumn, yyline, yytext());  }
            "~"     {return new Symbol(Simbolos.TIL, yycolumn, yyline, yytext());  }

    //Separadores
            "?"     {return new Symbol(Simbolos.QUE, yycolumn, yyline, yytext());  }
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
    		"[a-zA-Z_$][a-zA-Z_$0-9]*"  {return new Symbol(Simbolos.ID, yycolumn, yyline, yytext());  }
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
