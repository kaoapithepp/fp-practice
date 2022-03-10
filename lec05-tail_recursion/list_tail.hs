-- TRADITION VERSION
-- list_map f [] = []
-- list_map f (x:xs) = (f)(x) : list_map f xs

-- TAIL RECURSION VERSION
list_map f l = list_aux l []
    where
        list_aux [] res = res
        list_aux (l:ls) res = list_aux ls (res ++ [(f)(l)])

-- test cases
-- list_map (+1) [1,2,3,4,5,6]
-- list_map (> 'i') "hello"
-- list_map (\x -> x) []
-- list_map length ["functional","gg","easy"]