module Prova2025 where
import ListaTipos (balanceada3)

-- questao 1
primos 0 = []
primos n = fator : primos quociente
           where
               (fator, quociente) = menorFator n 2

menorFator n f = if n == 1 || n == f || mod n f == 0 
                 then (f, div n f) 
                 else menorFator n (proximoPrimo f)

primo n = [1,n] == [x | x <- [1 .. n], mod n x == 0]

proximoPrimo n = if primo (n + 1) then n + 1 else proximoPrimo (n + 1)

--questao 3
pedaco i j lst
    | i == j = [lst !! j]
    | otherwise = (lst !! i) : pedaco (i+1) j lst

dupli [] = []
dupli (x:xs) = dupli [x] ++ dupli xs