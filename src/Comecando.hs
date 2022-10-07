module Comecando where

produto [] = 0
produto [x] = x
produto l = head l * produto (tail l)


--qsortD :: [Int] -> [Int]
qsortD [] = []
qsortD (x:xs) = qsortD maiores ++ [x] ++ qsortD menores
                   where
                      menores = [a | a <- xs, a < x ]
                      maiores = [b | b <- xs, b > x ]

meuLast l = head (reverse l)

meuLast2 [] = error "nao pode usar lista vazia"
meuLast2 [el] = el
meuLast2 l = meuLast2 (tail l)

meuLast3 l = l !! pos
             where
                 pos = length l - 1

meuLast4 l = head (take 1 (reverse l))

meuInit1 l = reverse (drop 1 (reverse l))
--meuInit1 [1,2,3] = [1,2]

initdois [] = []
initdois l = take (length l - 1) l
--initdois [1,2,3] = [1,2]


init3 k = reverse (tail (reverse k))

--init3 [1,2,3] = [1,2]