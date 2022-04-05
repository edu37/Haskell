main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a

somaImpares :: [Int] -> Int
somaImpares = sum . filter odd