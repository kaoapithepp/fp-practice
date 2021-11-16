-- zipper :: ([a], [b]) -> [(a, b)]
zipper([],[]) = []
zipper([],ys) = []  -- You can use wildcard ([],_).
zipper(x,[]) = []   -- You can use wildcard (_,[]).
zipper(x:xs, y:ys) = (x,y) : zipper(xs,ys)

-- test cases
-- zipper ([1,2,3], ['a','b','c'])      ; type : Num a => [(a, Char)]
-- zipper ([4,3,2,1], "hello")          ; type : Num a => [(a, Char)]
-- zipper ([], "functional")            ; type : [(a, Char)]
-- zipper ([1,2,3], [])                 ; type : Num a => [(a, b)]
-- zipper ([1,1.5,2], [2.5,3,3.5,3])    ; type : (Fractional a, Fractional b) => [(a, b)]