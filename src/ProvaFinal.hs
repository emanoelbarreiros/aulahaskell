module ProvaFinal where

import Data.List
import Data.Char

-- questao 1
ehPantograma [] = False
ehPantograma st = and [c `elem` st | c <- ['a' .. 'z']]

panto s = all (`elem` map toLower s) ['a'..'z']

-- questao 2
ordena a b c d = tuplificar (sort [a,b,c,d])

tuplificar [a,b,c,d] = (a,b,c,d)
 
-- questao 3
data Arvore30 a = Folha30 a | No30 (Arvore30 a) a (Arvore30 a) deriving Show

toList (Folha30 x) = [x]
toList (No30 esq v dir) = toList esq ++ [v] ++ toList dir

-- qustao 4
collatz n
    | n == 1 = 0
    | n `mod` 2 == 0 = 1 + collatz (div n 2)
    | otherwise = 1 + collatz (n * 3 + 1)

-- questao 5
descartar p l = [x | x <- l, not $ p x]

ordena1 w x y z = transftupla (ord1 emordem (length emordem))
    where
        transftupla [w,x,y,z] = (w,x,y,z)
        emordem = ordenar [w,x,y,z]

ordenar [] = []
ordenar lista = ord1 lista (length lista)

ord1 lista 0 = lista
ord1 lista n = ord1 (troca lista) (n - 1)

troca [x] = [x]
troca (x:y:zs)
    | x > y = y : troca (x:zs)
    | otherwise = x : troca (y:zs)


