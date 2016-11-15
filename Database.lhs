> {-# LANGUAGE UnicodeSyntax #-}
> module Database
> where
> import Unicode

> type Person  =  (Name, Age, FavouriteCourse)
>
> type Name             =  String
> type Age              =  Integer
> type FavouriteCourse  =  String

> frits, peter, ralf ∷ Person
> frits  =  ("Frits",  33,  "Algorithms and Data Structures")
> peter  =  ("Peter",  57,  "Imperative Programming")
> ralf   =  ("Ralf",   33,  "Functional Programming")

> students   ∷  [Person]
> students   =  [frits, peter, ralf]

> age ∷ Person → Age
> age (_n, a, _c)  =  a

name             ∷ Person → Name
favouriteCourse  ∷ Person → FavouriteCourse
showPerson       ∷ Person → String
twins            ∷ Person → Person → Bool
increaseAge      ∷ Person → Person

----------------------------------------

exercise 1.1

> hendrik = ("Hendrik", 20, "Functional Programming")
> jasper = ("Jasper", 20, "Operating Systems Security")
> students2 = jasper : hendrik : students

exercise 1.2

> name :: Person -> Name
> name (n, _a, _c) = n

> favouriteCourse :: Person -> FavouriteCourse
> favouriteCourse (_n, _a, c) = c

exercise 1.3

> showPerson :: Person -> String
> showPerson (n, a, c) = "Name: " ++ show n
>                        ++ " Age: " ++ show a
>                        ++ " Favourite Course: " ++ show c

exercise 1.4

> twins :: Person -> Person -> Bool
> twins (_n1, a1, _c1) (_n2, a2, _c2) = a1 == a2

exercise 1.5

> increaseAge :: Person -> Person
> increaseAge (n, a, c) = (n, a + 1, c)
