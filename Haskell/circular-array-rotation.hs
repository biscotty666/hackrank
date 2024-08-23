import Data.List
rotatedArray :: [a] -> Int -> [a]
rotatedArray a k = take (length a) (drop ((length a) - k) (a ++ a))

circularArrayRotation :: [a] -> Int -> [Int] -> [a]
circularArrayRotation a k queries = [(rotatedArray a k) !! i | i <- queries]

aList = [2,3,4,5,6,7]
