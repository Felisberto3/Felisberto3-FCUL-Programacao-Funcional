-- 9. Utilizando uma lista em compreensão escreva uma expressão que
-- calcule a soma 1^2 + 2^2 + ... + 100^2 dos quadrados dos primeiros 100 inteiros.

compreensao = sum [x ^ 2 | x <- [1 .. 100]]

compRecursivo 1 = 1
compRecursivo x = x ^ 2 + compRecursivo (x - 1)
