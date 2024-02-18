func a x = x^2 - a
func' x = 2 * x
eps = 0.0000000001
goodEnough a x = abs (func a x) < eps
improve a x = x - func a x / func' x


sqrtN a = go 1
  where
    go guess
      | goodEnough a guess = guess
      | otherwise = go (improve a guess)


test = putStrLn (if conditions then "OK" else "ERROR")
  where
    conditions = (check_sqrt 16 4) &&
                 (check_sqrt 25 5)
    check_sqrt a x = abs(sqrtN a - x) < eps