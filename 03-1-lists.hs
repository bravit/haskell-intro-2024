quicksort [] = []
quicksort (x:xs) =
    let 
        lower = quicksort (filter (<= x) xs)
        upper = quicksort (filter (> x) xs)
    in lower ++ [x] ++ upper


fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)
--  fibs:          0 : 1 : ??
--  (drop 1 fibs): 1 : ??
--  zipWith (+):   ? : ??

test = putStrLn (if conditions then "OK" else "ERROR")
  where
    conditions =
        quicksort [1, 10, 4, 2, 4] == [1, 2, 4, 4, 10] &&
        quicksort [1.3, 1.1, -1.3] == [-1.3, 1.1, 1.3] &&
        quicksort ['Z', 'Y', 'X'] == ['X', 'Y', 'Z'] &&
        take 7 fibs == [0, 1, 1, 2, 3, 5, 8]