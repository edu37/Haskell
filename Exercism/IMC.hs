calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
{- Para cada 'w' e 'h' de 'xs' chamamos a função bmi, passando como parametro 'm' e 'w' e então, 
    definimos a função bmi utilizando "where" -}
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2