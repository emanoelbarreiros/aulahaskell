module TailFib where


fib 1 = 1
fib 0 = 0
fib n = fib (n - 1) + fib (n - 2)

fib' n = go n (0,1)
go 0 (a,b) = a
go 1 (a,b) = b
go n (a,b) = go (n-1) (b, a + b) 