# Functional Programming
### lec-02
Haskell types
.
Concept of this lecture's exercise is we want to know whether we can solve this problem
by using passed function/concept/idea or can not.
### lec-03
<b>Pure functions</b>
: consider whether that function could be cached or not.
: can be cached if we know the exact result.

<b>Side effects</b>
: สิ่งที่เกิดขึ้นที่ไม่เกี่ยวข้องกับผลลัพธ์ที่ต้องการ โดยบางทีเราอาจจะตั้งใจให้เกิด side effect ขึ้นหรือไม่ได้ตั้งใจก็ได้

<b>Partial function</b>
join' :: \[a\] -> \[a\] -> \[a\] //ทั้งหมดนั้นคือ type ของ function join' โดยมีความหมายว่า \[a\]/input -> (\[a\] -> \[a\])/output โดยมี return type คือ \[a\] -> \[a\] 
join' [] ys = ys
join' (x:xs) ys = x : join' xs ys // xs และ ys ต่อคิวเข้า join'

<b>Currying</b>
จาก full app (full argument) เป็น partial app ส่วน uncurry ก็ตรงข้ามกัน

### lec-04
<b>higher-order functions</b>
: func ที่รับ func เข้าไปเป็น argument

<b>composition functions</b>
: (g . f)(x) = g(f(x))
: (abs . sum) [-1,-2,-3,-4] มีความหมายเดียวกันกับ abs(sum [-1,-2,-3,-4])

<b>if-condition type</b>
: (Bool, a, a) -> a
: รับตัวแปร 3 ตัวได้แก่ Bool, something type anything, something2 type anything
: แล้ว return ออกมาเป็น something ตัวใดตัวหนึ่งที่รับเข้ามา

### lec-05
<b>tail recursion</b>

### lec-09
