zipper([],[]) = []
zipper(_,[]) = []
zipper([],ys) = []
zipper(x:xs,y:ys) = (x,y) : zipper(xs,ys)

-- test cases
-- zipper ([1,2,3], ['a','b','c'])
-- zipper ([4,3,2,1], "hello")
-- zipper ([], "functional")
-- zipper ([1,2,3], [])
-- zipper ([1,1.5,2], [2.5,3,3.5,3]) 