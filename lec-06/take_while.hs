-- type of take_while
take_while :: (a -> Bool) -> [a] -> [a]
take_while _ [] = []
take_while pred (x:xs)
    | pred x = x : take_while pred xs
    | otherwise = []

-- test cases
-- take_while (/= ',') "Hello, world"
-- take_while (even . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]