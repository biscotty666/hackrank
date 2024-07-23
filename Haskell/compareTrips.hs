compareTriplets :: [Int] -> [Int] -> [Int]
compareTriplets xs ys =
    let
        z1 =          countPoints xs ys
        z2 =          countPoints ys xs
    in
        [z1,z2]

countPoints :: [Int] -> [Int] -> Int
countPoints  [] _ = 0
countPoints (x:xs) (y:ys) = (if (x <= y) then 0 else 1) + countPoints xs ys
