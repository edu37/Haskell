
fatorial :: Int -> Int
fatorial 0 = 1
fatorial 1 = 1
fatorial x = x * fatorial (x-1)

main :: IO()
main = do
    a <- readLn :: IO Int
    print $ fatorial a