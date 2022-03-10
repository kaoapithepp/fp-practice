fac' n
    | n >= 0 = fac_aux n 1
    | otherwise = error "negative number"

fac_aux 0 res = res
fac_aux n res = fac_aux (n-1) (res*n)