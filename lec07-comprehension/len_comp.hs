-- write this function in point-free style
-- contains1 = \x l -> any (x<) l
-- any . (<)

-- write this function in point-free style
-- contains2 = \l x -> any (x<) l
-- flip $ any . (<) 

len_comp l = sum[ 1 | x <- l]

-- test cases
-- len_comp [2,6,1,4,9,7]
-- len_comp "helloworld"