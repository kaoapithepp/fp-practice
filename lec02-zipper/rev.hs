-- TRADITION WAY
-- rev [] = []
-- rev (x:xs) = rev(xs) ++ [x]

-- USING JOIN FUNCTION
join ([],[]) = []
join ([],xs) = xs
join (x:xs,ys) = x : join(xs,ys)

rev [] = []
rev (x:xs) = join(rev xs,[x])

-- test cases
-- rev []
-- rev [2,6,1,4,9,7]
-- rev "helloworld"