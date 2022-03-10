partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where
        (l, r) = partition p xs

qsort_par [] = []
qsort_par (x:xs) = snd(partition (>x) xs) ++ [x] ++ fst(partition (>x) xs)

-- test cases
-- qsort_par [5,6,1,3,9,4]
-- qsort_par [5,6,1,3,9,5]