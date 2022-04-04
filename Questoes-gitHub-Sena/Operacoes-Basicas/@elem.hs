main :: IO()
main   = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b
pertence :: (Num a, Eq a) => a -> [a] -> Bool
pertence _ [] = False
pertence n (x:xs)
    | x == n = True
    | otherwise = pertence n xs
