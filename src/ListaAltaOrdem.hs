module ListaAltaOrdem where
sairImpar l = quicksort11 lf
    where lf = filter odd l  

quicksort11 [] = []
quicksort11 (x:xs) = quicksort11 menores ++ [x] ++ quicksort11 maiores
                   where
                       menores = [k | k <- xs, k <= x]
                       maiores = [k | k <- xs, k > x]

posicoes47 p l = l !! p

repete' 0 = []
repete' n = [n | x <- [1..n]] ++ repete' (n - 1)

replicate' n = replicate n n
repete'' n = map replicate' [n, n-1 .. 1]

--snoc34 x xs = xs ++ [x]
--reverso45 = foldr (snoc34) []

ehpalin n = n == reverse n
        
fibonacci54 = 0 : 1 : zipWith (+) fibonacci54 (tail fibonacci54)
fibonacciNumber n = take n fibonacci54


all' :: (a -> Bool) -> [a] -> Bool
all' f l = and $ map f l

any5000 :: (a -> Bool ) -> [a] -> Bool
any5000 f l = or $ map f l

takeWhile23 :: (a -> Bool) -> [a] -> [a]
takeWhile23 f [] = []
takeWhile23 f (x:xs)
    | f x == False = []
    | otherwise = x : takeWhile23 f xs


dropWhile23 :: (a -> Bool) -> [a] -> [a]
dropWhile23 f [] = []
dropWhile23 f (x:xs)
    | f x == False = x:xs
    | otherwise = dropWhile23 f xs


meuMap f l = foldr (aux f) [] l 
aux f v1 v2 = f v1 : v2


meuFilter f l = foldr (aux2 f) [] l
aux2 f v1 v2 
    | f v1 = v1 : v2
    | otherwise = v2

dec2int :: [Int] -> Int
dec2int xs = foldl (\s (x, y) -> s + x * y) 0 (zip xs (reverse [10^p | p <- [0..length xs -1]]))

unfold p h t x 
       | p x = []
       | otherwise = h x : unfold p h t (t x)


map937 f xs = unfold (== []) (f.head) (tail) xs

iterate937 f s = s : unfold (const False) f f s


altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f1 f2 lista = [if mod i 2 == 0 then f1 x else f2 x | (x,i) <- zip lista [0..]]

altMap2 _ _ [] = []
altMap2 f1 f2 (x:xs) = f1 x : altMap2 f2 f1 xs

curry2 f = (\x -> (\y -> f (x,y) ))

uncurry2 f = (\(x,y) -> f x y   )