
getTrue :: [Bool] -> Int
getTrue [] = 0
getTrue (x:xs)
    | x == True = 1 + getTrue xs
    | otherwise = 0 + getTrue xs

paridade :: [Bool] -> Bool
paridade [] = False
paridade xs = odd (getTrue xs)


main :: IO()
main = do
    a <- readLn :: IO [Bool]
    print $ paridade a