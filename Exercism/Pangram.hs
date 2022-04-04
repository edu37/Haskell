import Data.Char


-- Verifica cada letra do texto enviado para ver se possui o character do parametro 'x'
verifyText :: Char -> [Char] -> Bool
verifyText x ys
    |ys == [] = False
    |x == head ys = True
    |otherwise = verifyText x (tail ys)

-- Conta quantas das 26 letras do alfabeto estão presentes no texto
count :: String -> [Int]
count xs = [ 1 | x <- alphabet, verifyText x text']
    where
        alphabet = ['a'..'z']
        text' = map toLower xs 

isPangram :: String -> Bool
isPangram xs
    |(sum (count xs)) == 26 = True
    |otherwise = False