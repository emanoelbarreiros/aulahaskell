module ListaInterativa where

import System.IO

putStr2 :: String -> IO ()
putStr2 [] = return ()
putStr2 l = sequence_ [putChar x | x <- l]

somador :: IO ()
somador = do
    putStr "Quantos números? "
    valor <- getLine
    let repeticoes = read valor :: Int
    resposta <- acumulador repeticoes 0
    putStrLn $ "O total é " ++ show resposta

acumulador :: Int -> Int -> IO Int
acumulador rep acum = do
    if rep == 0 then
        do
            return acum
    else
        do
            valor <- getLine
            let numero = read valor :: Int
            acumulador (rep - 1) (acum + numero)








somador2 :: IO ()
somador2 = do
    putStr "Quantos números? "
    valor <- getLine
    let repeticoes = read valor :: Int
    resposta <- sequence [pegarInt | _ <- [1..repeticoes]]
    putStrLn $ "O total é " ++ show (sum resposta)

pegarInt :: IO Int
pegarInt = do
    valor <- getLine
    let numero = read valor :: Int
    return numero






obterChar2 :: IO Char
obterChar2 = do x <- getChar
                return x

getLine2 :: IO String
getLine2 = do x <- getChar
              if x == '\n' then
                 do putChar '\n'
                    return []
              else
                 if x == '\DEL' then
                     do putChar '\b'
                        putChar ' '
                        putChar '\b'
                        return "\DEL"
                 else
                     do xs <- getLine2
                        if xs == "\DEL" then
                            getLine2
                        else
                            return (x:xs)
