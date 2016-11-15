> twice f x = f(f x)

twice ("|"++) ""
eval: 2^1 streepjes ("||")

twice twice ("|"++) ""
eval: 2^2 = 4 streepjes ("||||")

twice twice twice ("|"++) ""
eval: 2^4 = 16 streepjes "||||||||||||||||"

twice twice twice twice ("|"++) ""
eval: 2^16 = 65536 streepjes

twice (twice twice) ("|"++) ""
eval: 2^4 = 16 streepjes

twice twice (twice twice) ("|"++) ""
eval: 2^8 = 256 streepjes


twice (twice (twice twice)) ("|"++) ""
eval: 2^8 = 256 streepjes

----------------------------------------

"twice" rhymes with "twice" so there is rhyme but I could not identify the
rythm.

The pattern is that by applying "twice" to the expression you square the
exponent. We had 2^4 streepjes and applied "twice" and got 2^4^2 = 2^16
streepjes.
Furthermore "(twice twice)" is "twice . twice" and "twice (twice x)" is the same
as "twice twice x".
