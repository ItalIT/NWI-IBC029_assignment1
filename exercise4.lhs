exercise 4.1
============

It's a good idea to choose infix notation for associative operators such as "+"
because it does not set a predefined evaluation order which reflects the
associativity.

For non-associative operators such as "-" it is probably not a good idea because
we need to use a specific evaluation order which is not clear just from the
infix notation but is inherent to the pre / postfix notation. We must solve this
by setting the associativity of the operators. For the "-" operator this is left
because "a - b - c = (a - b) - c".

Had we used postfix notation it would be "a b - c -" and we would not need to
know the associativity of out operators because there is nothing to
disambiguate.

The same is true for prefix notation which would be "- - a b c" which is not
ambiguous either.


exercise 4.2
============

Subtraction is left associative because that's what we learned in school. It's
pretty arbitrary to chose one over the other. Sometime someone chose for right
associativity and we stuck with it.
We just need to chose one associativity for non-associative operators and then
preferably stick to that associativity. "a - (b - c) != (a - b) - c"

I could not think of a reason why string concatenation should be right
associative. Concatenation is associative "a ++ (b ++ c) == (a ++ b) ++ c" so
choosing for one over the other does not change the result.

I googled for an answer and found this thread ("http://stackoverflow.com" ++
"/questions/20342860/why-is-function-composition-in-haskell-right-associative").
It is explained that right associativity is useful in conjunction with
non-strict evaluation because while it does not cahnge the result it does lead
to less reduction steps.

At the moment I cannot really confirm this. The example the answer's author
gives is sound but I cannot generify this to a general case. I just assume that
it is true in general.

The "$" operator can be used to compose function without explicitly defining the
composition.

Instead of explicity defining "c" as "a . b" and then doing "c x" you can just
use "a $ b $ x". This is more readable than the equivalent "a (b x)". I think
the "$" operator is useful for "ad-hoc composition".


exercise 4.3
============

The operator assumes that the numbers are written in little endian. If we invert
its associativity we change its endianness and have to reorder the binary
digits.


exercise 4.4
============

The fully parenthesized expression is:

((((f x) >= 0) && a) || (((((g x) y) * 7) + 10) == (b - 5)))
