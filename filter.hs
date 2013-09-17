filter'::(a->Bool)->[a]->[a]
filter' _ [] = []
filter' f xs = [ a | a<-xs, f a ]
