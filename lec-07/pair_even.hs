pair_even :: Integral a => [a] -> [a] -> [(a,a)]
pair_even [] _ = []
pair_even _ [] = []
pair_even (x:xs) (y:ys)
    | even (x+y) = [(x,y)] ++ pair_even xs ys
    | otherwise = pair_even xs ys

-- test cases
-- pair_even [2,3,5] [1,2,4]
-- pair_even [2,3,5] [2,3,4]
-- pair_even [2,3,5] [4,5,7]
-- pair_even [] [1,2,3]
-- pair_even [2] []