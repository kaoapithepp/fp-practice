newtype Operation a = Operation { getOperation :: a }
    deriving (Eq, Ord, Read, Show, Bounded)
instance Bool a => Monoid (Opearation a) where
    mempty = Operation True
    (Operation x) <> (Operation y) = Operation (x && y)


newtype Operation a = Operation { getOperation :: a }
    deriving (Eq, Ord, Read, Show, Bounded)
instance Bool a => Monoid (Opearation a) where
    mempty = Operation False
    (Operation x) <> (Operation y) = Operation (x || y)

maybeBind :: Maybe a -> (a -> Maybe b) -> Maybe break
maybeBind m g = case m of
        Nothing -> Nothing
        Just x -> g x


listBind :: [a] -> (a ->[b]) -> [b]
listBinf xs k = concat (map k xs)

eitherBind :: Either r a -> (a -> Either r b) -> Either r b
eitherBind ev k =
    case ev of
        Left msg -> Left msg
        Right v -> k v

pairBind :: (r, a) => (a -> (r, b)) -> (r, b)
pairBind (a, b) f = f b

arrowBind :: (r -> a) -> (a -> (r -> b)) -> (r -> b)
arrowBind f a = \x -> a (f x) x

