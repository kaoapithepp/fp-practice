data DayOfWeek = Sunday | Monday | Tuesday |
    Wednesday | Thursday | Friday | Saturday deriving Show

nextWeekDay day = case day of
    Sunday -> Monday
    Monday -> Tuesday
    Tuesday -> Wednesday
    Wednesday -> Thursday
    Thursday -> Friday
    Friday -> Monday
    Saturday -> Monday