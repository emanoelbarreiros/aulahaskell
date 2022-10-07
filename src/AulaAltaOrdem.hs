module AulaAltaOrdem where

-- all2 _ [] = True
-- all2 f (x:xs) = f x && all2 f xs

-- all4 f xs = foldr (&&) True (map f xs)

-- foldr (\_ n -> 1 + n) 0 [1,2,3]

-- (\_ n -> 1 + n)

-- 1 + (2 + (3 + 0))

-- (+) 1 ((+) 2 ((+) 3 0))

-- (\_ n -> 1 + n) 1 2

-- (\_ n -> 1 + n) 3 0 => 1

-- (\_ n -> 1 + n) 2 1 => 2

-- (\_ n -> 1 + n) 1 2 => 3


-- reverse [1,2,3] = reverse [2,3] ++ [1]
-- reverse [2,3] ++ [1] = reverse [3] ++ [2] ++ [1]
-- reverse [3] ++ [2] ++ [1] = [] ++ [3] ++ [2] ++ [1]\

-- cons x xs = x : xs

-- snoc x xs = xs ++ [x]

-- reverse (x:xs) = snoc x (reverse xs)

-- foldr snoc [] [1,2,3]

-- [3,2,1]

-- foldr (-) 0 [1,2,3] = 1 - (2 - (3 - 0)) = 2
-- foldl (-) 0 [1,2,3] = ((0 - 1) - 2) - 3 = -6