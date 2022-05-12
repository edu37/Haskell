main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoEscalar a b

produtoEscalar :: (Num a) => [a] -> [a] -> a
produtoEscalar xs ys = sum $ map mult $ zip xs ys
    where
        mult (x,y) = x * y 