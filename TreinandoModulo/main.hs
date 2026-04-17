data Person = Person {name :: String, age :: Int} deriving (Show)

data Boss = Boss {person :: Person, salary :: Double} deriving (Show)

pessoa :: String -> Int -> Person
pessoa = Person

boss :: Person -> Double -> Boss
boss = Boss

data Empresario = EPerson Person | EBoss Boss

formacao :: Empresario -> String
formacao (EPerson p) = name p
formacao (EBoss b) = name (person b)