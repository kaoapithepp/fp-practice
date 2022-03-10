qsort [] = []
qsort (x:xs) = qsort [lt | lt <- xs, lt < x] ++ [x] ++ qsort [gt | gt <- xs, gt >= x]


-- qsort [] = []
-- qsort (hd:tl) = qsort l ++ [hd] ++ qsort r
--     where
--         l = [x | x <- tl, x < hd]
--         r = [x | x <- tl, x >= hd]