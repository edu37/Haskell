main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ primeiros a

primeiros :: [Int] -> [Int]
primeiros [] = []
primeiros (_:[]) = []
primeiros (x:xs) = [x] ++ primeiros xs
