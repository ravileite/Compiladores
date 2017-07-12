/* Código do Usuário */

package Analisadores
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


%%

/* Regras Léxicas */

    
    
<YYINITIAL>{

    //  -- -- -- Palavras Chave -- -- -- 

    //A
		"ampersand"   {return new Symbol(Simbolos.ampersand, yycolumn, yyline, yytext());  }
        "abstract"    {return new Symbol(Simbolos.abstract, yycolumn, yyline, yytext());  }

    //B

        "boolean"     {return new Symbol(Simbolos.boolean, yycolumn, yyline, yytext());  }
        "break"       {return new Symbol(Simbolos.break, yycolumn, yyline, yytext());  }
        "byte"        {return new Symbol(Simbolos.byte, yycolumn, yyline, yytext());  }   

    //C
    
        "case"        {return new Symbol(Simbolos.case, yycolumn, yyline, yytext());  }   
        "catch"       {return new Symbol(Simbolos.catch, yycolumn, yyline, yytext());  }
        "char"        {return new Symbol(Simbolos.char, yycolumn, yyline, yytext());  }
        "class"       {return new Symbol(Simbolos.clas, yycolumn, yyline, yytext());  }
        "continue"    {return new Symbol(Simbolos.continue, yycolumn, yyline, yytext());  }

    //D

        "d"           {return new Symbol(Simbolos.d, yycolumn, yyline, yytext());  }
        "default"     {return new Symbol(Simbolos.default, yycolumn, yyline, yytext());  }
        "do"          {return new Symbol(Simbolos.do, yycolumn, yyline, yytext());  }
        "double"      {return new Symbol(Simbolos.double, yycolumn, yyline, yytext());  }

    //E

        "e"           {return new Symbol(Simbolos.e, yycolumn, yyline, yytext());  }
        "else"        {return new Symbol(Simbolos.else, yycolumn, yyline, yytext());  }
        "extends"     {return new Symbol(Simbolos.extend, yycolumn, yyline, yytext());  }

    //F

        "f"           {return new Symbol(Simbolos.f, yycolumn, yyline, yytext());  }
        "false"       {return new Symbol(Simbolos.false, yycolumn, yyline, yytext());  }
        "final"       {return new Symbol(Simbolos.final, yycolumn, yyline, yytext());  }
        "finally"     {return new Symbol(Simbolos.finally, yycolumn, yyline, yytext());  }
        "float"       {return new Symbol(Simbolos.float, yycolumn, yyline, yytext());  }
        "for"         {return new Symbol(Simbolos.for, yycolumn, yyline, yytext());  }

    //I

        "if"          {return new Symbol(Simbolos.if, yycolumn, yyline, yytext());  }
        "implements"  {return new Symbol(Simbolos.implements, yycolumn, yyline, yytext());  }
        "import"      {return new Symbol(Simbolos.impor, yycolumn, yyline, yytext());  }
        "instanceof"  {return new Symbol(Simbolos.instanceof, yycolumn, yyline, yytext());  }
        "int"         {return new Symbol(Simbolos.int, yycolumn, yyline, yytext());  }
        "interface"   {return new Symbol(Simbolos.interface, yycolumn, yyline, yytext());  }

    //L

        "l"           {return new Symbol(Simbolos.l, yycolumn, yyline, yytext());  }
        "long"        {return new Symbol(Simbolos.long, yycolumn, yyline, yytext());  }

    //N

        "native"      {return new Symbol(Simbolos.native, yycolumn, yyline, yytext());  }
        "new"         {return new Symbol(Simbolos.new, yycolumn, yyline, yytext());  }
        "null"        {return new Symbol(Simbolos.null, yycolumn, yyline, yytext());  }

    //P

        "package"     {return new Symbol(Simbolos.packag, yycolumn, yyline, yytext());  }
        "private"     {return new Symbol(Simbolos.private, yycolumn, yyline, yytext());  }
        "protected"   {return new Symbol(Simbolos.protected, yycolumn, yyline, yytext());  }
        "public"      {return new Symbol(Simbolos.public, yycolumn, yyline, yytext());  }

    //R

        "return"      {return new Symbol(Simbolos.return, yycolumn, yyline, yytext());  }

    //S

        "short"       {return new Symbol(Simbolos.short, yycolumn, yyline, yytext());  }
        "static"      {return new Symbol(Simbolos.static, yycolumn, yyline, yytext());  }
        "super"       {return new Symbol(Simbolos.super, yycolumn, yyline, yytext());  }
        "switch"      {return new Symbol(Simbolos.switch, yycolumn, yyline, yytext());  }
        "synchronized" {return new Symbol(Simbolos.synchronized, yycolumn, yyline, yytext());  }

    //T

        "this"        {return new Symbol(Simbolos.this, yycolumn, yyline, yytext());  }
        "threadsafe"  {return new Symbol(Simbolos.threadsafe, yycolumn, yyline, yytext());  }
        "throw"       {return new Symbol(Simbolos.throw, yycolumn, yyline, yytext());  }
        "transient"   {return new Symbol(Simbolos.transient, yycolumn, yyline, yytext());  }
        "true"        {return new Symbol(Simbolos.true, yycolumn, yyline, yytext());  }
        "try"         {return new Symbol(Simbolos.try, yycolumn, yyline, yytext());  }

    //W

        "while"       {return new Symbol(Simbolos.while, yycolumn, yyline, yytext());  }

    //X

        "x"           {return new Symbol(Simbolos.x, yycolumn, yyline, yytext());  }

    //  -- -- -- Caracteres -- -- -- 

    //Expressões Relacionais e Lógicas

            "&"     {return new Symbol(Simbolos.and, yycolumn, yyline, yytext());  }  
            "^"     {return new Symbol(Simbolos.xor, yycolumn, yyline, yytext());  }
            "|"     {return new Symbol(Simbolos.or, yycolumn, yyline, yytext());  }
            "<"     {return new Symbol(Simbolos.lthen, yycolumn, yyline, yytext());  }
            "<<"    {return new Symbol(Simbolos.dlthen, yycolumn, yyline, yytext());  }
            "<="    {return new Symbol(Simbolos.lequ, yycolumn, yyline, yytext());  }
            "=="    {return new Symbol(Simbolos.equequ, yycolumn, yyline, yytext());  }
            ">"     {return new Symbol(Simbolos.bthen, yycolumn, yyline, yytext());  }
            ">="    {return new Symbol(Simbolos.bequ, yycolumn, yyline, yytext());  }
            ">>="    {return new Symbol(Simbolos.bequ, yycolumn, yyline, yytext());  }
            ">>"    {return new Symbol(Simbolos.dbthen, yycolumn, yyline, yytext());  }
            ">>>"   {return new Symbol(Simbolos.tbthen, yycolumn, yyline, yytext());  }
            "%"     {return new Symbol(Simbolos.mod, yycolumn, yyline, yytext());  }

    //Sinais

            "("     {return new Symbol(Simbolos.openpar, yycolumn, yyline, yytext());  }
            ")"     {return new Symbol(Simbolos.closepar, yycolumn, yyline, yytext());  }

    //Atribuição
    
            "="    {return new Symbol(Simbolos.equ, yycolumn, yyline, yytext());  }
            "^="    {return new Symbol(Simbolos.xorequ, yycolumn, yyline, yytext());  }
            "&="    {return new Symbol(Simbolos.andequ, yycolumn, yyline, yytext());  }
            "+"		{return new Symbol(Simbolos.plus, yycolumn, yyline, yytext());  }
            "-"		{return new Symbol(Simbolos.minus, yycolumn, yyline, yytext());  }
            "+="    {return new Symbol(Simbolos.plusequ, yycolumn, yyline, yytext());  }
            "-="    {return new Symbol(Simbolos.minusequ, yycolumn, yyline, yytext());  }
            "*="    {return new Symbol(Simbolos.multequ, yycolumn, yyline, yytext());  }
            "/"		{return new Symbol(Simbolos.div, yycolumn, yyline, yytext());  }
            "/="    {return new Symbol(Simbolos.divequ, yycolumn, yyline, yytext());  }
            "%="    {return new Symbol(Simbolos.modequ, yycolumn, yyline, yytext());  }
            "|="    {return new Symbol(Simbolos.sorequ, yycolumn, yyline, yytext());  }
            "||="   {return new Symbol(Simbolos.orequ, yycolumn, yyline, yytext());  }    
            "!="    {return new Symbol(Simbolos.neequ, yycolumn, yyline, yytext());  } 

    //Operadores unários

            "!"     {return new Symbol(Simbolos.ne, yycolumn, yyline, yytext());  } 
            "++"    {return new Symbol(Simbolos.plusplus, yycolumn, yyline, yytext());  }
            "--"    {return new Symbol(Simbolos.minusminus, yycolumn, yyline, yytext());  }
            "~"    {return new Symbol(Simbolos.binneg, yycolumn, yyline, yytext());  }

    //Separadores

            "?"     {return new Symbol(Simbolos.quest, yycolumn, yyline, yytext());  }
            "["     {return new Symbol(Simbolos.openbrac, yycolumn, yyline, yytext());  }
            "]"     {return new Symbol(Simbolos.closebrac, yycolumn, yyline, yytext());  }
            "{"     {return new Symbol(Simbolos.openkeys, yycolumn, yyline, yytext());  }
            "}"     {return new Symbol(Simbolos.closekeys, yycolumn, yyline, yytext());  }
            ","     {return new Symbol(Simbolos.comma, yycolumn, yyline, yytext());  }
            ";"     {return new Symbol(Simbolos.semic, yycolumn, yyline, yytext());  }
            "."     {return new Symbol(Simbolos.dot, yycolumn, yyline, yytext());  }
            ":"     {return new Symbol(Simbolos.colon, yycolumn, yyline, yytext());  }

    //String

            "''"    {return new Symbol(Simbolos.strg, yycolumn, yyline, yytext());  }

    //Documentação

            "/*"    {return new Symbol(Simbolos.comments1, yycolumn, yyline, yytext());  }
            "/**"   {return new Symbol(Simbolos.comments2, yycolumn, yyline, yytext());  }

    //Imports
        
            "*"     {return new Symbol(Simbolos.importstar, yycolumn, yyline, yytext());  }
            
    //Special
    		"[a-zA-Z_$][a-zA-Z_$0-9]*"  {return new Symbol(Simbolos.id, yycolumn, yyline, yytext());  }
    		"[0-9]*" {return new Symbol(Simbolos.dec_digits, yycolumn, yyline, yytext());  }
    		"[0-9a-f]*" {return new Symbol(Simbolos.int_literal, yycolumn, yyline, yytext());  }
    		"[a-zA-Z0-9_$]" {return new Symbol(Simbolos.text, yycolumn, yyline, yytext());  }
}

    // ISSO AQUI EMBAIXO (ESPAÇOS E ERROS LEXICOS) NÃO SEI SE VAI PERMANECER ASSIM MAS VAMOS DEIXAR POR HORA, VAI QUE...

    //Espaços

            [ \t\n\r\f]              {/*Espacos em branco devem ser ignorados*/}

    //Erros Lexicos

            .                        {System.out.println("Erro Léxico " + yytext() + "Linha " + yyline +  "Coluna " + yycolumn);
                                     TError dados = new TError(yytext(), yyline, yycolumn, "Erro Lexico", "Simbolo nao permitido");
                                     TabelaER.add(dados);} 