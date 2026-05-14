aplica :: [a -> a] -> [a] -> [a]
aplica [] list = list
aplica (f : fs) list = aplica fs (aplicaFuncoes f list)
  where
    aplicaFuncoes _ [] = []
    aplicaFuncoes f (x : xs) = f x : aplicaFuncoes f xs

aplica' :: [a -> a] -> [a] -> [a]
-- FORMA MAIS FACIL DE ENTENDER:
--  aplica' funcList list = foldr (\ f acc->  map f acc  )  list  funcList
aplica' funcList list = foldr map list funcList

aplica'' :: [a -> a] -> [a] -> [a]
aplica'' listFuncoes list = foldl (\acc f -> map f acc) list listFuncoes