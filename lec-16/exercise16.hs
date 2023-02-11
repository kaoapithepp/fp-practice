-- maybeAp
maybeAp :: Maybe (a -> b) -> Maybe a -> Maybe b
maybeAp Nothing _ = Nothing
maybeAp _ Nothing = Nothing
maybeAp (Just a) (Just b) = Just (a b)

-- listAp
listAp :: [a -> b] -> [a] -> [b]
listAp _ [] = []
listAp [] _ = []
listAp (x:xs) y = fmap x y ++ listAp xs y

-- initMaybe
initMaybe :: a -> Maybe a
initMaybe a = (Just a)

-- initList
initList :: a -> [a]
initList a = [a]

-- fmap (*3) (+100) interpretation
-- fmap (*3) (+100)
-- it's some kind of eta reduction
-- this fmap will do the (+100) first and then do the (*3)

-- for example,
-- fmap (*3) (+100) 1
-- the result is 303
