
concatena :: (Ord a) => [a] -> [a] -> [a]
concatena [] [] = []
concatena xs ys
    | (length xs) > 0 = (head xs): concatena (tail xs) ys
    | otherwise = (head ys): concatena xs (tail ys)

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b