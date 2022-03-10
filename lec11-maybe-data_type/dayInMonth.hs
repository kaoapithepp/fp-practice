data MonthInYear = January | February |
    March | April | May | June | July | August | September | October | November | December
    deriving Show

daysInMonth mo = case mo of
    January -> 31
    February -> 28
    March -> 31
    April -> 30
    May -> 31
    June -> 30
    July -> 31
    August -> 31
    September -> 30
    October -> 31
    November -> 30
    December -> 31

-- nextMonth function: to handle next month first day
nextMonth m = case m of
    January -> February
    February -> March
    March -> April
    April -> May
    May -> June
    June -> July
    July -> August
    August -> September
    September -> October
    October -> November
    November -> December
    December -> January

-- if day is equal last day in daysInMonth -> then start first day of nextmonth
nextDay day mo
    | day == daysInMonth mo = (1, nextMonth mo)
    | otherwise = (day+1, mo)

-- test cases
-- nextDay 31 January
-- nextDay 13 February