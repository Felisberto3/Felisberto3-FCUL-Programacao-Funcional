import Data.Type.Coercion (trans)

transp :: [[a]] -> [[a]]
transp [] = []
transp ([] : _) = []
transp m = map head m : transp (map tail m)

multM m1 m2 = [[sum (zipWith (*) ml mr)] | ml <- m1, mr <- transp m2]