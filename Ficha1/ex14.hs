multVector :: (Num a) => [a] -> [a] -> a
multVector v1 v2 = sum [v1 !! i * v2 !! i | i <- [0 .. min (length v1) (length v2) - 1]]

multVectorZip v1 v2 = sum $ zipWith (*) v1 v2

productoEscalar :: (Num a) => [a] -> [a] -> a
productoEscalar [] _ = 0
productoEscalar _ [] = 0
productoEscalar (x : xs) (y : ys) = x * y + productoEscalar xs ys