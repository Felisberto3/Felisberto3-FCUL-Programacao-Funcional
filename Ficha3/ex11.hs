eq2grau :: (Floating b) => b -> b -> b -> (b, b)
eq2grau a b c = (x1, x2)
  where
    delta = b ^ 2 - 4 * a * c
    x1 = (-b + sqrt delta) / 2
    x2 = (-b - sqrt delta) / 2