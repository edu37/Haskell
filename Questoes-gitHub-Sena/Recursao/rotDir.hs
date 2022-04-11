
rotDir :: Int -> [a] -> [a]
rotDir 0 xs = xs
rotDir n xs = rotDir (n-1) ([last xs] ++ take ((length xs) - 1) xs)

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b