all' p l = foldr f True l
    where f x res = p x && res

-- test cases
-- all' odd [2,6,1,4,9,7] -> False
-- all' (/='x') "helloworld"
-- all' (even . length) [[1,2],[3,4],[5,6]]