quicksort [] = []
quicksort (x:xs) =
    let 
        lower = quicksort (filter (<= x) xs)
        upper = quicksort (filter (> x) xs)
    in lower ++ [x] ++ upper


test = putStrLn (if conditions then "OK" else "ERROR")
  where
    conditions =
        quicksort [1, 10, 4, 2, 4] == [1, 2, 4, 4, 10] &&
        quicksort [1.3, 1.1, -1.3] == [-1.3, 1.1, 1.3] &&
        quicksort ['Z', 'Y', 'X'] == ['X', 'Y', 'Z']