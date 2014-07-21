module Main where
import TypeChecker
import Grammar
import Lexer


main = do
  s <- getContents
  let ast = parseHaskellito (scanTokens s)
  let t = typeChecker ast []
  print (ast,t)  
