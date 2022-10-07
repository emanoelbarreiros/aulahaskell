module Intro where

import Data.List

soma :: Int -> Int -> Int
soma a b = a + b

somaL :: [Int] -> Int
somaL [] = 0
somaL (x:xs) = x + somaL xs

quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (fst particao) ++ [x] ++ quicksort (snd particao)
                   where
                      particao = (partition (<=x) xs)