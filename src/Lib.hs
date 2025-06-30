module Lib where


someFunc :: IO ()
someFunc = putStrLn "someFunc"

hamming = 1 : map (2*) hamming `union` map (3*) hamming `union` map (5*) hamming

union a@(x:xs) b@(y:ys) = case compare x y of
            LT -> x : union  xs  b
            EQ -> x : union  xs  ys
            GT -> y : union  a   ys

next = 1 : map (2*) next
     --1 : map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) next))))

     --take 5 (1 : map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) next)))))
     --1 : take 4 (map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) (1 : map (2*) next)))))
     --1 : 