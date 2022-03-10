zipper x y = zipper_aux x y []
    where
        zipper_aux _ [] res = res
        zipper_aux [] _ res = res
        zipper_aux (x:xs) (y:ys) res = zipper_aux xs ys (res ++ [(x,y)])
        -- zipper_aux (x:xs) (y:ys) res = zipper_aux xs ys ((x,y):res)

-- test cases
-- zipper [1,2,3] ['a','b','c']
-- zipper [4,3,2,1] "hello"
-- zipper [] "functional"
-- zipper [1,2,3] []
-- zipper [1,1.5,2] [2.5,3,3.5,3]