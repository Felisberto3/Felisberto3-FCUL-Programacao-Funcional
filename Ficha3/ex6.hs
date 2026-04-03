quadrante :: (Ord a, Num a) => (a, a) -> String
quadrante (x, y)
  | x > 0 && y > 0 = "Q1 (Primeiro Quadrante)"
  | x < 0 && y > 0 = "Q2 (Segundo Quadrante)"
  | x < 0 && y < 0 = "Q3 (Terceiro Quadrante)"
  | otherwise = "Q4 (Quarto Quadrante)"