Sab, Sac, Sbc = gets.chomp.split(' ')

A = 0
B = 0
C = 0

if Sab == '<'
  B += 1
else
  A += 1
end

if Sac == '<'
  C += 1
else
  A += 1
end

if Sbc == '<'
  C += 1
else
  B += 1
end

result = {
  "A": A,
  "B": B,
  "C": C
}

keys = result.sort_by { |key, value| -value }.map { |key, value| key }
puts keys[1]
