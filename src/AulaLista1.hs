module AulaLista1 where

main = do
  putStrLn "Pronto"

-- -- questao 1
-- iguais a b c = if a == b && b == c
--                then 3
--                else if a == b || b == c || a == c
--                     then 2
--                     else 0

-- -- questao 2
-- maioresQueMedia a b c = maior a media + maior b media + maior c media
--                         where
--                           media = (a + b + c) / 3

-- maior x y = if x > y then 1 else 0

-- -- questao 3
-- potencia_2 x = x * x

-- -- questao 4
-- potencia_4 x = potencia_2 (potencia_2 x)

-- -- questao 5
-- xor a b = (a || b) && not (a && b)

-- --questao 6
-- delta a b c = b * b - 4 * a * c

-- raiz1 a b c = (negate b - sqrt (delta a b c)) / (2 * a)

-- raiz2 a b c = (negate b + sqrt (delta a b c)) / (2 * a)

-- x_menor a b c = if x1 < x2 then x1 else x2
--                 where
--                     x1 = raiz1 a b c
--                     x2 = raiz2 a b c

-- x_maior a b c = if x2 > x1 then x2 else x1
--                 where
--                     x1 = raiz1 a b c
--                     x2 = raiz2 a b c

-- -- questao 7
-- somaInclusivo n1 n2 = sum [n1 .. n2]
-- somaExclusivo n1 n2 = somaInclusivo (n1 + 1) (n2 - 1)

-- -- questao 8
-- multiplos n1 n2 n3 = length [x | x <- [n1 .. n2], mod x n3 == 0]

-- multiplos2 n1 n2 n3 = multiplo n1 n3 + if n1 <= n2 then multiplos2 (n1+1) n2 n3 else 0
--                       where
--                           multiplo a b = if mod a b == 0 then 1 else 0

-- -- questao 9
-- -- n! = n * (n-1)!
-- fat 0 = 1
-- fat 1 = 1
-- fat n = n * fat (n - 1)

-- combinacao n k = (fat n) `div` (fat k * fat (n - k))

-- -- questao 10
-- mod2 n d = n - ((n `div` d) * d)

-- mod2' n d = if n >= d then mod2' (n - d) d else n