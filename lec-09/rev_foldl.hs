reverse_foldl [] = []
reverse_foldl l = foldl (\acc ls -> ls : acc ) [] l

reverse_foldr [] = []
reverse_foldr l = foldr (\ls acc -> acc ++ [ls]) [] l

-- test cases
-- reverse_foldl "hello, world"
-- reverse_foldr "hello, world"