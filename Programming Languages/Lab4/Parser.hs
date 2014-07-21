module Main where
import Grammar
import Lexer

main = do
  s <- getContents
  let ast = parseHaskellito (scanTokens s)
  print ast  