-- escreva funçõe sem pattern matching
-- (a) O primeiro elemento de um par
fstPar :: (a, b) -> a
fstPar a = fst a

-- fstPar
fstPar2 :: (a, b) -> a
fstPar2 = fst

-- (b) Um dado par com a ordem dos elementos trocados

parTrocado :: (a, b) -> (b, a)
parTrocado par = (snd par, fst par)

-- (c) O primeiro elemento de um triplo
-- Nao tem como fazer sem pattern Matching

-- O segundo elemento de uma lista
sndInList :: [a] -> a
sndInList = head . tail

-- mais completo
sndInList2 list =
  if length list > 1
    then head (tail list)
    else error "lista deve ter mais de 1 elemento"

-- (f) O segundo elemento do primeiro par de uma lista de pares
parList :: [(a, b)] -> b
parList = snd . head . tail

-- forma mais completa

parList2 :: [(a, b)] -> b
parList2 list =
  if length list > 1
    then snd (head (tail list))
    else error " Lista deve ter mais de 1 elemento"
