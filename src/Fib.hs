module Fib where

fib2 0 = 1
fib2 1 = 1
fib2 n = fib2 (n-1) + fib2 (n-2)

fib3 0 = 1
fib3 1 = 1
fib3 n = get n (fib3' n [])

fib3' n d = if inDict n d then d else right
            where
                left = fib3' (n-1) d
                right = fib3' (n-2) left


inDict _ [] = False
inDict k (x:xs) = (k == fst x) || inDict k xs

get _ [] = error "empty dict"
get k (x:xs) = if k == fst x then snd x else get k xs

fib4 n = last (take n (fib4' []))

fib4' [] = fib4' [0]
fib4' [0] = fib4' [0,1]
fib4' l = fib4' $ l ++ [last l + (l !! (length l - 2))]
