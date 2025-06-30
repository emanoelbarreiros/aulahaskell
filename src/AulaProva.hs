module AulaProva where

-- questao 1
data Expr = Lit Int | Soma Expr Expr | Sub Expr Expr | Mult Expr Expr | Div Expr Expr

avalia :: Expr -> Int
avalia (Lit n) = n
avalia (Soma e1 e2) = avalia e1 + avalia e2
avalia (Sub e1 e2) = avalia e1 - avalia e2
avalia (Mult e1 e2) = avalia e1 * avalia e2
avalia (Div e1 e2) = div (avalia e1) (avalia e2)

--questao 2
-- a
map1 :: (a -> b) -> [a] -> [b]
map1 f [] = []
map1 f (x:xs) = f x : map1 f xs

-- b
map2 :: (a -> b) -> [a] -> [b]
map2 f l = [ f x | x <- l]

-- c
filter1 :: (a -> Bool) -> [a] -> [a]
filter1 f [] = []
filter1 f (x:xs) = if f x then x : filter1 f xs else filter1 f xs

filter1' f [] = []
filter1' f (x:xs)
    | f x = x : filter1' f xs
    | otherwise = filter1' f xs

-- d
filter2 :: (a -> Bool) -> [a] -> [a]
filter2 f l = [ x | x <- l, f x]

-- questao 3
data Arvore a = Folha a | No (Arvore a) a (Arvore a) deriving Show

novoMap :: (a -> b) -> Arvore a -> Arvore b
novoMap f (Folha v) = Folha (f v)
novoMap f (No esq v dir) = No (novoMap f esq) (f v) (novoMap f dir)

funcao :: IO ()
funcao = do
    v1 <- getLine
    v2 <- getLine
    let n1 = read v1 :: Int
    let n2 = read v2 :: Int
    let res = n1 + n2
    putStrLn (show res)

compor xs = foldr (.) id xs