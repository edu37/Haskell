
list = [3..7]
e = [x | x <- list, x /= 6]
b = filter (/= 6) list 

tru = b == e

-- chamar o nome e passar as variáveis
-- funções

soma x y = x + y 

quantDgt x
    | x < 10 = 1
    | otherwise = 1 + quantDgt(x / 10)

a = head [1..9]



z = 6/4

f 0 = 1
f x = 2 * f (x - 1)

elevate x y = x ^ y



qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = 
    qsort menores ++ [x] ++ qsort maiores
    where
        menores = [e | e <- xs, e < x]
        maiores = [e | e <- xs, e >= x]

{- 
4, 3, 2, 9, 5

3, 2   4   9,  5

2, 3    4   5,  9
-}

-- passar uma lista e ver quantos iguais
comparaIguais x [] = 0 
comparaIguais x (y:ys)
    |x == y = 1 + comparaIguais x ys
    |otherwise = 0


-- Calculo da sequencia de Collatz

-- Devolve uma sequência de um número arbitrário
sequencia :: Int -> [Int]
sequencia 0 = [0]
sequencia 1 = [1]
sequencia x
    | even x = x: sequencia (x `div` 2)
    | otherwise = x: sequencia ((x*3) + 1)


{- Primeiro: pega uma sequencia para cada numero da lista
-- Segundo: pega o tamanho de cada sequencia dentro da lista
-- Terceiro: pega todos os elementos(que são tamanhos das sequencias) maiores que n
-- Quarto: Calcula o tamanho dessa nova lista, mostrando assim todos os elementos da primeira 
           lista passada pela função que tem a sequencia de Collatz maior do que 15 -}
calculo :: Int -> [Int] -> Int        
calculo n = length . filter (>n) . map length . map sequencia


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
                quando o predicado não estiver sendo satisfeito, a função para
        ex: ghci> takeWhile (/=' ') "elefantes é que sabem fazer festa"
            "elefantes"
-}
