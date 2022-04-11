
verify :: Int -> Int -> Bool
verify x i
    | i*i == x = True
    | i*i < x = verify x (i+1)
    | otherwise = False

quadperf :: Int -> Bool
quadperf x = verify x 0

main :: IO()
main = do
    a <- readLn :: IO Int
    print $ quadperf a