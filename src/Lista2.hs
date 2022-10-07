module Lista2 where

import Data.Char 
import Data.List

-- questao 1
soma a b = a + b

mult a 1 = a
mult 1 a = a
mult a b = soma a (mult a (b-1))

-- questao 2
raiz6 1 = sqrt 6
raiz6 n = sqrt (6 + raiz6 (n-1))

-- questao 3
maior [] atual = atual
maior (t:ts) atual = if fst t > fst atual then maior ts t else maior ts atual

maximo l = maior (zip l [0 .. length l]) (minBound::Int, minBound::Int)

-- questao 4
dic10 = ["zero", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove"]

converteDigito n = dic10 !! n

converte [] = []
converte (d:ds) = [converteDigito d] ++ converte ds

-- questao 5
delPosicaoN [] n = []
delPosicaoN (x:xs) n = if n == 0 then xs else [x] ++ delPosicaoN xs (n-1)

-- questao 6
inserirPosicaoN [] pos ele = [ele]
inserirPosicaoN (x:xs) pos ele = if pos == 0 then [ele,x] ++ xs else [x] ++ inserirPosicaoN xs (pos - 1) ele

-- questao 7
posicao l pos = l !! pos

-- questao 8
merge l1 [] = l1
merge [] l2 = l2
merge (x:xs) (y:ys) = if x <= y then [x] ++ merge xs (y:ys) else [y] ++ merge (x:xs) ys

mergeSort [] = []
mergeSort l = if length l > 1 then merge (mergeSort (esquerda l)) (mergeSort (direita l)) else l

metade l = div (length l) 2

esquerda l = take (metade l) l

direita l = drop (metade l) l

-- questao 9
interseccao [] _ = []
interseccao _ [] = []
interseccao (x:xs) l2 = if x `elem` l2 then [x] ++ interseccao xs l2 else interseccao xs l2

-- questao 10
--comprime :: String -> String
comprime [] = []
comprime l = comprime' (group l)

--comprime' :: String -> (Char, Int) -> String -> String
comprime' [] = []
comprime' (x:xs) = if length x >= 3 then comprimido (head x) (length x) ++ comprime' xs else x ++ comprime' xs

comprimido c 0 = []
comprimido c qtd = if qtd > 1 then "!" ++ show qtd ++ [c] else [c]

--questao 11
descomprime [] = []
descomprime (x:xs) = if x == '!' then descomprimeAtomo xs "" ++ descomprime (descartaAtomo xs) else [x] ++ descomprime xs

descomprimeAtomo [] _ = []
descomprimeAtomo (x:xs) tam = if isDigit x then descomprimeAtomo xs (tam ++ [x]) else replicate (read tam) x

descartaAtomo [] = []
descartaAtomo (x:xs) = if isDigit x then descartaAtomo xs else xs