dropUntil' :: (a -> Bool) -> [a] -> [a]
dropUntil' f (x : xs)
  | f x = x : xs
  | otherwise = dropUntil' f xs