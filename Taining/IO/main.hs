import Data.Char (toUpper)

main :: IO ()
main = do
  putStrLn "Como te chamas?"
  name <- getLine
  putStrLn $ "Ola " ++ name

main2 :: IO ()
main2 = do
  contents <- readFile "./main.hs"
  writeFile "panzo.hs" $ map toUpper contents
