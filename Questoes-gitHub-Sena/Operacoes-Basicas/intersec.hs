
ordena :: (Ord a, Num a) => [a] -> [a]
ordena [] = []
ordena (x:xs) = ordena menores ++ [x] ++ ordena maiores
    where
        menores = [e | e <- xs, e <= x]
        maiores = [e | e <- xs, e > x]

contido :: (Eq a, Num a) => a -> [a] -> Bool
contido _ [] = False
contido x (y:ys)
    | x == y = True
    | otherwise = contido x ys

intersec :: [Int] -> [Int] -> [Int]
intersec xs ys = ordena $ [x | x <- xs, (contido x ys) == True]

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b