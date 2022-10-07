module AulaLista4 where

-- questao 1
fatorial 0 = 1
fatorial 1 = 1
fatorial n
    | n < 0 = error "Não existe fatorial negativo."
    | otherwise = n * fatorial (n - 1)

-- questao 2
somar 0 = 0
somar n = n + somar (n - 1)

-- questao 3
(^^^) :: (Num a, Eq a) => a -> a -> a
m ^^^ 0 = 1
m ^^^ n = m * (m ^^^ ( n - 1))

-- questao 4
euclides m n
    | m == n = m
    | otherwise = euclides (maximo - minimo) minimo
    where
        maximo = max m n
        minimo = min m n

-- questao 5
and2 :: [Bool] -> Bool
and2 [] = True
and2 (b:bs) = b && and2 bs

concat2 [] = []
concat2 (l:ls) = l ++ concat2 ls

replicate2 0 _ = []
replicate2 n v = v : replicate2 (n-1) v

(!!!) :: [a] -> Int -> a
[] !!! _ = error "indice muito grande"
(x:xs) !!! 0 = x
(x:xs) !!! n = xs !!! (n - 1)

elem2 :: Eq a => a -> [a] -> Bool
elem2 _ [] = False
elem2 v (x:xs)
    | v == x = True
    | otherwise = elem2 v xs

-- questao 6
merge3 :: Ord a => [a] -> [a] -> [a]
merge3 [] l = l
merge3 l [] = l
merge3 (x:xs) (y:ys)
    | x <= y = [x] ++ merge3 xs (y:ys)
    | otherwise = [y] ++ merge3 (x:xs) ys


-- questa 7
mergesort3 :: Ord a => [a] -> [a]
mergesort3 [x] = [x]
mergesort3 l = merge3 (mergesort3 esq) (mergesort3 dir)
               where
                   (esq, dir) = metades3 l

metades3 l = (take n l, drop m l)
             where
                 tamanho = length l
                 m = tamanho `div` 2
                 n = if tamanho `mod` 2 == 1 then tamanho - m - 1 else tamanho - m


-- questao 8
soma4 :: [Int] -> Int
soma4 [] = 0
soma4 (x:xs) = x + soma4 xs

tamanho :: [a] -> Int
tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs

ultimo [] = error "lista vazia nao tem ultimo elemento"
ultimo [x] = x
ultimo (x:xs) = ultimo xs


quicksort10 [] = []
quicksort10 (x:xs) = quicksort10 menores ++ [x] ++ quicksort10 maiores
                   where
                       menores = [k | k <- xs, k <= x]
                       maiores = [k | k <- xs, k > x]