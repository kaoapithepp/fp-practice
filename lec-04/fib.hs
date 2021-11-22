-- fib 0 = 0
-- fib 1 = 1
-- fib n = fib (n-1) + fib (n-2)

fib :: Integral p => p -> p
fib n
    | n == 0 = 0
    | n == 1 = 1
    | n < 0 = error "negative number"
    | n > 0 = fib (n-1) + fib (n-2)
    | otherwise = error "not an integer"

-- (2)
-- ต้องให้มันปลอดภัยด้วยนะ เหมือนที่เรียนใน lec-04 ไปเนี่ยแหละ
-- type คืออะไร
-- ใช้ BigO เท่าไหร่?
-- improve ยังไงได้บ้าง ไม่ได้ให้เขียน code นะจ้ะ