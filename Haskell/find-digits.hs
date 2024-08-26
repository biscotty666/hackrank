import Data.Char -- for digitToInt

digits :: Int -> [Int]
-- digits = map (read . return) . show
digits = map digitToInt . show

cleanDigits :: [Int] -> [Int]
cleanDigits n = [x | x <- n, x /= 0]

findDivisors :: Int -> [Int]
findDivisors n = [x | x <- cleanDigits $ digits n, n `mod` x == 0]

findDigits :: Int -> Int
findDigits n = length $ findDivisors n
