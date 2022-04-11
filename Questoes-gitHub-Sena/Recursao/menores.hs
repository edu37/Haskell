{- Resolução funciona supondo que getMaior só será chamada pela função menores, 
   desta forma nunca será mandada uma lista vazia para getMaior-}

getMaior :: [Int] -> Int
getMaior [y] = y
getMaior (y:ys) = max y (getMaior ys) 

deleteElem :: Int -> [Int] -> [Int]
deleteElem _ [] = []
deleteElem x (y:ys)
    | x == y = ys
    | otherwise = y: deleteElem x ys

menores :: Int -> [Int] -> [Int]
menores 0 _ = []
menores _ [] = []
menores x ys
    | x < length ys = menores x $ deleteElem (getMaior ys) ys
    | otherwise = ys

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b