import Data.List

miniMaxSum :: (Num a, Ord a, Show a) => [a] -> IO ()
miniMaxSum arr = do
    let
        calc = addFive arr
        high = calc !! 0
        low = calc !! 1
    putStrLn (show calc)
    putStr (show high)
    putStr " "
    putStrLn (show low)


addFive :: (Num a, Ord a) => [a] -> [a]
addFive xs =
    let
        sorted = sort(xs)
        reversed = reverse sorted
    in
    [
    (sorted !! 0) +
    (sorted !! 1) +
    (sorted !! 2) +
    (sorted !! 3),
    (reversed !! 0) +
    (reversed !! 1) +
    (reversed !! 2) +
    (reversed !! 3)
    ]
