repBinaria :: Int -> Int
repBinaria n = read $ auxBinaria n
  where
    auxBinaria n
      | n < 0 = error "O número não pode ser negativo!"
      | n < 2 = show n
      | otherwise = auxBinaria (div n 2) ++ show (mod n 2)

repBinaria2 :: Int -> Int
repBinaria2 n = aux n 0
  where
    aux n i
      | n < 0 = error " O número não pode ser negativo!"
      | n < 2 = n * 10 ^ i
      | otherwise = aux (div n 2) (i + 1) + (mod n 2) * 10 ^ i