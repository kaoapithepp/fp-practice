-- Traditional version
is_there op [] = False
is_there op (x:xs)
    | op == x = True
    | otherwise = is_there op xs

-- Fold version
is_there_fold op l = foldl (\acc elem -> if op == elem then acc || True else acc ) False l

-- test cases
-- is_there 9 [2,6,1,4,9,7]
-- is_there 'x' "helloworld"
-- is_there [1,2,3] [[1,2,3],[4,5,6]]

-- is_there_fold 9 [2,6,1,4,9,7]
-- is_there_fold 'x' "helloworld"
-- is_there_fold [1,2,3] [[1,2,3],[4,5,6]]