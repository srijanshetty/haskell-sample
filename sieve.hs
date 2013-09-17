sieve::(Integral t)=>[t]->[t]
sieve [] = []
sieve (x:xs) = x:sieve [a | a<-xs, a `mod` x /= 0]
