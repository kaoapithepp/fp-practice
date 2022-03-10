filter_concat f [] = []
filter_concat f (x:xs)
    | f x = x ++ filter_concat f xs
    | otherwise = filter_concat f xs


-- test cases
-- filter_concat (\l -> length l < 3) [[1,2,3],[4],[5,6],[],[7,8,9,10]]
-- filter_concat (even . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]