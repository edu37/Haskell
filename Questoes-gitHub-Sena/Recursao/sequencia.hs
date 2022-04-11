
sequencia :: Int -> Int -> [Int]
sequencia 0 _ = []
sequencia n m = m:(sequencia (n-1) (m+1))

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b