repBinaria :: Int -> Int
repBinaria n = aux n 0
  where
    aux n i
      | n < 0 = error " O número não pode ser negativo!"
      | n < 2 = n * 10 ^ i
      | otherwise = aux (div n 2) (i + 1) + (mod n 2) * 10 ^ i

odioso :: Int -> Bool
odioso n = mod (aux (repBinaria n)) 2 == 1
  where
    aux x
      | x < 2 = x
      | otherwise = aux (div x 10) + mod x 10