sum' l = sum_aux l 0
    where
        sum_aux [] res = res
        sum_aux (x:xs) res = sum_aux xs (res+x)