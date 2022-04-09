
sublist :: Int -> Int -> [Int] -> [Int]
sublist f l xs
    | f < 0 = sublist f' l xs
    | l < 0 = sublist f l' xs 
    | otherwise = [x | x <- xs, x >= f && x < l]
    where
        f' = f + (length xs)
        l' = l + (length xs)

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c