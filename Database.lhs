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

Hendrik Werner // s4549775
Jasper Haasdijk // s4449754

exercise 1.1

> hendrik, jasper :: Person
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

exercise 1.6

Note: I made functions containing the expressions to test and combine them.

The expression part is on the right side of the "=". For example the expression
for 1.6 a is "map increaseAge ps" where "ps" is [Person].

1.6 a

> incrementAge :: [Person] -> [Person]
> incrementAge ps = map increaseAge ps

1.6 b

> promote :: [Person] -> [Person]
> promote ps = map (\ (n, a, c) -> ("dr " ++ n, a, c)) ps

1.6 c

> findFritss :: [Person] -> [Person]
> findFritss ps = filter (\ (n, _a, _c) -> (n == "Frits")) ps

1.6 d

helper function

> isFavouriteCourse :: Person -> FavouriteCourse -> Bool
> isFavouriteCourse (_n, _a, c) fc = c == fc

> findFunctionalProgrammers :: [Person] -> [Person]
> findFunctionalProgrammers ps = filter (\p -> isFavouriteCourse p "Functional Programming") ps

1.6 e

> findYoungsters :: [Person] -> [Person]
> findYoungsters ps = filter (\p -> age p >= 20 && age p <= 29) ps

1.6 f

> findYoungFunctionalProgrammmers :: [Person] -> [Person]
> findYoungFunctionalProgrammmers ps = findYoungsters (findFunctionalProgrammers ps)

1.6 g

> findYoungImperativeProgrammers :: [Person] -> [Person]
> findYoungImperativeProgrammers ps = filter (\p -> isFavouriteCourse p "Imperative Programming") (findYoungsters ps)
