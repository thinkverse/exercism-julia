function secret_handshake(code)
  strings = []

  if code | 0b00001 == code
		push!(strings, "wink")
	end

  if code | 0b00010 == code
		push!(strings, "double blink")
	end

  if code | 0b00100 == code
		push!(strings, "close your eyes")
	end

  if code | 0b01000 == code
		push!(strings, "jump")
	end

  if code | 0b10000 == code
		reverse!(strings)
	end

  return strings
end
