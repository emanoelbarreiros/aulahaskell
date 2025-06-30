module AulaLista2 where

import Data.Char 
import Data.List

-- questao 1
soma3 x y = x + y

xor True True = False
xor False False = False
xor _ _ = True

multi 0 _ = 0
multi _ 0 = 0
multi x y
    | xor (x < 0) (y < 0) = negate res
    | otherwise = res
    where
        res = soma3 (abs y) (multi (abs x - 1) (abs y))

-- questao 2
seqRaiz6 :: Int -> Double
seqRaiz6 1 = sqrt 6
seqRaiz6 n = sqrt (6 + seqRaiz6 (n-1))

-- questao 3
maiorDaLista l = maiorDaListaAux (tail novaLista) (head novaLista)
                 where
                     novaLista = zip l [0 ..]


maiorDaListaAux [] maiorAtual = maiorAtual
maiorDaListaAux (x:xs) maiorAtual = if fst x > fst maiorAtual 
                                    then maiorDaListaAux xs x 
                                    else maiorDaListaAux xs maiorAtual 

maiorDaLista2 l = maiorDaListaAux2 (tail l) (head l, 0) 1

maiorDaListaAux2 [] tupla i = tupla
maiorDaListaAux2 (x:xs) tupla i = if x > fst tupla
                                  then maiorDaListaAux2 xs (x,i) (i+1)
                                  else maiorDaListaAux2 xs tupla (i+1)

-- questao 4
dic = ["zero", "um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove"]


converteString = map (dic !!)

-- questao 5
delPosicaoN2 n l = take n l ++ drop (n+1) l

--questao 6
inserirPosicaoN2 n v l = take n l ++ (v : drop n l)

-- questao 7
posicaoN2 n l = head $ drop n l --l !! n

posicaoElemento e l = auxiliar e l 0

auxiliar e [] i = -1
auxiliar e (x:xs) i = if e == x then i else auxiliar e xs (i+1)

-- questao 8
merge2 l1 [] = l1
merge2 [] l2 = l2
merge2 (x:xs) (y:ys)
    | x < y = x : merge2 xs (y:ys)
    | otherwise = y : merge2 (x:xs) ys

-- questao 9
interseccao2 l1 l2 = [x | x <- l2, elem x l1]

--questao 10
comprime2 :: String -> String
comprime2 s = concat [comp x | x <- group s]

comp :: String -> String
comp s
    | length s > 3 = "!" ++ show (length s) ++ [head s]
    | otherwise = s

-- questao 11
