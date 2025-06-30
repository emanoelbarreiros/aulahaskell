module Prova2EE where

-- questao 1
data Expr = Lit Int | Soma Expr Expr | Sub Expr Expr | Mult Expr Expr | Div Expr Expr

avalia (Lit n) = n
avalia (Soma e1 e2) = avalia e1 + avalia e2
avalia (Sub e1 e2) = avalia e1 - avalia e2
avalia (Mult e1 e2) = avalia e1 * avalia e2
avalia (Div e1 e2) = div (avalia e1) (avalia e2)

-- questao 2
-- a
map1 f [] = []
map1 f (x:xs) = f x : (map1 f xs)

-- b
map2 f l = [f x | x <- l]

-- c
filter1 p [] = []
filter1 p (x:xs)
    | p x = x : filter1 p xs
    | otherwise = filter1 p xs

-- d
filter2 p l = [x | x <- l, p x]

-- questao 3
data Arvore a = Folha a | No (Arvore a) a (Arvore a) deriving Show

meuMap :: (a -> b) -> Arvore a -> Arvore b
meuMap f (Folha n) = (Folha (f n))
meuMap f (No esq n dir) = (No (meuMap f esq) (f n) (meuMap f dir))

-- questao 4
funcao :: IO ()
funcao = do
    putStr "informe o primeiro numero: "
    n1 <- getLine
    putStr "informe o segundo numero: "
    n2 <- getLine
    let n1I = read n1 :: Int
    let n2I = read n2 :: Int
    let soma = n1I + n2I
    putStrLn ("Resultado: " ++ show soma)

-- questao 5

--compor = foldr (.) id

-- somaDobroPares = compor [sum, map (*2), filter even]
-- • Occurs check: cannot construct the infinite type: a ~ [a]
--     Expected type: [a] -> [a]
--     Actual type: [a] -> a
-- • In the expression: sum
--     In the first argument of ‘compor’, namely
--     ‘[sum, map (* 2), filter even]’
--     In the expression: compor [sum, map (* 2), filter even]
-- O problema aqui ocorre porque quando faz-se a composição usando a função compor o Haskell assume que todas as funções terão o mesmo tipo (a -> a), logo, todas as funções que você usar para fazer a composição precisam ter o mesmo tipo de entrada e saída. No caso do exemplo, a função sum possui o tipo ([a] -> a), e é aí que está o problema, pois as outras duas funções possuem o tipo ([a] -> [a]). Caso você desejasse usar a composição normalmente, usando diretamente a função (.) você não teria este problema, ele só aparece quando queremos usar a função (compor) para fazer isso.