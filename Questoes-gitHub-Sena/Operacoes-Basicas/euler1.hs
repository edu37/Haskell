
euler1 :: Int -> Int
euler1 n = sum $ [x | x <- list, (x `mod` 3 == 0) || (x `mod` 5 == 0)]
    where
        list = [0..n-1]
    

main :: IO()
main = do
    a <- readLn :: IO Int
    print $ euler1 a