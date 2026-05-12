maxWeight :: [([[Float]], [Float])] -> Float
maxWeight ((a, b) : xs) =
  foldl (\acc (f, s) -> maximum [maximum $ map maximum f, (maximum s), acc]) (max (maximum $ map maximum a) (maximum b)) xs
