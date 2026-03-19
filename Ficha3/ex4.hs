-- 4. As funções abaixo diferem? Se sim, como?
-- (a) hd1 (x:_)= x
-- (b) hd2 :: [Int] -> Int
--    hd2 (x:_)= x
-- (c) hd3 :: [a] -> a
--     hd3 (x : _) = x

-- R.: a) aceita qualquer tipo de lista, ou seja o haskell infere o seu tipo já que não foi explicito,
-- já a c) apenas aceita lista do tipo Int; a c) esta explicitamente genérica.
