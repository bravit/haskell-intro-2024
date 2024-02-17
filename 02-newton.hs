func a x = x^2 - a
func' x = 2 * x
eps = 0.00001
goodEnough a x = abs (func a x) < eps
improve a x = x - func a x / func' x

sqrtN a init
    | goodEnough a init = init
    | otherwise = sqrtN a (improve a init)