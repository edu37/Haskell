main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myelemIndex a b

getPos :: Eq a => a -> [a] -> Int
getPos value lista
    | value == head lista = 0
    | otherwise = getPos value (tail lista) + 1

myelemIndex :: Eq a => a -> [a] -> Maybe Int
myelemIndex value lista 
    | not $ elem value lista = Nothing
    | otherwise = Just (getPos value lista)