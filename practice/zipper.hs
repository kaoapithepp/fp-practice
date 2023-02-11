zipper [] _ = []
zipper _ [] = []
zipper (x:xs) (y:ys) = (x,y) : zipper xs ys

-- test cases
-- zipper [1,2,3,4] [5,6,7]
-- zipper ['a','b','c'] ['x','y','z']
-- zipper "hello" "world"