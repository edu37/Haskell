
-- predicado* -> função que retorna um bool
{- Aplicar somente um parâmetro para um função que recebe dois parâmetros, retorna uma função que pega um parâmetro
        ex: ghci> let list = map (*) [0..] - > [(0*),(1*),(2*),(3*),(4*),(5*)..
            ghci> (list !! 4) 5
            20 -}    
{- map ->  para utilizar o map, passa uma função e uma lista: map f xs
            se xs for uma lista de listas, a função 'f' deve ser um map f: map (map f) xs
        ex: ghci> map (>3) [1,5,3,2,1,6,4,3,2,1]   
            [False,True,False,False,False,True,True,False,False,False]
    Ao mapear, é executada uma função em cima dos elementos 
        ex: somar com 3
-}
{- filter -> para utilizar o filter, passa um predicado* e uma lista: filter p xs
        ex: ghci> filter (>3) [1,5,3,2,1,6,4,3,2,1]
            [5,6,4]
    Ao filtrar, é feita uma comparação da função em cima dos elementos
        ex: maior, igual ou menor que 3
-}
{- takeWhile -> para utilizat takeWhile, passa um predicado* e uma lista: takeWhile p xs
                quando o predicado não estiver sendo satisfeito, a função vai parar
        ex: ghci> takeWhile (/=' ') "elefantes é que sabem fazer festa"
            "elefantes"
-}