birthdayCakeCandles :: [Int] -> Int
birthdayCakeCandles heights =
    let
        maxHeight = maximum heights

        tallest = [x | x <- heights, x == maxHeight ]
    in
    length tallest
