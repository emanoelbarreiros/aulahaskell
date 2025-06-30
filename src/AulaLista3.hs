module AulaLista3 where

-- questao 1
soma1 n = sum [x * x | x <- [1 .. n]]
 
-- questao 2
grid2 m n = [(x,y) | x <- [0 .. m], y <- [0 .. n]]

-- questao 3
quadrado2 n = [ (x,y) | (x,y) <- grid2 n n, x /= y ]

-- questao 4
replicar n v = [ v | _ <- [1 .. n]]

-- questao 5
pitag :: Int -> [(Int,Int,Int)]
pitag n = [(x,y,z) | x <- [3 .. n], y <- [3 .. n], z <- [3 .. n], x * x + y * y == z * z]

-- questao 6
fatores :: Int -> [Int]
fatores n = [x | x <- [1 .. n], mod n x == 0]

perfeitos2 :: Int -> [Int]
perfeitos2 n = [ x | x <- [1 .. n], x == sum (init (fatores x))]

-- questao 7
--concat2 [[(1,y) | y <- [3,4]], [(2,y) | y <- [3,4]]]

-- questao 8
posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (z, i) <- zip xs [0 ..], x == z]

buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']

posicoes2 :: Eq a => a -> [a] -> [Int]
posicoes2 x xs = buscar x (zip xs [0 ..])

-- questao 9
produtoEscalar xs ys = sum [ x * y | (x,y) <- zip xs ys]

--produtoEscalar xs ys = sum (zipWith   xs ys)

zipWith2 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith2 f xs ys = [ f x y | (x,y) <- zip xs ys]

