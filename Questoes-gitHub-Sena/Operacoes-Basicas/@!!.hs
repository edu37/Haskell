elemento :: (Num a) => Int -> [a] -> a
elemento _ [] = -1
elemento 0 ys = head ys
elemento x ys 
    | x < 0 = elemento indice ys
    | otherwise = ys !! x
    where
        indice = x + (length ys)