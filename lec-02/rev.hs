-- rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev(xs) ++ [x] -- You can use "join" function instead; rev(x:xs) = join (rev xs, [x])
-- dive to last elem; ex. "hello" -> (o:) then concatenate by begin with "o" and the before in list of type x

-- test case
-- rev "hello"      ; type : [[Char]]
-- rev [1,2,3,4,5]  ; type : Num a => [[a]]