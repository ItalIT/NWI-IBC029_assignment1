Hendrik Werner // s4549775
Jasper Haasdijk // s4449754

> oldManCounts :: String -> String
> oldManCounts s = "This old man, he played " ++ s ++ ",\n"

> knickKnack :: String -> String
> knickKnack s = "He played knick-knack on my " ++ s ++ ";\n"

> ending :: String
> ending = "With a knick-knack paddywhack,\n"
>        ++ "Give the dog a bone,\n"
>        ++ "This old man came rolling home.\n"

> verse :: String -> String -> String
> verse a b = oldManCounts a
>           ++ knickKnack b
>           ++ ending

> thisOldMan :: String
> thisOldMan = verse "one" "thumb"
>            ++ "\n" ++ verse "two" "shoe"
>            ++ "\n" ++ verse "three" "knee"
>            ++ "\n" ++ verse "four" "door"
>            ++ "\n" ++ verse "five" "hive"
>            ++ "\n" ++ verse "six" "sticks"
>            ++ "\n" ++ verse "seven" "heaven"
>            ++ "\n" ++ verse "eight" "gate"
>            ++ "\n" ++ verse "nine" "spine"
>            ++ "\n" ++ verse "ten" "again"
