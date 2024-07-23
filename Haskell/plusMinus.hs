import Text.Printf

plusMinus :: (Num a, Ord a) => [a] -> IO ()
plusMinus  arr = do
    let total = length arr
    let pos = length ([x | x <- arr, x > 0])
    let neg = length ([x | x <- arr, x < 0])
    let zero = length ([x | x <- arr, x == 0])
    let posProp = roundMe6 $ (fromIntegral pos) / (fromIntegral total)
    let negProp = roundMe6 $ (fromIntegral neg) / (fromIntegral total)
    let zeroProp = roundMe6 $ (fromIntegral zero) / (fromIntegral total)
    -- let posRound = roundMe 3 posProp
    putStrLn (printf "%.6f" posProp)
    putStrLn (printf "%.6f" negProp)
    putStrLn (printf "%.6f" zeroProp)

roundMe6 :: Double -> Double
roundMe6 x = fromIntegral (round $ x * 1e6) / 1e6
-- roundMe :: (Num a, Fractional a, RealFrac a, Integral a) => Integer -> a -> a
-- roundMe n x = (round (x * powerMe n)) / (powerMe n)
--
-- powerMe :: (Num a, Fractional a) => Integer -> a
-- powerMe n = 10.0 ^ n
