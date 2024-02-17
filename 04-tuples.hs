swap :: (b, a) -> (a, b)
swap (a, b) = (b, a)

rotateLeft (a, b, c) = (b, c, a)

test = putStrLn (if conditions then "OK" else "ERROR")
  where
    conditions =
        swap (5, 10) == (10, 5) &&
        swap ([1, 2, 3], "XXX") == ("XXX", [1, 2, 3]) &&
        rotateLeft (rotateLeft (rotateLeft (1, 2, 3))) == (1, 2, 3)
