join [] ys = ys
join (x:xs) ys = x : join xs ys

rev [] = []
rev (x:xs) = rev xs ++ [x]

-- test cases
-- rev "helloworld"
-- rev "google"
-- rev [1,2,3,4,5]