
acumulador :: Int -> [Int] -> [Int]
acumulador _ [] = []
acumulador y (x:xs) = (x+y): acumulador (y+x) xs 

listacc :: [Int] -> [Int]
listacc [] = []
listacc [x] = [x]
listacc xs = acumulador 0 xs

main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ listacc a