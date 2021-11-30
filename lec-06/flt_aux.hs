flt_aux [] res = res
flt_aux (x:xs) res
    | pred x = flt_aux xs (x:res)
    | otherwise = flt_aux xs res