join ([],ys) = ys
join (x:xs, ys) = x : join (xs, ys)

-- test cases
-- join ("hello","world")
-- join ("functional","programming")