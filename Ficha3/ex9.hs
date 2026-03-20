-- 9. Considere a função safetail que se comporta como tail, excepto
-- que transforma a lista vazia na lista vazia. Defina safetail utilizando:
-- (a) uma expressão condicional,
-- (b) equações com guardas,
-- (c) pattern matching.
-- (d) uma expressão case.
safetail [] = []

-- a)
safetail1 :: [a] -> [a]
safetail1 list = if null list then [] else tail list

safetail2 :: [a] -> [a]
safetail2 list
  | null list = []
  | otherwise = tail list

safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 (_ : x) = x

safetail4 list = case list of
  [] -> []
  (_ : x) -> x