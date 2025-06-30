module CountingSort where

countingSort :: [Int] -> [Int]
countingSort [] = []
countingSort ent = countingSortAux ent acum (n - 1) ret
                 where
                    n = length ent
                    contagem = [contar (==i) ent | i <- [0 .. (maximum ent)]]
                    acum = foldl (\x y -> if null x then [y] else x ++ [last x + y]) [] contagem
                    ret = replicate n 0

countingSortAux ent acum j ret = if j < 0 
                                 then ret 
                                 else countingSortAux ent (decr acum (ent !! j)) (j - 1) (upd ret ((acum !! (ent !! j)) - 1) (ent !! j))

contar pred = length . filter pred

upd l p v = take p l ++ [v] ++ drop (p + 1) l

decr l p = take p l ++ [l !! p - 1] ++ drop (p + 1) l