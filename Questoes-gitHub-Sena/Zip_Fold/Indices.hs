main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b

indices :: Eq a => a -> [a] -> [Int]
indices n xs = foldl (\acc x -> if (snd x) == n then acc ++ [(fst x)] 
                                else acc )[] (zip [0..] xs)