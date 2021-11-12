-- set function's pair argument
-- join ([],[]) = []
-- joining char from first elem pair then next elem of pair
-- join ((a:ea),(x:ex)) = (a:ea) ++ (x:ex)

-- answer
join :: ([a],[a]) -> [a]
join ([],ys) = ys -- base case's determination : the least problem or problem's origin
join (x:xs, ys) = x : join (xs, ys) -- inductive step

-- : (colon) symbol means ทำให้ list มีขนาดใหญ่ขึ้นโดยการ 'prepend' (ต่อหน้า, append = ต่อท้าย)
-- ex. 2 : [] ได้ [2]; 4 : (2:[]) ได้ [4,2]