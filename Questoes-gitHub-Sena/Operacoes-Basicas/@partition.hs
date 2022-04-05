
splitints :: (Int -> Bool) -> [Int] -> ([Int],[Int])
splitints f xs = 
    let passa = [ x | x <- xs, (f x) == True]
        naoPassa = [ x | x <- xs, (f x) == False]
    in
        (passa,naoPassa)