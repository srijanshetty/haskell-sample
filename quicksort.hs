quicksort::(Ord a)=>[a]->[a]
quicksort [] = []
quicksort (x:xs) = smallerSorted ++ [x] ++ largerSorted
    where smallerSorted = [ a | a<-xs, a<=x ]
          largerSorted = [ a | a<-xs, a>x ]
