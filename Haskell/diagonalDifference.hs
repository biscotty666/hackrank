diagonalDifference :: [[Int]] -> Int
diagonalDifference xs = abs (diagSum xs - otherSum xs)

otherSum ::  [[Int]] -> Int
otherSum [] = 0
otherSum (xs:rest) =
    let
        n = length  (xs:rest)
    in
        getValPos (reverse xs) n + otherSum rest

diagSum ::  [[Int]] -> Int
diagSum [] = 0
diagSum (xs:rest) =
    let
        n = length  (xs:rest)
    in
        getValPos xs n + diagSum rest

getValPos :: [Int] -> Int -> Int
getValPos xs n = xs !! (n-1)
