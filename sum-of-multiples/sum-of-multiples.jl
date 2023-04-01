function sum_of_multiples(limit, factors)
  unique = BitSet()

  for factor in factors
    if factor == 0 
      continue
    end

    multiple = factor

    while multiple < limit
      push!(unique, multiple)

      # On each iteration, add the factor, i.e.
      # multiple = 3 + 3 -> 6 + 3 -> 9 + 3…
      multiple += factor
    end

  end

  sum(unique)
end
