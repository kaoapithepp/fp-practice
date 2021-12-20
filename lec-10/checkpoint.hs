-- all' :: Foldable f => (a -> Bool) -> f a -> Bool
-- all' p xs = foldr f True xs
--     where f x as = p x && as


all' p l
    | p l = all_aux 

    where
        all 
        all_aux p l res = p l && res




-- test cases
-- all' odd [2,6,1,4,9,7] -> False
-- all' (/='x') "helloworld"
-- all' (even . length) [[1,2],[3,4],[5,6]]