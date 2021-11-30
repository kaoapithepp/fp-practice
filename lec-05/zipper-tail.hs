-- type of zipper
-- zipper :: [a] -> [b] ->[(a,b)]
zipper l1 l2 = zipper_t l1 l2 []

-- type of zipper_t
zipper_t :: [a] -> [b] -> [(a,b)] -> [(a,b)]
zipper_t [] _ res = res
zipper_t _ [] res = res
zipper_t (x:xs) (y:ys) res = zipper_t xs ys (res ++ [(x,y)])

-- test cases
-- zipper [1,2,3] ['a','b','c']
-- zipper [4,3,2,1] "hello"
-- zipper [] "functional"
-- zipper [1,2,3] []