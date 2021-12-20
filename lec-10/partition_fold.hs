-- type of parition
partition :: Foldable t => (a -> Bool) -> t a -> ([a], [a])
partition p = foldr (\x (as,bs) -> if p x then (x:as, bs) else (as, x:bs)) ([],[])