exercise 2

2.1

insertionSort (7:(9:(2:[])))
insert 7 (insertionSort 9:(2:[]))
insert 7 (insert 9 (insertionSort (2:[])))
insert 7 (insert 9 (insert 2 (insertionSort [])))
insert 7 (insert 9 (insert 2 []))
insert 7 (insert 9 (2:[]))
insert 7 (insert 9 [2])
insert 7 (2:insert 9 [])
insert 7 (2:9:[])
insert 7 (2:[9])
insert 7 ([2, 9])
2:insert 7 [9]
2:7:[9]
2:[7, 9]
[2, 7, 9]

2.2

> twice :: (a -> a) -> a -> a
> twice f x = f(f x)

twice ("|"++) ""
eval: 2^1 streepjes ("||")

twice twice ("|"++) ""
eval: 2^2 = 4 streepjes ("||||")

twice twice twice ("|"++) ""
eval: 2^4 = 16 streepjes ("||||||||||||||||")

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
