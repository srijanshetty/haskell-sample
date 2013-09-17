data Vector t = Vector t t t deriving(Show)

vplus::(Num t)=>Vector t->Vector t->Vector t
Vector i j k `vplus` Vector x y z = Vector (i+x) (j+y) (k+z) 
