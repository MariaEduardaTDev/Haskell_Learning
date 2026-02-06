perimeter :: Int -> Int -> Int
perimeter width height = 2 * (width + height)

x0r :: Bool -> Bool -> Bool 
x0r a b = (a || b) && not (a && b)


factorial :: Integer -> Integer 
factorial n = if n == 0 then 1 else n * factorial (n - 1)


nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True



valAbs :: Int -> Int
valAbs n 
    | n >= 0 = n
    | otherwise = -n



fastExp :: Integer -> Integer -> Integer
fastExp _ 0 = 1
fastExp x n =
    let halved = div n 2
        y = fastExp x halved
    in 
        if even n
        then y * y
        else y * y * x

{-
fastExp :: Integer -> Integer -> Integer
fastExp _ 0 = 1
fastExp x n
  | even n    = y * y
  | otherwise = y * y * x
  where
    halved = div n 2
    y      = fastExp x halved
-}


