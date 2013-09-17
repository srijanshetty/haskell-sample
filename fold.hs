foldl' f y (x:xs) = f y x:foldl' f y xs
