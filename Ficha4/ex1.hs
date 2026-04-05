-- a)
soma'::Num a => [a] -> a
soma' [] = 0
soma' (x:xs) = x + soma' xs

-- -b) 
replicate':: Int -> a -> [a] 
replicate' n x 
    | n < 0 = []
    | n == 1 = [x]
    | otherwise  = x:replicate' (n-1) x

-- c)
maximo:: Ord a => [a] -> a
maximo [x] = x
maximo (x:xs) 
    | x> maximo(xs)  = x
    | otherwise = maximo(xs)

-- -d)
elem' :: Eq a => a -> [a] -> Bool
elem' _ []  = False
elem' n (x:xs) =  x == n  || elem' n (xs)

-- e)
substitui:: Eq a => a-> a-> [a] -> [a]
substitui _ _ [] = []
substitui v1 v2 (x:xs) 
    | v1 == x  = v2: substitui v1 v2 xs
    | otherwise = x:substitui v1 v2 xs

-- f)
altera:: Ord a => [a] -> a-> a -> [a]
altera [] _ _ = []
altera (x:xs) a1 a2 
    |  x < a1 = a2: altera xs a1 a2
    | otherwise = x:altera xs a1 a2

