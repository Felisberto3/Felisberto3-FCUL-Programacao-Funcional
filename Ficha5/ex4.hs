zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys

-- b) ------------------Com Lista em compreensao-----------
zipWith'' :: (a -> a -> a) -> [a] -> [a] -> [a]
zipWith'' f list1 list2 = [f (list1 !! i) (list2 !! i) | i <- [0 .. min (length list1) (length list2) - 1]]

-- c) -------------------- Alinea C
zip' :: [a] -> [b] -> [(a, b)]
-- essa é a forma mais simples => zip'  = zipWith (\x y -> (x, y))
zip' = zipWith (,)
