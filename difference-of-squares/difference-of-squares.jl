"Square the sum of the first `n` positive integers"
square_of_sum(n::Int)::Int = sum(0:n)^2

"Sum the squares of the first `n` positive integers"
sum_of_squares(n::Int)::Int = sum(n -> n^2, 0:n)

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
difference(n::Int)::Int = square_of_sum(n) - sum_of_squares(n)
