-- type of new_elem
new_elem :: Eq t => t -> [t] -> Bool
new_elem x [] = False
new_elem x (y:ys)
    | x == y = True
    | otherwise = new_elem x (ys)

-- test cases
-- new_elem 9 [2,6,1,4,9,7]
-- new_elem 'x' "helloworld"
-- new_elem [1,2,3] [[1,2,3],[4,5,6]]

-- map with foldr is less efficient than map with foldl