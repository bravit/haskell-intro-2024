func a x = x^2 - a
func' x = 2 * x
eps = 0.000000000001

newton :: (Double -> Double) -> (Double -> Double) -> Double
newton f f' = go 1
  where
    goodEnough :: (Double -> Double) -> Double -> Bool
    goodEnough f x = abs (f x) < eps
    improve f f' x = x - f x / f' x
    go guess
      | goodEnough f guess = guess
      | otherwise = go (improve f f' guess)

sqrtN a = newton (func a) func'
cbrtN a = newton (\x -> x^3 - a) (\x -> 3*x^2)
rootN n a = newton (\x -> x^n - a) (\x -> fromInteger n*x^(n-1))

test = putStrLn (if conditions then "OK" else "ERROR")
  where
    conditions = (check_sqrt 16 4) &&
                 (check_sqrt 25 5)
    check_sqrt a x = abs(sqrtN a - x) < eps