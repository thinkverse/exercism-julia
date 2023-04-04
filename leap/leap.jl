"""
    is_leap_year(year::Int)::Bool

Return `true` if `year` is a leap year in the gregorian calendar.

"""
is_leap_year(year::Int)::Bool = year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
