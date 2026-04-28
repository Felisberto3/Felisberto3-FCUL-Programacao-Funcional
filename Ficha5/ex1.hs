import Data.Char

-- 1. Descreva o comportamento e um tipo para cada uma das seguintes
-- secções.
-- (a) (*2)
-- Comportamento: Multiplica a por 2
-- :: Num a => a -> a
-- (b) (>0)
-- Comportamento: Verifica se a > que 0
-- :: (Ord a, Num a) => a -> Bool
-- (c) (1/)
-- Comportamento: Acha o inverso de um numero
-- :: Fractional a => a -> a
-- (d) (/2)
-- Comportamento: Acha a metade de um numero
-- :: Fractional a => a -> a
-- (e) (+1)
-- Comportamento: Soma um numero a 1.
-- :: Num a=> a->a
-- (f) (++"\n")
-- Comportamento: Junta duas Strings.
-- :: String -> String

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

-- 3. Determine um tipo e o valor para cada expressão.
-- (a) map (+1)[1..3]
------------ ::( Num a, Enum a) => a
------------ [2,3,4]
-- (b) map (>0)[3,-5,-2,0]
------------ :: [Bool]
------------ [True, False, False, False]
-- (c) map (++"s")["A", "arte", "do", "aluno"]
------------ :: [String]
------------ ["As", "artes", "dos", "alunos"]
-- (d) map ("s"++)["o", "aluno","bem-comportado"]
------------ :: [String]
------------ ["so", "saluno","sbem-comportado"]
-- (e) let f x = x * x in map (map f)[[1,2],[3,4,5]]
------------ ::Num a =>  [[a]]
------------ [[1,4],[9,16,25]]
-- (f) filter (>5)[1..6]
------------ ::(Num a, Enum a , Ord a) =>  [a]
------------ [6]
-- (g) filter even [1..10]
------------ ::(Integral a) =>  [a]
------------ [2,4,6,8,10]
-- (h) filter (>0)(map (^2)[-3..3])
------------ ::[Integer]
------------ [9,4,1,0,1,4,9]
-- (i) map (^2)(filter (>0)[-3..3])
------------ ::[Integer]
------------ [1,2,3]
encode :: Int -> [Char] -> [Char]
encode shift msg =
  let ords = map ord msg
      shifted = map (+ shift) ords
   in map chr shifted

decode :: Int -> String -> String
decode shift = encode (negate shift)