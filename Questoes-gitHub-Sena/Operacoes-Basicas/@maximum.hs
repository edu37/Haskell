main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ maior a

getMax :: Int -> [Int] -> Int
getMax x [] = x
getMax x (y:ys)
    | x > y = getMax x ys
    | otherwise = getMax y ys

maior :: [Int] -> Int
maior [] = -1
maior (x:xs) = getMax x xs
