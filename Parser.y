{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 

%left '+'

%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    ':'         { TokenColon }
    Num         { TokenNumber }
    Bool        { TokenBoolean }
    "=="        { TokenEqEq }
    "<"         { TokenLt }
    ">"         { TokenGt }
    "<="        { TokenLte }
    ">="        { TokenGte }
    leia        { TokenRead}
    escreva     { TokenPrint}
    


%%


Exp         : num                        { Num $1 }
            | true                       { BTrue }
            | false                      { BFalse }
            | Exp '+' Exp                { Add $1 $3 }
            | Exp '-' Exp                { Sub $1 $3 }
            | Exp '*' Exp                { Mul $1 $3 }
            | Exp "&&" Exp               { And $1 $3 }
            | Exp "||" Exp               { Or $1 $3 }
            | if Exp then Exp else Exp   { If $2 $4 $6 }
            | var                        { Var $1 }
            | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }
            | '(' Exp ')'                { Paren $2 }
            | let var '=' Exp in Exp     { Let $2 $4 $6 }
            | Exp "==" Exp               { EqEq $1 $3 }
            | Exp "<" Exp                { Lt $1 $3 }
            | Exp ">" Exp                { Gt $1 $3 }
            | Exp "<=" Exp               { Lte $1 $3 }
            | Exp ">=" Exp               { Gte $1 $3 }
            | leia                       { Read }
            | escreva Exp                { Print $2 }

Type    : Bool                           { TBool }
        | Num                            { TNum }
        | '(' Type "->" Type ')'         { TFun $2 $4 }


{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}