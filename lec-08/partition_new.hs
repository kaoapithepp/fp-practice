partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where (l, r) = partition p xs

-- test cases
-- partition (< 3) [1,2,3,4,5,6,7,8]

filter_par _ [] = []
filter_par pred l = fst(partition pred l)

-- test cases
-- filter_par (<3 ) [1,2,3,4,5,6,7,8]
-- filter_par (/= 'i') "Mickey iicky"

quicksort_par [] = []
quicksort_par (x:xs) = quicksort_par l ++ [x] ++ quicksort_par r
    where 
        l = fst(partition (< x) xs)
        r = snd(partition (x >=) xs)

-- test cases
-- quicksort_par [5,6,3,4,8,9,2,1,7]