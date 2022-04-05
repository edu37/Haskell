main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ primeiros a

getInit :: [Int] -> [Int] -> [Int]
getInit xs [] = xs
getInit xs (_:[]) = xs
getInit xs (y:ys) = xs ++ [y] ++ (getInit xs ys)

primeiros :: [Int] -> [Int]
primeiros xs = getInit [] xs