filter_concat pred l = filter_aux pred l []
    where
        filter_aux pred [] res = res
        filter_aux pred (l:ls) res
            | pred l = filter_aux pred ls (res ++ l)
            | otherwise = filter_aux pred ls res

-- test cases
-- filter_concat (\l -> length l < 3) [[1,2,3],[4],[5,6],[],[7,8,9,10]]
-- filter_concat (even . length) [[1,2,3],[4],[5,6],[],[7,8,9,10]]