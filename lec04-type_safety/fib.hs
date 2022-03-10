fib :: Integral p => p -> p
fib 0 = 0
fib 1 = 1
fib n
    | n > 1 = fib(n-1) + fib(n-2)
    | otherwise = error "negative number"