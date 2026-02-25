fib :: Int -> Int

fib 0 = 0 -- Caso base
fib 1 = 1 -- Caso base

fib n = fib (n - 1) + fib (n - 2) -- Caso recursivo: A partir da posição "n" dada, soma dos dois números anteriores a ele da sequência de Fibonacci

-- ex: fib 6 = fib (5) + fib (4) -> fib 6 = 5 + 3 = 8
-- fib 5 = fib (4) + fib (3) -> fib 5 = 3 + 2 = 5
-- fib 4 = fib (3) + fib (2) -> fib 4 = 2 + 1 = 3
-- fib 3 = fib (2) + fib (1) -> fib 3 = 1 + 1 = 2
-- fib 2 = fib (1) + fib (0) -> fib 2 = 1 + 0 = 1
-- fib 1 = 1
-- fib 0 = 0


