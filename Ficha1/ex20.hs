transp :: [[a]] -> [[a]]
transp [] = []
transp ([] : _) = []
transp m = map head m : transp (map tail m)

multM m1 m2 = [[sum (zipWith (*) ml mr) | mr <- transp m2] | ml <- m1]