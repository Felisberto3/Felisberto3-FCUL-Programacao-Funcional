-- 13. Defina a lista infinita com todas as potências de dois.

listInfinita = [2 ^ x | x <- [1 ..]]

listaInfinita = infinity 1
  where
    infinity x = 2 ^ x : infinity (x + 1)
