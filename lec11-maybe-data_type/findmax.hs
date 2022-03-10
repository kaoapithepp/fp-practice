-- Case expression method
findMax [] = Nothing
findMax (x:xs) = case findMax xs of
    Nothing -> Just x
    Just m -> Just $ max m x


-- Helper function method
findMax [] = Nothing
findMax (x:xs) = maybeGt (findMax xs) x

maybeGt Nothing x = Just x
maybeGt (Just m) x = Just $ max m x

-- test cases
-- findMax [1,2,3,4,5,6]
-- findMax [2,6,1,4,9,7]
-- findMax [1]