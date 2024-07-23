-- staircase :: Int -> String
-- staircase 0 = ""
-- staircase n =
    -- writeLine n n

writeLine :: Int -> Int -> IO ()
writeLine 0 _ = do putStr ""
writeLine n m = do
    putStrLn (replicate (n-1) ' ' ++ replicate (m+1) '#')
    writeLine (n-1) (m+1)
