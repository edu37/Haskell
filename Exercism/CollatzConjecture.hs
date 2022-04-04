
turnToOne :: (Integral a, Num b) => a -> b
turnToOne 1 = 0
turnToOne x
    |x <= 0 = -1
    |par = 1 + turnToOne (div x 2)
    |otherwise = 1 + turnToOne (x * 3 + 1)
    where
        par = x `mod` 2 == 0

collatz :: Integer -> Maybe Integer
collatz x
    |p /= Just (-1) = p
    |otherwise = Nothing
    where
        p = Just (turnToOne x)

{- Exercism
module CollatzConjecture (collatz) where
collatz :: Integer -> Maybe Integer
collatz n | n <= 0 = Nothing
          | n == 1 = Just 0
          | even n     = succ <$> collatz (n `div` 2)
          | otherwise  = succ <$> collatz (3 * n + 1)
-}