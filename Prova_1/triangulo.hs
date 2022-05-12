
-- Completa -- Não vizualizei a dica --

main :: IO()
main = do 
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ triangulo a b c

triangulo :: Int -> Int -> Int -> Bool
triangulo x y z 
    | x >= y && x >= z = (y + z) > x
    | y >= x && y >= z = (x + z) > y
    | otherwise = (y + x) > z