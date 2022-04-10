
unico :: (Eq a) => a -> [a] -> Bool
unico n xs
    | iguais == 1 = True
    | otherwise = False
    where
        iguais = length $ filter (==n) xs

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b