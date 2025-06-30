module Primos where

import Data.List

fatoresPrimos :: Int -> [(Int, Int)]
fatoresPrimos 0 = []
fatoresPrimos n = map (\l -> (head l, length l)) (agrupar (sort $ primosAuxiliar 2 n []) [])

primosAuxiliar :: Int -> Int -> [Int] -> [Int]
primosAuxiliar d n xs
            | d > n = xs
            | otherwise = if mod n d == 0 then primosAuxiliar 2 (div n d) (d:xs) else primosAuxiliar (d+1) n xs

agrupar :: [Int] -> [[Int]] -> [[Int]]
agrupar [] grp = grp
agrupar (x:xs) [] = agrupar xs [[x]]
agrupar (x:xs) grp = if (elem x (last grp)) 
                then agrupar xs (init grp ++ [(x : last grp)]) 
                else agrupar xs (grp ++ [[x]])


slice :: [a] -> Int -> Int -> [a]
slice l ini fim
    | ini >= fim = []
    | otherwise = take (fim + 1 - ini) $ drop ini l


map11 _ [] = []
map11 f (x:xs) = f x : map11 f xs

map22 f l = [f x | x <- l]