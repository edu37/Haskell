main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b

getDivide :: [Int] -> [Int] -> Int -> ([Int], [Int])
getDivide xs [] _ = (xs,[])
getDivide xs ys 0 = (xs,ys)
getDivide xs (y:ys) n = getDivide (xs ++ [y]) ys (n - 1)

divide :: [Int] -> Int -> ([Int], [Int])
divide ys n = getDivide [] ys n