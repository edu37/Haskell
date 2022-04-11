
maioresQue :: (Ord a) => a -> [a] ->[a]
maioresQue _ [] = []
maioresQue n xs = filter (>n) xs

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b