import Geometry

m = sphereArea

data Person = Person {name :: String, age :: Int} deriving (Show)

p :: Person
p = Person "Felisberto" 20

---------- data
data Car = Car {carName :: String, owner :: Person} deriving (Show)

c :: String -> (String, Int) -> Car
c carName (pname, page) = Car carName (Person pname page)

data Things = Gate String Double | Dog String Double deriving (Show)

gato :: Things
gato = Gate "Mimi" 23.6

falaAnimal :: Things -> String
falaAnimal (Gate fAname weight) = "{ name: " ++ fAname ++ " peso:" ++ show weight ++ "}"
falaAnimal (Dog fAname weight) = "{ name: " ++ fAname ++ " peso:" ++ show weight ++ "}"