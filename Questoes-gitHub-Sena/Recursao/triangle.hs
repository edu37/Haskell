
getLines :: Int -> Int -> [Int]
getLines _ 0 = []
getLines first quant = first: (getLines (first+1) (quant-1))

line :: Int -> [Int]
line 0 = []
line x = getLines (first) x
    where
        first = (sum [0..x-1]) + 1

triangle :: Int -> [[Int]]
triangle 0 = []
triangle x = triangle (x-1) ++ [line x] 

main :: IO()
main = do
    a <- readLn :: IO Int
    print $ triangle a