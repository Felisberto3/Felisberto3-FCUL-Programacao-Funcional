-- a
perfeito n = [i | i <- [1 .. n - 1], mod n i == 0]

-- para intervalos, taxes rages é o mais simples de se usar.
factores n = factoresAux n 1
  where
    factoresAux n i
      | i >= n = []
      | mod n i == 0 = i : factoresAux n (i + 1)
      | otherwise = factoresAux n (i + 1)

perfeitos' lim = perfeitosAux lim 1
  where
    perfeitosAux lim i
      | i >= lim = []
      | i == sum (factores i) = i : perfeitosAux lim (i + 1)
      | otherwise = perfeitosAux lim (i + 1)

-- calcular of factores e somatorio de forma recursiva.
-- b
perfeitos n = [i | i <- [1 .. n], sum (perfeito i) == i]