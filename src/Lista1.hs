module Lista1 where

-- -- Questao 1
-- iguais a b c = if a == b && b == c 
--                then 3 
--                else if a == b && b /= c || a == c && b /= c || b == c && b /= a then 2 else 0

-- -- Questao 2
-- maiorQueMedia a b c = maior a media + maior b media + maior c media
--                       where
--                           media = (a + b + c) / 3
--                           maior x y = if x > y then 1 else 0

-- -- Questao 3
-- potencia_2 x = x * x

-- -- Questao 4
-- potencia_4 x = potencia_2 (potencia_2 x)

-- -- Questao 5
-- xor a b = (a || b) && not (a && b)

-- -- Questao 6
-- delta a b c = b * b - 4 * a * c

-- raizMaior a b c = (negate b + sqrt (delta a b c)) / (2 * a)

-- raizMenor a b c = (negate b - sqrt (delta a b c)) / (2 * a)

-- x_maior a b c = if x_1 >= x_2 then x_1 else x_2 
--                 where
--                     x_1 = raizMaior a b c
--                     x_2 = raizMenor a b c

-- x_menor a b c = if x_1 >= x_2 then x_2 else x_1 
--                 where
--                     x_1 = raizMaior a b c
--                     x_2 = raizMenor a b c

-- -- Questao 7
-- somaInclusivo n1 n2 = sum [n1 .. n2]

-- somaExclusivo n1 n2 = (somaInclusivo n1 n2) - n1 - n2

-- -- Questao 8
-- multiplos n1 n2 n3 = if n1 <= n2 then multiplo n1 n3 + multiplos (n1 + 1) n2 n3 else 0
--                     where
--                         multiplo a b = if a `mod` b == 0 then 1 else 0

-- -- Questao 9
-- fat 0 = 1
-- fat 1 = 1
-- fat n = n * fat (n - 1)

-- combinacao n k = div (fat n) (fat k * fat (n - k))

-- -- Questao 10
-- mod2 a b = if a >= b then mod2 (a - b) b else a