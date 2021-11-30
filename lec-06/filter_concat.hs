-- type of filter_concat
filter_concat :: ([a] -> Bool) -> [[a]] -> [a]
filter_concat _ [] = []
-- filter_concat (pred) (x:xs) = pred x : filter_concat pred xs -- this will return Bool
filter_concat (pred) (x:xs)
    | pred x = x ++ filter_concat pred xs -- if true then join that elem in list
    | otherwise = filter_concat pred xs -- if false then 'continue' (in Java) / 'pass' (in python)

-- test cases
-- filter_concat (\l -> length l < 3) [[1,2,3],[4],[5,6],[],[7,8,9,10]]
-- filter_concat (even . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]


-- Question : can you avoid recursion in your definition?

filter_avoid _ [] = []
filter_avoid (pred) (x) = map pred x

-- Question : Rewrite (\l -> length l < 3) without lambda
-- filter_concat ((< 3) . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]
-- type is => filter_concat :: ([a] -> Bool) -> [[a]] -> [a]