partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where
        (l, r) = partition p xs

-- test cases
-- partition even [1,2,3,4,5,6]