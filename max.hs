sum' [] = 0
sum' (x:xs) = x + sum' xs

max' a b 
    | a > b = a
    | otherwise = b
