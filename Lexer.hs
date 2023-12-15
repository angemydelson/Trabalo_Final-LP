module Lexer where

import Data.Char

data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | And Expr Expr
          | Or Expr Expr
          | If Expr Expr Expr
          | EqEq Expr Expr
          | Lt Expr Expr
          | Gt Expr Expr
          | Lte Expr Expr
          | Gte Expr Expr
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr
          | Read 
          | Print Expr
          
          deriving Show

data Ty = TBool
        | TNum
        | TFun Ty Ty


        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse
           | TokenNum Int
           | TokenAdd
           | TokenSub
           | TokenMul
           | TokenAnd
           | TokenOr
           | TokenIf
           | TokenThen
           | TokenElse
           | TokenEqEq
           | TokenLt
           | TokenGt
           | TokenLte
           | TokenGte
           | TokenVar String
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet
           | TokenEq
           | TokenIn
           | TokenColon
           | TokenBoolean
           | TokenNumber
           | TokenRead
           | TokenPrint

           deriving (Show, Eq)

-- símbolos disponíveis na linguagem (+ e &&)
isSymb :: Char -> Bool
isSymb c = c `elem` "+-*&|\\->()=:<,;#<>"

-- função que lê caracteres e reconhece símbolos válidos da linguagem
lexer :: String -> [Token]
lexer [] = []
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
-- quando for espaço, ignora e chama mesma função
lexer (c:cs) | isSpace c = lexer cs
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

-- função que reconhece se string é do tipo dígito
lexNum :: String -> [Token]
-- span = separa string até próximo espaço (quando for digito vai pra num, e o resto no rest)
lexNum cs = case span isDigit cs of
              (num, rest) -> TokenNum (read num) : lexer rest

-- função que reconhece símbolos da linguagem
lexSymbol :: String -> [Token]
-- span = para de ler quando for espaço (!isSymb), separa símbolo do resto
lexSymbol cs = case span isSymb cs of
                 ("+", rest) -> TokenAdd : lexer rest
                 ("-", rest) -> TokenSub : lexer rest
                 ("*", rest) -> TokenMul : lexer rest
                 ("&&", rest) -> TokenAnd : lexer rest
                 ("||", rest) -> TokenOr : lexer rest
                 ("\\", rest) -> TokenLam : lexer rest
                 ("->", rest) -> TokenArrow : lexer rest
                 ("=", rest)  -> TokenEq : lexer rest
                 (":", rest) -> TokenColon : lexer rest
                 ("==", rest) -> TokenEqEq : lexer rest
                 ("<", rest) -> TokenLt : lexer rest
                 (">", rest) -> TokenGt : lexer rest
                 ("<=", rest) -> TokenLte : lexer rest
                 (">=", rest) -> TokenGte : lexer rest

                 _ -> error "Lexical error: invalid symbol!"

-- função que reconhece palavras reservadas da linguagem
lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
             ("true", rest) -> TokenTrue : lexer rest
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest
             ("then", rest) -> TokenThen : lexer rest
             ("else", rest) -> TokenElse : lexer rest
             ("let", rest) -> TokenLet : lexer rest
             ("in", rest) -> TokenIn : lexer rest
             ("Num", rest) -> TokenNumber: lexer rest
             ("Bool", rest) -> TokenBoolean : lexer rest
             ("leia", rest) -> TokenRead : lexer rest
             ("escreva", rest) -> TokenPrint : lexer rest
             (var, rest) -> TokenVar var : lexer rest
