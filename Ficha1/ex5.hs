-- verifica se o tamanho da list é maior que 10
-- @params list é uma list
-- @return True se a lista é maior que 10 e False caso contrario
funcaoMaiorQue10 list = length list > 10

isVazio list = null list

takeOutElement a = init (tail a)

secondElement list = list !! 1

beforeLast list = last (init list)

beforeLast2 list = list !! (length list - 2)