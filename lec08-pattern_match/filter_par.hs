partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where
        (l, r) = partition p xs

filter_par f [] = []
filter_par f x = fst(partition f x)

-- test cases
-- filter_par even [1,2,3,4,5,6]