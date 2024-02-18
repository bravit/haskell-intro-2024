cartesianProduct xs ys = [ (x, y) | x <- xs, y <- ys]

cartesianProduct' xs ys = do
    x <- xs
    y <- ys
    pure (x, y)

cartesianProduct'' xs ys = liftA2 (,) xs ys

cartesianProduct''' xs ys = xs >>= \x -> ys >>= pure . (x,)

test = pairs == pairs' && pairs' == pairs''
  where
    pairs = cartesianProduct [1,2,3] ['a', 'b']
    pairs' = cartesianProduct' [1,2,3] ['a', 'b']
    pairs'' = cartesianProduct'' [1,2,3] ['a', 'b']
    pairs''' = cartesianProduct''' [1,2,3] ['a', 'b']
