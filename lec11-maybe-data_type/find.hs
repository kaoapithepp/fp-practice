-- Traditional find function
find p [] = Nothing
find p (x:xs)
    | p x = Just x
    | otherwise = find p xs

-- test cases
-- find (even) [1,2,3,4,5,6]