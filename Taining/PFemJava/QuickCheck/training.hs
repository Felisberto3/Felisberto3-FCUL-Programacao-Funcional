import Test.QuickCheck
import Test.QuickCheck (Property)

soma :: (Num a, Eq a) => a -> Bool
soma x = x + 1 == x + 2

prop_errada :: [Int] -> Bool
prop_errada xs = reverse xs == xs

prop_reverseLength :: [a] -> Bool
prop_reverseLength xs = length (reverse xs) == length xs

prop_somaPositiva :: Int -> Int -> Bool
prop_somaPositiva x y = x + y > x

prop_lastIsHeadReverse :: (Eq a) => [a] -> Property
prop_lastIsHeadReverse xs = not (null xs) ==> last xs == head (reverse xs)

gerarLista2ouMais' :: Gen [Int]
gerarLista2ouMais' = do
  n <- choose (2, 20)
  vectorOf n arbitrary

gerarLista2ouMais :: Gen [Int]
gerarLista2ouMais = do
  x <- arbitrary
  y <- arbitrary
  resto <- arbitrary
  return (x : y : resto)

verificargenListMaior2 :: Property
verificargenListMaior2 =
  forAll gerarLista2ouMais $ \x -> length x >= 2

prop_verificarSeMaiorq2 :: Property
prop_verificarSeMaiorq2 = property $ do
  list <- gerarLista2ouMais
  return $ length list >= 2
