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
maximo [] = error "A lista nao pode estar vazia"
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

-- g)
zip':: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) :zip' xs ys


-- h)
potencias:: Integer -> [Integer] -> [Integer]
potencias _ [] = []
potencias n (x:xs) = n^x:potencias n xs

-- i)
frase :: Int -> [(Int, String)] -> String
frase _ [] = []
frase n ((key, value):rest) 
    | n == key = value ++ frase n rest
    | otherwise = frase n rest

-- j)
trocaPares:: [a] -> [a]
trocaPares [] = []
trocaPares [x] = [x]
trocaPares (x:y:resto) = y:x:trocaPares resto

-- l)
multiplos:: [Int] -> Int -> [Int]
multiplos [] _ = []
multiplos (x:xs) n
    | x `mod` n == 0  = x: multiplos xs n 
    | otherwise = multiplos xs n 

-- m)
posicoes :: [Int] -> Int -> [Int]
posicoes list n = aux list n 0
    where 
        aux [] _ _ = []
        aux (x:xs) n pos 
            | x `mod` n == 0 = pos: aux xs n (pos+1)
            | otherwise = aux xs n (pos + 1) 
-- k)
fusao::(Ord a, Num b) => [(a,b)] -> [(a,b)] -> [(a,b)]
fusao [] [] = []
fusao xs [] = xs
fusao [] ys = ys
fusao list1@((k1, v1):xs) list2@((k2,v2):ys) 
    | k1 <  k2 = (k1, v1) : fusao xs list2
    | k1 >  k2 = (k2, v2) : fusao list1 ys
    | otherwise =  (k1, v1 + v2) : fusao xs ys


