
frequencia :: (Num a, Eq a) => a -> [a] -> Int
frequencia n = length . filter (==n) 

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b