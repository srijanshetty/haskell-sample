quicksort::(Ord a)=>[a]->[a]
quicksort [] = []
quicksort (x:xs) = quicksort smallerSorted ++ [x] ++ quicksort largerSorted
    where smallerSorted = [ a | a<-xs, a<=x ]
          largerSorted = [ a | a<-xs, a>x ]
