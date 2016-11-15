exercise 4.1

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
