module Prova where

-- questao 1
duasVezes :: (a -> a) -> a -> a
duasVezes f x = f (f x)

-- questao 2
-- a
terceiro1 l
    |length l < 3 = error "mensagem"
    |otherwise = head (tail (tail l))

-- b
terceiro2 l = l !! 2

-- c
terceiro3 (x:y:z:resto) = z

-- questao 3
-- a
novoTail1 l = if l == [] then [] else tail l
-- anna
tail2 l = if null l then [] else drop 1 l

-- b
novoTail2 l
    | null l = []
    | otherwise = tail l

-- c
novoTail3 [] = []
novoTail3 (x:xs) = xs

-- questao 4
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

-- questao 5
primo10 n = [x | x <- [1 .. n], mod n x == 0] == [1,n]
 
-- amadeu
--primo x = all (==False) [x `mod` y == 0 | y <- [2..x - 1]]

primos10 n = [x | x <- [2..n], primo10 x]

-- questao 6
rotateLeft n l = drop n l ++ take n l

rotateLeft2 _ [] = []
rotateLeft2 0 xs = xs
rotateLeft2 n (x:xs) = rotateLeft (n-1) (xs ++ [x]) 

-- antonio
-- aux5 (x:xs) = xs ++ [x]
-- shiftLeft _ [] = []
-- shiftLeft 0 l = l
-- shiftLeft n (x:xs) = shiftLeft (n-1) (aux5 (x:xs))

rev xs = rev' xs []
         where
             rev' [] ys = ys
             rev' (x:xs) ys = rev' xs (x:ys)