fib' n
    | n >= 0 = fib_aux 0 0 1
    | otherwise = error "negative number"
    where -- lexical scope: prevent auxillary function from public access
        fib_aux i res res'
            | i == n = res
            | otherwise = fib_aux (i+1) res' (res+res')