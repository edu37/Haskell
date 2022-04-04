
isLeapYear :: Integer -> Bool
firstVerify :: Integer -> Bool
secondVerify :: Integer -> Bool

firstVerify year = if mod year 4 == 0 then True else False

secondVerify year = if mod year 400 == 0 then True else False

isLeapYear year = if mod year 100 == 0 then secondVerify year else firstVerify year 