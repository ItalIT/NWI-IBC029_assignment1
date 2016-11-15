> {-# LANGUAGE UnicodeSyntax #-}
> module Shapes
> where
> import Unicode

> data Shape
>   =  Circle Double            -- radius
>   |  Square Double            -- length
>   |  Rectangle Double Double  -- length and width
>   deriving (Show)

> showShape ∷ Shape → String
> showShape (Circle r)       =  "circle of radius " ++ show r
> showShape (Square l)       =  "square of length " ++ show l
> showShape (Rectangle l w)  =  "rectangle of length " ++ show l
>                                 ++ " and width " ++ show w

area        ∷ Shape → Double
perimeter   ∷ Shape → Double
center       ∷ Shape → (Double, Double)  -- x- and y-coordinates
boundingBox  ∷ Shape → (Double, Double)  -- width and height

----------------------------------------

Hendrik Werner // s4549775
Jasper Haasdijk // s4449754

exercise 6

> area (Circle r) = pi * r * r
> area (Square l) = l * l
> area (Rectangle l w) = l * w

> perimeter (Circle r) = 2 * pi * r
> perimeter (Square l) = 4 * l
> perimeter (Rectangle l w) = 2 * l + 2 * w

> center (Circle r) = (r, r)
> center (Square l) = (l / 2, l / 2)
> center (Rectangle l w) = (l / 2, w / 2)

> boundingBox (Circle r) = (2 * r, 2 * r)
> boundingBox (Square l) = (l, l)
> boundingBox (Rectangle l w) = (l, w)
