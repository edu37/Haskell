toRNA :: String -> Either Char String
findInvalidChar :: String -> Char
getRNA :: Char -> Char

findInvalidChar [] = ' '
findInvalidChar (x:[])
    | x /= 'A' && x /= 'C' && x /= 'G' && x /= 'T' = x
    | otherwise = ' '
findInvalidChar (x:xs) 
    | x /= 'A' && x /= 'C' && x /= 'G' && x /= 'T' = x
    | otherwise = findInvalidChar xs

getRNA x
    | x == 'A' = 'U'
    | x == 'C' = 'G'
    | x == 'G' = 'C'
    | x == 'T' = 'A'
    | otherwise = ' '

toRNA xs 
    | char == ' ' = Right [getRNA x | x <- xs]
    | otherwise = Left char
    where
        char = findInvalidChar xs

-- Solução Simplificada -> Exercism:
{- toRNA = traverse x 
    where
        x 'A' = Right 'U'
        x 'C' = Right 'G'
        x 'G' = Right 'C'
        x 'T' = Right 'A'
        x y = Left y -}