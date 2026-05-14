-- 2. Qual a diferença entre as seguintes funções? Discuta o tipo de cada uma.
-- (a) add1 (x, y)= x + y :: Num a => (a, a )-> a
-- (b) add2 x y = x + y ::  Num a => a -> a -> a
-- (c) add3 x = (x+) :: Num a => a -> a-> a ou Num a => a -> (a-> a)

-- Escreva a função sucessor:: Int -> Int recorrendo a cada uma
-- delas
sucessor1 :: (Num a) => a -> a
sucessor1 x = add1 (x, 1)
  where
    add1 (x, y) = x + y

sucessor2 :: (Num a) => a -> a
sucessor2 = let add2 a b = a + b in add2 1

sucessor3 :: (Num a) => a -> a
sucessor3 = add3 1
  where
    add3 x = (x +)
