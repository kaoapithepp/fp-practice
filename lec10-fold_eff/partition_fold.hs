partition_foldl pred x = foldl (\(l,r) elem -> if pred elem then (l ++ [elem], r) else (l,r ++ [elem])) ([],[]) x

partition_foldr pred x = foldr (\elem (l,r) -> if pred elem then (elem:l,r) else (l,elem:r)) ([],[]) x

-- test cases
-- partition_foldl even [1,2,3,4,5,6]
-- partition_foldr even [1,2,3,4,5,6]