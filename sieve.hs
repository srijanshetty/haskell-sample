sieve::(Integral t)=>[t]->[t]
sieve [] = []
sieve (x:xs) 
    | x ==1 = sieve xs
    | otherwise = x:sieve [a | a<-xs, a `mod` x /= 0]
