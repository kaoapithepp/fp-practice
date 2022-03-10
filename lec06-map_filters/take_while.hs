take_while f [] = []
take_while f (x:xs)
    | f x = x : take_while f xs
    | otherwise = []

-- test cases
-- take_while (/= ',') "Hello, world"\
-- take_while (even . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]


-- rewrite (\l -> length l < 3) without lambda
-- (<3 . length)