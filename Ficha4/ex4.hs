insert :: (Ord a) => a -> [a] -> [a]
insert n [] = [n]
insert n (x : xs)
  | n > x = x : insert n xs
  | otherwise = n : x : xs
