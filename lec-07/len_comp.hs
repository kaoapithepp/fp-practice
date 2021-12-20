-- type of len_comp
len_comp :: (Num b) => [a] -> b 
len_comp [] = 0 
len_comp xs = sum [1 | _ <- xs]

-- test cases
-- len_comp [2,6,1,4,9,7]
-- len_comp ['a','b','c','d','e','f']
-- len_comp ["functional", "programming", "is", "hard"]

-- checkpoint 07
-- g = \f l -> l ++ map f l
-- g = \f l -> ap (++) (map f) l
-- g = ap (++) (map)