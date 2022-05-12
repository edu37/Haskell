
-- Completa -- Não vizualizei a dica --

main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ poligono a

poligono :: [Int] -> Bool
poligono xs = somaMenores > maior
    where
        somaMenores = (sum xs) - maior
        maior = foldl (\acc x -> if x > acc then x else acc)0 xs