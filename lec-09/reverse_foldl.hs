-- type of reverse_foldl
reverse_foldl :: [a] -> [a]
reverse_foldl xs = foldl (\acc x -> x : acc) [] xs

-- type of reverse_foldr
reverse_foldr :: [a] -> [a]
reverse_foldr xs = foldr (\ x acc -> x : acc) [] xs

-- Which version is more efficient?
-- foldl because it takes O(n)
-- but foldr have to proceed until the last element then do the procedure


-- type of map'
map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = foldr (\x xs -> (f x):xs) [] xs

-- type of filter'
filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs) = foldr (\x xs -> if p x then x:xs else xs) [] xs