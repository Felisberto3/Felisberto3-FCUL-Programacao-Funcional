factorial 0 = 1
factorial x = x * factorial (x - 1)

fib 0 a b = a
fib 1 a b = b
fib x a b = fib (x - 1) b (a + b)

fibo x = fib x 0 1

fibon x = (x, fibo x)

listFibon = [fibon x | x <- [0 ..]]

fibPar = [(x, y) | (x, y) <- [full | full <- take 10 listFibon], even x]