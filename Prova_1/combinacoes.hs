
-- Incompleta -- Vizualizei a dica --

{- Tentei fazer uma função que me desse todas as combinações possíveis
   de acordo com a lista, e depois utilizar um fold para entregar apenas as 
   combinações válidas, utilizando a função polígono que está na prova também.
   Porém não consegui desenvolver muito bem, mesmo olhando a dica, tentei fazer
   até o final do tempo mas mesmo assim não consegui. -}

main :: IO()
main = do
    a <- readLn :: IO [Int]
    print $ combinacoes a

-- Função já criada nessa Prova, sendo reutilizada --
poligono :: [Int] -> Bool
poligono xs = somaMenores > maior
    where
        somaMenores = (sum xs) - maior
        maior = foldl (\acc x -> if x > acc then x else acc)0 xs

_getAll :: [Int] -> (Int,Int,Int)
_getAll (x:y:z:xs) = _getAll x:xs

getAll :: [Int] -> [(Int,Int,Int)]
getAll ([]) = ()
getAll (_:[]) = ()
getAll (_:y:[]) = [()]
getAll (x:xs) = getAll xs ++ _getAll x:xs

combinacoes :: [Int] -> [(Int,Int,Int)]
combinacoes [] = [(-1,-1,-1)]
combinacoes xs = foldl(\acc (a,b,c) -> if poligono [a,b,c] then acc ++ [(a,b,c)] else acc)[primeiraCombinacao] todasCombinacoes
    where
        todasCombinacoes = getAll xs
        primeiraCombinacao = head todasCombinacoes