import Test.QuickCheck

gerarPares :: Gen Int
gerarPares = suchThat arbitrary even

listPares :: Gen [Int]
listPares = listOf $ suchThat arbitrary even

prop_PareVazia :: Property
prop_PareVazia =
  forAll listPares $ \xs -> null xs
