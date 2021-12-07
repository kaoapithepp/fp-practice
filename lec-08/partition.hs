-- type of partition 
partition :: (a -> Bool) -> [a] -> ([a], [a])
partition p [] = ([],[])
partition p (x:xs)
    | p x = (x:l, r)
    | otherwise = (l, x:r)
    where (l,r) = partition p xs

-- test cases
-- partition (even) [1,2,3,4]
-- partition (< 'b') ['a','b','c','d']

-- What does partition do?
--      Split the results that is true to the left side and false of the condition to the right
--      after do an operation 'p'