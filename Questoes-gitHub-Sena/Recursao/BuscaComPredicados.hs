myReplicate :: Eq a => Int -> a -> [a]
myReplicate 0 _ = []
myReplicate x tipo = [tipo] ++ myReplicate (x-1) tipo 

main :: IO()
main = do
    print $ myReplicate 4 0 == [0, 0, 0, 0]
    print $ myReplicate 2 True == [True, True]
    print $ myReplicate 3 "banana" == ["banana", "banana", "banana"]