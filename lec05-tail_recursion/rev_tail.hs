rev' l = rev_aux l []
    where
        rev_aux []      res = res
        rev_aux (x:xs)  res = rev_aux xs (x:res)

-- test cases
-- rev' []
-- rev' [2,6,1,4,9,7]
-- rev' "helloworld"