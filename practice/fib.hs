fib n
    | n == 0 = 0
    | n == 1 = 1
    | n < 0 = error "negative number"
    | n > 0 = fib(n-1) + fib(n-2) 
    | otherwise = error "wrong number"

-- test cases
-- fib 5
