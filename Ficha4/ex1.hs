soma'::Num a => [a] -> a
soma' [] = 0
soma' (x:xs) = x + soma' xs

-- -b) 
replicate':: Int -> a -> [a] 
replicate' n x 
    | n < 0 = []
    | n == 1 = [x]
    | otherwise  = x:replicate' (n-1) x