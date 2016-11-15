exercise 3

3.1

twice (+1) 0
f (f x) {f := (+1), x := 0}
(+1) ((+1) 0)
(+1) 1
2

twice twice (*2) 1
f (f x) {f := twice, x := (*2)} 1
twice (twice (*2)) 1
f (f x) {f := (twice (*2)), x:= 1}
???

3.2

The type of twice is

> twice :: (a -> a) -> a -> a
> twice f x = f (f x)
