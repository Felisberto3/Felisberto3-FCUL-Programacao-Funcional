f :: (Num a, Ord a) => a -> a -> a -> Bool
f x y z = abs (y - x) < z
