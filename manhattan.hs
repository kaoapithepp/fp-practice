exp1 = [5, 9.5, 4.5, 6, 10, 2.7]
exp2 = [11, 8.5, 2.5, 5, 10, 2]

zipper _ [] = []
zipper [] _ = []
zipper (x:xs) (y:ys) = (x,y) : zipper xs ys

zip_gene = zipper exp1 exp2

manhattan_fold d l = foldr (\elem acc -> 
    abs(fst(l!!d)-fst(elem)) + abs(snd(l!!d)-snd(elem)) : acc) [] l

g4 = manhattan_fold 3 zip_gene
g3 = manhattan_fold 2 zip_gene

find_cluster [] [] = []
find_cluster [] _ = []
find_cluster (g1:g1s) (g2:g2s)
    | g1 < g2 = 1 : find_cluster g1s g2s
    | g1 >= g2 = 2 : find_cluster g1s g2s
    | otherwise = error "Error occurs"

main = do
    putStr "Zipped genes: "
    print(zip_gene)
    putStr "Find distance for G4: "
    print(g4)
    putStr "Find distance for G3: "
    print(g3)
    putStr "1st iteration clustering by element: "
    print(find_cluster g4 g3)