
-- Completa -- Não vizualizei a dica --

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ index_of a b


index_of :: [Int] -> Int -> Int
index_of [] _ = -1
index_of xs value 
    | (elem value xs) == False = -1
    | otherwise = fst $ foldl (\acc x -> 
        if x == value && snd acc == False then (fst acc, True) 
        else if snd acc == True then acc
        else (fst acc + 1, snd acc))(0,False) xs