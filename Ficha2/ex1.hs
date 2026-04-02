-- 1-a) (Int,Int,Int)
-- 1-b) [Int]
-- 1-c)  [(Int, Int)]
-- 1-d) type Aluno = (String, Int, [(String, Int)])
-- 1-e) [Aluno]
-- 1-f) [String]
-- 1-g) [[String]]

-- 2. Quais das seguintes frases são expressões Haskell?
-- (a) ['a','b','c'] R.: Sim, porque  [Char]
-- (b) ('a','b','c') R.: Sim, porque (Char, Char, Char)
-- (c) ['a',True]   R.: Não.
-- (d) [True, False]  R.: Sim, porque [Bool]
-- (e) ["a disciplina de PP", "é fixe"] R.: Sim, porque [String]
-- (f) [('a',False),('b',True)]  R.: Sim, porque [(Char, Bool)]
-- (g) [isDigit 'a', isLower 'f', isUpper 'h'] R.: Sim, porque [Bool]
-- (h) (['a', 'b'], [False, True])  R.: Sim, porque ([Char], [Bool])
-- (i) [['a', 'b'], [False, True]] R.: Não.
-- (j) [isDigit, isLower, isUpper] R.: Sim, porque [Char -> Bool]

-- 5. Encontre o valor e um tipo para cada expressão abaixo.
-- (a) splitAt (length ['a','b','c','d'])[1..5]:: (Num a, Enum a) => ([a], [a])
-- (b) tail (init (tail (init ['a'..'z']))) :: [Char]
-- (c) take 2 (drop 4 (replicate 6 'p')) :: [Char]

-- 6. Qual o tipo (definido sobre classes de tipo) das seguintes funções?
-- (a) f1 x y = x < y:: (Ord a) => a-> a-> Bool
-- (b) f2 x y z = x == y || z:: (Eq a) => a-> a-> Bool-> Bool
-- (c) f3 x y z = x == (y || z) :: Bool-> Bool -> Bool -> Bool
-- (d) f4 x y = show x ++ y:: (Show a) => a-> String -> String
-- (e) f5 x y = show (x ++ y):: (Show a) -> [a] -> [a]-> String
-- (f) f6 x y z = x + y > z:: (Ord a, Num a) => a -> a -> a-> Bool

-- 7. Verdadeiro ou falso?
-- (a) f1 tem tipo Int -> Int -> Bool R.: Sim
-- (b) f1 tem tipo Integer -> Integer -> Bool R.: Não
-- (c) f1 tem tipo Int -> Integer -> Bool R.: Não
-- (d) f2 tem tipo [Char] -> [Char] -> Bool -> Bool R.: Não
-- (e) f2 tem tipo [a] -> [a] -> Bool -> Bool R.: Não
-- (f) f4 tem tipo Bool -> [Char] -> [Char] R.: Não
-- (g) f4 tem tipo (Int -> Int)-> [Char] -> [Char] R.: Não

-- 8. Qual o tipo mais geral das seguintes funções?
-- (a) second xs = head (tail xs):: [a] -> a
-- (b) swap (x,y)= (y,x):: (a,b) -> (b,a)
-- (c) pair x y = (x,y):: x-> y -> (x,y)
-- (d) double x = 2*x:: Num a => a -> a
-- (e) palin xs = reverse xs == xs :: Eq a => [a] -> Bool
-- (f) twice f x = f (f x):: (a-> a) -> a -> a