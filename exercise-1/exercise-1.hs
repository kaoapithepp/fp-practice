-- set function's pair argument
join ([],[]) = []
-- joining char from first elem pair then next elem of pair
join ((a:ea),(x:ex)) = (a:ea) ++ (x:ex)