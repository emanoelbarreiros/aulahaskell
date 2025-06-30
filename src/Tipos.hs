module Tipos where

soma :: (Int, Int) -> Int
soma (x, y) = x + y

soma2 :: Int -> (Int -> Int)
soma2 x y = x + y

inc :: Int -> Int
inc = soma2 1