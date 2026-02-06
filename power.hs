power :: Int-> Int -> Int 
power x 0 = 1 -- Caso base
power x p -- potencia != 0
    | even p = n * n -- se p é par -> então (power x (p `div` 2)) * (power x (p `div` 2))
    | otherwise = n * n * x -- se p é impar -> então (power x (p `div` 2)) * (power x (p `div` 2)) * x
    where
        n = power x (p `div` 2) -- definição de "n"



