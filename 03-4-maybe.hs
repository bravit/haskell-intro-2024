-- data Maybe a = Nothing | Just a

lastElem :: [a] -> Maybe a
lastElem [] = Nothing
lastElem [x] = Just x
lastElem (x:xs) = lastElem xs

{-
    Note: `Maybe` is not a type, but `Maybe a` is a type.
    `Maybe` is a type constructor.
-}