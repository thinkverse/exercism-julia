function largest_product(str, span)
  if length(str) == 0 && span == 0
    return 1
  end

  if span < 0
    throw(ArgumentError("span cannot be negative."))
  end

  if tryparse(BigInt, str) === nothing
    throw(ArgumentError("str needs to be numeric."))
  end

  if span > length(str)
    throw(ArgumentError("length of span cannot exceed str."))
  end

  if span == 0
    return 1
  end

  product = 0

  for i in 1:length(str) - span + 1
    p = mapreduce(d -> parse(BigInt, d), *, split(str[i:i+span - 1], ""))

    if p > product
      product = p
    end
  end

  return product
end
