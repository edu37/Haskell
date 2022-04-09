
ordena :: (Ord a, Num a) => [a] -> [a]
ordena [] = []
ordena (x:xs) = ordena menores ++ [x] ++ ordena maiores
    where
        menores = [e | e <- xs, e <= x]
        maiores = [e | e <- xs, e > x]

contido :: (Num a, Eq a) => a -> [a] -> Bool
contido _ [] = False
contido x (y:ys)
    | x == y = True
    | otherwise = contido x ys

uniao :: [Int] -> [Int] -> [Int]
uniao xs ys = ordena $ [x | x <- xs, (contido x ys) == False ] ++ ys

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b