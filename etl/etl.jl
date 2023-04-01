function transform(input::AbstractDict)
  dict = Dict()

  for (k, v) in pairs(input)
    for c in v
      dict[lowercase(c)] = k
    end
  end

  dict
end

