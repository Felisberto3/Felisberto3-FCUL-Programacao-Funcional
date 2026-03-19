-- 3. Defina a função somaVec :: (Double,Double)-> (Double,
-- Double)-> (Double,Double) que soma dois vetores no plano
-- representados por pares. Utilize pattern matching.

somaVec :: (Double, Double) -> (Double, Double) -> (Double, Double)
somaVec (x, y) (a, b) = (x + a, y + b)

-- outra forma por capricho
somaVec2 p1 p2 = p3
  where
    p3 = (fst p1 + fst p2, snd p1 + snd p2)