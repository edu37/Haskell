{- Igualmente a anterior, getMaior só deve ser usada por removerMaior-}

getMaior :: [Int] -> Int
getMaior [x] = x
getMaior (x:xs) = max x (getMaior xs) 

remove :: Int -> [Int] -> [Int]
remove _ [] = []
remove y (x:xs)
    | y == x = xs
    | otherwise = x: (remove y xs)

removerMaior :: [Int] -> [Int]
removerMaior [] = []
removerMaior xs = remove (getMaior xs) xs

main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a