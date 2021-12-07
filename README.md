# Functional Programming
### lec-02
Haskell types
<br>
Concept of this lecture's exercise is we want to know whether we can solve this problem
by using passed function / concept / idea or can not.
### lec-03
<b>Pure functions</b>
<br>: consider whether that function could be cached or not.
<br>: can be cached if we know the exact result.

<b>Side effects</b>
<br>: สิ่งที่เกิดขึ้นที่ไม่เกี่ยวข้องกับผลลัพธ์ที่ต้องการ โดยบางทีเราอาจจะตั้งใจให้เกิด side effect ขึ้นหรือไม่ได้ตั้งใจก็ได้

<b>Partial function</b>
`join' :: \[a\] -> \[a\] -> \[a\]` 
<br>//ทั้งหมดนั้นคือ type ของ function `join'`
โดยมีความหมายว่า `\[a\]/input -> (\[a\] -> \[a\])`/output โดยมี return type คือ `\[a\] -> \[a\]`
<br>`join' [] ys = ys`
<br>`join' (x:xs) ys = x : join' xs ys // xs และ ys ต่อคิวเข้า join'`

<b>Currying</b>
<br>จาก full app (full argument) เป็น partial app ส่วน uncurry ก็ตรงข้ามกัน

### lec-04
<b>higher-order functions</b>
<br>: func ที่รับ func เข้าไปเป็น argument

<b>composition functions</b>
<br>: (g . f)(x) = g(f(x))
<br>: (abs . sum) [-1,-2,-3,-4] มีความหมายเดียวกันกับ abs(sum [-1,-2,-3,-4])

<b>if-condition type</b>
<br>: (Bool, a, a) -> a
<br>: รับตัวแปร 3 ตัวได้แก่ Bool, something type anything, something2 type anything
<br>: แล้ว return ออกมาเป็น something ตัวใดตัวหนึ่งที่รับเข้ามา

### lec-05
<b>tail recursion</b>

### lec-09
<b>Folds</b>
<br> It is the same with sum as we used it in previous lecture. But we break down by using the concepts we have learned.
<br><i>Example</i>
<br>`sum l = foldl (+) 0 l`
<br><b><i>Use case</i></b>
<br>Javascript : `sum = l => l.reduce((accumurator, x) => accumurator + x,0)`
