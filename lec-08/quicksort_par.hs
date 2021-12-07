partition :: (a -> Bool) -> [a] -> ([a], [a])
partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where (l,r) = partition p xs

-- type of quicksort_par
quicksort_par :: Ord a => [a] -> [a]
quicksort_par [] = []
quicksort_par (x:xs) = (quicksort_par l1) ++ [x] ++ (quicksort_par l2)
    where
        l1 = fst(partition (< x) xs)
        l2 = fst(partition (x >=) xs)


-- Ord
--      Make a condition that we assign and then sorting or ordering.
--      There are 7 constructors in Ord.
--      And 8 ways to do a pattern-match.