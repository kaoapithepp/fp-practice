zipper' :: [a] -> [b] -> [(a,b)]
-- zipper' [] [] = []
zipper' [] ys = []
zipper' x [] = []
zipper' (x:xs) (y:ys) = (x,y) : zipper' xs ys

-- test cases
-- zipper' [1,2,3] ['a','b','c']
-- zipper' [4,3,2,1] "hello"
-- zipper' [] "functional"
-- zipper' [1,2,3] []