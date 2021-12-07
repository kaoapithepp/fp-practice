partition :: (a -> Bool) -> [a] -> ([a], [a])
partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where (l,r) = partition p xs

-- type of filter_par
filter_par :: (a -> Bool) -> [a] -> [a]
filter_par _ [] = []
filter_par op (x:xs)
    | op x = fst(partition op xs)
    | otherwise = filter_par op xs

-- test cases
-- filter_par (even) [1,2,3,4]
-- filter_par (odd) [4,5,6,7,8,9]