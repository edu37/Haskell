-- Inverter as posições dos numeros, na posição 1 ficará o num2 e na posição 2 o num1

switch :: (Num a, Eq a) => [a] -> a -> a -> a -> a -> [a]
switch [] _ _ _ _ = []
switch (x:xs) pos1 pos2 num1 num2 
    | pos1 == 0 = [num2] ++ next
    | pos2 == 0 = [num1] ++ next
    | otherwise = [x] ++ next
    where
        next = switch xs (pos1 - 1) (pos2 - 1) num1 num2

swap :: [Int] -> Int -> Int -> [Int]
swap [] _ _ = []
swap xs pos1 pos2
    | pos1 > length xs = xs
    | pos2 > length xs = xs
    | otherwise = switch xs pos1 pos2 (xs !! pos1) (xs !! pos2)

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c