-- Arrow function by \n is a parameter
fac = \n -> if n == 0 then 1
    else if n > 0 then n * fac(n-1)
    else error "negative number"

-- Normal functino by n is a parameter
-- fac n
--     | n == 0 = 1
--     | n > 0 = n * fac(n-1)
--     | otherwise = error "negative number"


-- test cases
-- fac 5
-- fac 3