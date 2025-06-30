module Main where

import System.IO


zero = "+----+\n"++
       "|    |\n"++
       "|\n"++
       "|\n"++
       "|\n"++
       "+--------"
um   = "+----+\n"++
       "|    |\n"++
       "|   😘\n"++
       "|\n"++
       "|\n"++
       "+--------"
dois = "+----+\n"++
       "|    |\n"++
       "|   🙂\n"++
       "|   🎽\n"++
       "|\n"++
       "+--------"
tres = "+----+\n"++
       "|    |\n"++
       "|   😬\n"++
       "| 💪🎽\n"++
       "|\n"++
       "+--------"
quatro = "+----+\n"++
       "|    |\n"++
       "|   😐\n"++
       "| 💪🎽🤳 \n"++
       "|\n"++
       "+--------"
cinco = "+----+\n"++
       "|    |\n"++
       "|   😰\n"++
       "| 💪🎽🤳\n"++
       "|  🦵\n"++
       "+--------"
seis = "+----+\n"++
       "|    |\n"++
       "|   💀\n"++
       "| 💪🎽🤳\n"++
       "| 🦵🦵\n"++
       "+--------"

forcas = [zero, um, dois, tres, quatro, cinco, seis]

main :: IO ()
main = do hSetBuffering stdout NoBuffering
          hSetBuffering stdin NoBuffering
          putStrLn "Escreva uma palavra: "
          segredo <- obterLinhaSecreta
          putStrLn "Tente adivinhar: "
          jogar segredo (replicate (length segredo) '-' ) 0


obterLinhaSecreta :: IO String
obterLinhaSecreta = do x <- obterChar
                       if x == '\n' then
                           do putChar x
                              return []
                       else
                           do putChar '-'
                              xs <- obterLinhaSecreta
                              return (x:xs)


obterChar:: IO Char
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x


jogar :: String -> String -> Int -> IO ()
jogar segredo parcial erros = 
                   do 
                      if parcial == segredo then
                          putStrLn "Muito bem! 🙌"
                      else do 
                          putStr "? "
                          tentativa <- getChar
                          putStr "\n"
                          let novoParcial = (encontrar segredo tentativa parcial)
                          let qtdErros = if novoParcial == parcial then erros + 1 else erros
                          putStrLn (forcas !! qtdErros)
                          if qtdErros == 6 then
                              putStrLn "Sinto muito, você morrerá em instantes.🤭"
                          else
                              do
                                putStrLn novoParcial
                                jogar segredo novoParcial qtdErros

encontrar :: String -> Char -> String -> String
encontrar xs c parc = [if x == c then x else parc !! ind | (x,ind) <- zip xs [0..]]

-- main :: IO ()
-- main = do
--        hSetBuffering stdout NoBuffering
--        hSetBuffering stdin NoBuffering
--        putStr "Informe o primeiro numero: "
--        n1 <- getLine
--        putStr "Informe o segundo numero: "
--        n2 <- getLine
--        let res = (read n1 :: Int) + (read n2 :: Int)
--        putStr (show res)

-- main :: IO ()
-- main = forca