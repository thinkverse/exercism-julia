# Thanks to the Julia documentation for basically giving the answer,
# https://docs.julialang.org/en/v1/base/numbers/#Base.digits
isarmstrong(num::Int) = num == sum(n^length(digits(num)) for n in digits(num); init=0)
