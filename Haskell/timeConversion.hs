timeConversion :: String -> String
timeConversion word =
    let
         (ampm, time) = stripEnd word
         newTime = case ampm of
            -- 'P' -> if (drop 2 time) /= "12" then addTwelve time else time
            'P' -> addTwelve time
            'A' -> if (take 2 time) == "12" then minusTwelve time else time
            _ -> time
--          newTime = if ampm == 'P'
--                      then addTwelve time
--                      else time
    in
    newTime

sp= "12:01:00PM"
s2= "02:01:00PM"
sa = "12:01:00AM"
st = "11:01:00AM"

stripEnd :: String -> (Char, String)
stripEnd time =
    let
        (_:ampm:rest) = reverse time
        shortTime = reverse rest
    in
    (ampm, shortTime)

addTwelve :: String -> String
addTwelve time =
    let
        hour = take 2 time
        newHourInt = (read hour :: Integer) + 12
        newHour = show newHourInt
        newTime = if newHour == "24"
            then "12" ++ (drop 2 time)
            else newHour ++ (drop 2 time)
    in
    newTime

minusTwelve :: String -> String
minusTwelve time = "00" ++ (drop 2 time)
