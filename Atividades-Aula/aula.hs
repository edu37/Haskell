gangorra p1 c1 p2 c2
    |esquerdo == direito = 0
    |esquerdo > direito = -1
    |otherwise = 1
    where
        esquerdo = (p1 * c1)
        direito = (p2 * c2)