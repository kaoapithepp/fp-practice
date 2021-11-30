-- type of list_map
list_map :: (a1 -> a2) -> [a1] -> [a2]
list_map _ [] = []
list_map (op) (x) = map op x

-- Question : 2
-- It can be applied into tail recursion too.

-- test cases
-- list_map (+1) [1,2,3,4,5,6]
-- list_map (> 'i') "hello"
-- list_map (\x -> x) []
-- list_map length ["functional","gg","easy"]

-- ## three more test cases
-- list_map (3*) [2,4,6,8]
-- list_map (\x -> x) ["a","b","c"]
-- list_map (/4) [12,24,28]