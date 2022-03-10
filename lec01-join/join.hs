join ([],[]) = []
join ([],xs) = xs
join (x:xs,ys) = x : join(xs,ys)