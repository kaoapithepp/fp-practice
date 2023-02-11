instance Applicative ((->) r) where
    pure = const
    (<*>) f g x = f x (g x)

assign :: (a -> b -> c) -> f a -> f b
assign r x (g x) = (<*>) (r g x)





