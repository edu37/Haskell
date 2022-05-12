
-- Completa -- Não vizualizei a dica --

main :: IO()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ index_of a b

getIndexOf :: [Int] -> Int -> Int -> Int
getIndexOf [] _ _= -1
getIndexOf (x:xs) value acc
    | x == value = acc
    | otherwise = getIndexOf xs value (acc+1)

index_of :: [Int] -> Int -> Int
index_of xs value = getIndexOf xs value 0