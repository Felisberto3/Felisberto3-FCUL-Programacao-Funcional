factorial 0 = 1
factorial x = x * factorial (x - 1)

f 0 a b = a
f x a b = f (x - 1) b (a + b)

listNf = [(x, f x 0 1) | x <- [0 ..]]

--  using function sum and product

sumElement n = sum ([y | (x, y) <- take n listNf])

productElement n = product ([y | (x, y) <- take n listNf, y /= 0])

-- enumerate upperCase and lowerCase latter
enumUpper w = length [x | x <- w, x `elem` ['A' .. 'Z']]

enumLower w = length [x | x <- w, elem x ['a' .. 'z']]

-- using cycle, it works like cycle [1,2,3] and the result is [1,2,3,1,2,3,1,2,3,1,2,3..]

cycleL list n = take n (cycle list)

-- using repeat, it works like:  repeat 5 the result is [5,5,5,5,5,5,5,5..]
oneElemL element lengthL = take lengthL (repeat element)

-- numero Binarios

b 0 = [0]
b 1 = [1]
b x = b (div x 2) ++ [mod x 2]

-- como usar o | no haskell