fib n = fib_aux 0 0 1
    where
    fib_aux i res res'
        | i == n = res
        | otherwise = fib_aux (i+1) res' (res+res')