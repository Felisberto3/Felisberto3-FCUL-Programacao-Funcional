reverse1 [] = []
reverse1 (x : xs) = reverse1 xs ++ [x]

-- diferença entre ++ e :