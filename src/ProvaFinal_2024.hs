module ProvaFinal_2024 where

import Data.List


-- questao 1
ordena a b c d = tuplificar (sort [a,b,c,d])

tuplificar [a,b,c,d] = (a,b,c,d)

-- questao 2

taylor20 x 0 = 1
taylor20 x n = x ** n / fat20 n + taylor20 x (n - 1)

fat20 0 = 1
fat20 1 = 1
fat20 n = product [1 .. n]

-- questao 3
type Cadastro = (CPF, Nome)
type Nome = String
type CPF = String

nome :: CPF -> [Cadastro] -> Nome
nome s [] = []
nome s ((c,n):xs) = if c == s then n else nome s xs

-- questao 4
divide [] _ = []
divide _ [] = []
divide l1 l2 = sort $ nub [y | y <- l2, x <- l1, mod y x == 0]

listdiv a b = sort . nub $ [x | x <- b, any (\y -> x `mod` y == 0) a]


ordena20 a b c d 
    | a > b = ordena20 b a c d
    | b > c = ordena20 a c b d
    | c > d = ordena20 a b d c
    | otherwise = (a,b,c,d)