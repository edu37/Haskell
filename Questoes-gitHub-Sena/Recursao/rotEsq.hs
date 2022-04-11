
rotEsq :: Int -> [a] -> [a]
rotEsq 0 xs = xs
rotEsq n xs = rotEsq (n-1) rotacionada
    where
        rotacionada = tail xs ++ [head xs]

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b