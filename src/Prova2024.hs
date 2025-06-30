module Prova2024
    ( reverso, converter, rotateLeft, removeMin, menor2, menor, escolheFuncoes, mapF
    ) where

{-
Questao 1

Implemente a função reverso :: [a] -> [a], que inverte a ordem dos elementos de uma lista. OBS: Não é permitido usar a função reverse da biblioteca padrão.
Ex: reverso "abc"
Main> "cba"
-}
reverso :: [a] -> [a]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]


{- 
Questao 2

Crie uma função que converta um quantidade de segundos em uma String no formato "HH:MM:SS". O valor máximo possível a ser recebido por essa função é 359999 ("99:59:59").
Ex: converter 86399 = "23:59:59"
-}
converter :: Int -> String
converter n = show horas ++ ":" ++ show minutos ++ ":" ++ show segundos
              where
                horas = div n 3600
                restoHoras = mod n 3600
                minutos = div restoHoras 60
                segundos = mod restoHoras 60


{- 
Questao 3

Implemente uma função chamada rotateLeft :: Int -> [a] -> [a], que rotaciona uma lista para a esquerda uma quantidade n de vezes de acordo com o primeiro parâmetro da função.
Ex: rotateLeft 2 "abcd"
Main> "cdab"  
-}
rotateLeft :: Int -> [a] -> [a]
rotateLeft 0 l = l
rotateLeft _ [] = []
rotateLeft n (x:xs) = rotateLeft (n - 1) (xs ++ [x])


{-
Questao 4

Crie uma função que remove o menor elemento de uma lista. Caso este elemento apareça mais de uma vez na lista, remova apenas a primeira ocorrência.
Ex: removeMin [4,5,6,4,7] = [5,6,4,7]
-}
removeMin :: Ord a => [a] -> [a]
removeMin [] = []
removeMin l = remove (menor l) l


menor :: Ord a => [a] -> a
menor [] = error "lista vazia"
menor (x:xs) = menor' x xs 

menor' :: Ord a => a -> [a] -> a
menor' v [] = v
menor' v (x:xs) = menor' (min v x) xs


-- implementacao alternativa com fold
menor2 :: Ord a => [a] -> a
menor2 [] = error "lista vazia"
menor2 (x:xs) = foldr min x xs


remove :: Eq a => a -> [a] -> [a]
remove _ [] = []
remove m (x:xs) = if m == x then xs else x : remove m xs


{-
Questao 5

Crie uma função (inclua a definição do seu tipo) que recebe uma lista de funções e 
um segundo argumento. Esta função devolve uma lista com todas as funções que ao 
serem aplicadas ao argumento retornam False.
Ex: escolheFuncoes [even, odd, (\x -> x `mod` 3 == 0)] 6 = [odd]

Use mapF se quiser testar as funcoes que saíram como resultado
-}
escolheFuncoes :: [a -> Bool] -> a -> [a -> Bool]
escolheFuncoes [] _ = []
escolheFuncoes fs v = [f | f <- fs, not (f v)]


mapF :: [t -> a] -> t -> [a]
mapF [] _ = []
mapF fs v = [f v | f <- fs]
