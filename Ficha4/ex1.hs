soma'::Num a => [a] -> a
soma' [] = 0
soma' (x:xs) = x + soma' xs

-- -b) 
replicate':: Int -> a -> [a] 
replicate' n x 
    | n < 0 = []
    | n == 1 = [x]
    | otherwise  = x:replicate' (n-1) x

maximo:: Ord a => [a] -> a
maximo [x] = x
maximo (x:xs) 
    | x> maximo(xs)  = x
    | otherwise = maximo(xs)

elem' :: Eq a => a -> [a] -> Bool
elem' _ []  = False
elem' n (x:xs) =  x == n  || elem' n (xs)