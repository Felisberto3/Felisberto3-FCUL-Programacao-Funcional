import Test.QuickCheck

data Pessoa a = Pessoa String Int a

class Sala a where
  criar :: String -> Int -> a -> Pessoa a
  igual :: (Eq a) => Pessoa a -> Pessoa a -> Bool

instance Sala a where
  criar = Pessoa
  igual (Pessoa _ _ c1) (Pessoa _ _ c2) = c1 == c2

instance (Show a) => Show (Pessoa a) where
  show (Pessoa a b c) = "[ name:" ++ a ++ " idade: " ++ show b ++ " cargo: " ++ show c ++ " ]"

prop_reverso :: [Int] -> Bool
prop_reverso xs = reverse (reverse xs) == xs

myTeste :: [Int] -> Bool
myTeste list = length list == length (reverse list)

data MayBe a = Justo a | Nada

instance (Show a) => Show (MayBe a) where
  show (Justo a) = show a
  show Nada = "**"

instance (Eq a) => Eq (MayBe a) where
  Justo a == Justo b = a == b
  Nada == Nada = True
  _ == _ = False

class YesNo a where
  yesNo :: a -> Bool

instance YesNo (Maybe a) where
  yesNo (Just _) = True
  yesNo (Nothing) = False