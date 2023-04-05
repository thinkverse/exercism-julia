function wordcount(sentence)
  words = Dict()

  for m in eachmatch(r"[a-z]+'[a-z]+|[0-9a-z]+", lowercase(sentence))
    # https://en.wikibooks.org/wiki/Introducing_Julia/Dictionaries_and_sets#Simple_example:_counting_words
    words[m.match] = get(words, m.match, 0) + 1
  end

  return words
end
