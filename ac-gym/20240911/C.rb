n = gets.chomp.to_i

# 1 ~ 999  = 0
# 1000 ~ 999999 = 1
# 1000000 ~ 999999999 = 2
# 1000000000 ~ 999999999999 = 3
# 1000000000000 ~ 999999999999999 = 4
# 1000000000000000 = 5

result = 0
n.times do |i|
  next if (0...999).include?(index)

  result += 1 if (1000...999_999).include?(index)

  result += 2 if (1_000_000...999_999_999).include?(index)

  result += 3 if (1_000_000_000...999_999_999_999).include?(index)

  result += 4 if (1_000_000_000_000...999_999_999_999_999).include?(index)

  result += 5 if 1_000_000_000_000_000 == index
end

puts result
