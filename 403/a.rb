N = gets.to_i
A = gets.split.map(&:to_i)

sum = 0

A.each_with_index do |n, i|
  next if (i + 1) % 2 == 0

  sum = sum + n
end

puts sum
