main = do
    name <- getLine
    putStrLn $ upperName name

upperName::String->String
upperName [] = []
upperName xs = foldr (\x acc -> if (x `elem` ['A'..'Z']) then x:acc else acc) [] xs
